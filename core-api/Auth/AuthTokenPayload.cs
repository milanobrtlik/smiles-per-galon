namespace WhereIsOurCar.Auth;

public class AuthTokenPayload : Payload
{
    public string? Token { get; }

    public AuthTokenPayload(string token)
    {
        Token = token;
    }

    public AuthTokenPayload(IEnumerable<UserError> errors) : base(errors)
    {
    }

    public static AuthTokenPayload BadCredentials(string? message = null)
    {
        return new AuthTokenPayload(new[] { UserError.BadCredentials(message) });
    }
}
