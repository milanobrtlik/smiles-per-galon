using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using WhereIsOurCar.Auth.Jwt;
using WhereIsOurCar.Car.Entity;

namespace WhereIsOurCar.Car.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class CarMutation
{
    [Authorize]
    public async Task<CarPayload> CarCreate(
        [GlobalState] int currentUserId,
        CarCreateInput createInput,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var car = new Entity.Car
        {
            LicencePlate = createInput.LicencePlate,
        };
        var carUser = new CarUser
        {
            Car = car,
            UserId = currentUserId,
            CarUserKind = CarUserKind.Owner,
        };

        await db.AddAsync(carUser, ct);
        await db.SaveChangesAsync(ct);

        return CarPayload.Ok(car);
    }

    [Authorize]
    public async Task<CarPayload> CarUpdate(
        [GlobalState] int currentUserId,
        CarUpdateInput input,
        AppDbContext db,
        CancellationToken ct)
    {
        var car = await db.CarUsers
            .Where(cu => cu.UserId.Equals(currentUserId))
            .Where(cu => cu.CarId.Equals(input.Id))
            .Select(cu => cu.Car)
            .FirstOrDefaultAsync(ct);
        if (car is null) return CarPayload.NotFound(input.Id);
        if (input.LicencePlace.HasValue) car.LicencePlate = input.LicencePlace.Value!;

        await db.SaveChangesAsync(ct);

        return CarPayload.Ok(car);
    }

    [Authorize]
    public async Task<string> CarInviteUser(
        [ID(nameof(Entity.Car))] int carId,
        [GlobalState] int currentUserId,
        [Service] JwtFactory jwtFactory,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var car = await db.CarUsers
            .Where(cu => cu.CarId.Equals(carId))
            .Where(cu => cu.UserId.Equals(currentUserId))
            .Where(cu => cu.CarUserKind.Equals(CarUserKind.Owner))
            .Select(cu => cu.Car)
            .FirstOrDefaultAsync(ct);

        return jwtFactory.CreateCarInvitationToken(car);
    }

    [Authorize]
    public async Task<ConfirmationPayload> CarAcceptInvitation(
        [GlobalState] int currenUserId,
        string token,
        AppDbContext db,
        CancellationToken ct,
        [Service] IConfiguration configuration
    )
    {
        var key = configuration.GetSection("JwtSecret").Value!;
        var bytes = Encoding.UTF8.GetBytes(key);
        var parameters = new TokenValidationParameters
        {
            ValidateIssuerSigningKey = true,
            IssuerSigningKey = new SymmetricSecurityKey(bytes),
            ValidateIssuer = false,
            ValidateAudience = false
        };
        var tokenHandler = new JwtSecurityTokenHandler();
        try
        {
            tokenHandler.ValidateToken(token, parameters, out var validatedToken);
        }
        catch
        {
            return new ConfirmationPayload(new[] { new UserError("INVALID_TOKEN", "Invalid token.") });
        }

        var securityToken = tokenHandler.ReadToken(token) as JwtSecurityToken;
        var tokenValue = securityToken!.Claims.First(c => c.Type.Equals(ClaimTypes.NameIdentifier)).Value;
        tokenValue = tokenValue.Replace("group-", "");
        var carUser = new CarUser
        {
            CarId = int.Parse(tokenValue),
            UserId = currenUserId,
            CarUserKind = CarUserKind.Regular,
        };

        await db.AddAsync(carUser, ct);
        await db.SaveChangesAsync(ct);

        return ConfirmationPayload.Ok();
    }
}
