using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.IdentityModel.Tokens;

namespace WhereIsOurCar.Auth.Jwt;

public class JwtFactory
{
    private readonly IConfiguration _configuration;

    public JwtFactory(IConfiguration configuration)
    {
        _configuration = configuration ?? throw new ArgumentNullException(nameof(configuration));
    }

    public string CreateAuthToken(int currentUserId, long expirationTimeSeconds = 60)
    {
        var identity = new ClaimsIdentity(new Claim[]
        {
            new(ClaimTypes.NameIdentifier, currentUserId.ToString())
        });

        return Create(identity, expirationTimeSeconds);
    }

    public string CreateCarInvitationToken(Car.Entity.Car? car)
    {
        var carId = car is null ? "sorry not sorry" : car.Id.ToString();
        var identity = new ClaimsIdentity(new Claim[]
        {
            new(ClaimTypes.NameIdentifier, $"group-{carId}")
        });

        return Create(identity, 2 * 24 * 3600);
    }

    public string Create(ClaimsIdentity identity, long expirationTimeSeconds = 60)
    {
        var secret = _configuration.GetSection("JwtSecret").Value ?? throw new Exception("Missing JWT secret in config.");
        var bytes = Encoding.UTF8.GetBytes(secret);
        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = identity,
            Expires = DateTime.UtcNow.AddSeconds(expirationTimeSeconds),
            SigningCredentials = new SigningCredentials(
                new SymmetricSecurityKey(bytes),
                SecurityAlgorithms.HmacSha256Signature
            )
        };
        var tokenHandler = new JwtSecurityTokenHandler();
        var token = tokenHandler.CreateToken(tokenDescriptor);

        return tokenHandler.WriteToken(token);
    }
}
