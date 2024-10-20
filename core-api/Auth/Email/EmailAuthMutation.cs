using Microsoft.EntityFrameworkCore;
using Sodium;
using WhereIsOurCar.Auth.Jwt;

namespace WhereIsOurCar.Auth.Email;

[ExtendObjectType(typeof(Mutation))]
public class EmailAuthMutation
{
    public async Task<bool> EmailSignUp(
        EmailSignUpInputType input,
        AppDbContext db,
        CancellationToken ct)
    {
        var user = new User.Entity.User
        {
            Password = PasswordHash.ArgonHashString(input.Password),
            Email = input.Email,
            Name = input.Name,
        };
        db.Users.Add(user);
        try
        {   
            await db.SaveChangesAsync(ct);
        }
        catch
        {
            // reset password request
            return true;
        }
    
        return true;
    }
    
    public async Task<AuthTokenPayload> EmailSignIn(
        EmailSignInInputType input,
        AppDbContext db,
        [Service] JwtFactory jwtFactory,
        CancellationToken ct
    )
    {
        var user = await db.Users
            .Where(u => u.Email.Equals(input.Email))
            .FirstOrDefaultAsync(ct);

        if (user is  null || PasswordHash.ArgonHashStringVerify(user.Password!, input.Password) == false)
        {
            return AuthTokenPayload.BadCredentials();
        }
    
        if (PasswordHash.ArgonPasswordNeedsRehash(user.Password!) == true)
        {
            user.Password = PasswordHash.ArgonHashString(input.Password);
            await db.SaveChangesAsync(ct);
        }
    
        return new AuthTokenPayload(jwtFactory.CreateAuthToken(user.Id, 60 * 86400));
    }
}
