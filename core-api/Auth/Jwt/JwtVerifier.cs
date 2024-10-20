using System.IdentityModel.Tokens.Jwt;
using System.Text;
using Microsoft.IdentityModel.Tokens;

namespace WhereIsOurCar.Auth.Jwt;

public class JwtVerifier
{
    private readonly IConfiguration _configuration;

    public JwtVerifier(IConfiguration configuration)
    {
        _configuration = configuration ?? throw new ArgumentNullException(nameof(configuration));
    }
    
    public SecurityToken? Verify(string token)
    {
        var key = _configuration.GetSection("JwtSecret").Value ?? throw new Exception("Missing JWT secret in config.");
        var bytes = Encoding.UTF8.GetBytes(key);
        var parameters = new TokenValidationParameters
        {
            ValidateIssuerSigningKey = true,
            IssuerSigningKey = new SymmetricSecurityKey(bytes),
            ValidateIssuer = false,
            ValidateAudience = false
        };
        
        var tokenHandler = new JwtSecurityTokenHandler();

        tokenHandler.ValidateToken(token, parameters, out var validatedToken);

        return validatedToken;
    }
}
