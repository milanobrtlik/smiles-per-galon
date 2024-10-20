using Google.Apis.Auth;
using Microsoft.EntityFrameworkCore;
using WhereIsOurCar.Auth.Jwt;

namespace WhereIsOurCar.Auth.Google;

[ExtendObjectType(typeof(Mutation))]
public class GoogleMutation
{
    public async Task<string> GoogleSignIn(
        string idToken,
        AppDbContext db,
        CancellationToken ct,
        [Service] JwtFactory jwtFactory
    )
    {
        var auth = await GoogleJsonWebSignature.ValidateAsync(idToken);

        var user = await db
            .Users
            .Where(u => u.Email.Equals(auth.Email))
            .FirstOrDefaultAsync(ct);

        if (user is null)
        {
            user = new User.Entity.User
            {
                Name = auth.Name,
                Email = auth.Email,
                AvatarUrl = auth.Picture
            };
            db.Add((object)user);
        }
        else
        {
            user.Name = auth.Name;
            user.AvatarUrl = auth.Picture;
        }

        await db.SaveChangesAsync(ct);

        return jwtFactory.CreateAuthToken(user.Id, 60 * 24 * 3600);
    }
}
