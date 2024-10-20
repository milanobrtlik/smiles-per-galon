using System.Text;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;

namespace WhereIsOurCar.Auth.Jwt;

public static class JwtConfigurator
{
    public static void Configure(IServiceCollection services, IConfiguration configuration)
    {
        var secret = configuration.GetSection("JwtSecret").Value ?? throw new ArgumentNullException("JwtSecret");
        var bytes = Encoding.UTF8.GetBytes(secret);
        services.AddAuthentication(o =>
        {
            o.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
            o.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            o.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
        }).AddJwtBearer(o =>
        {
            o.TokenValidationParameters = new TokenValidationParameters
            {
                ValidateIssuerSigningKey = true,
                IssuerSigningKey = new SymmetricSecurityKey(bytes),
                ValidateIssuer = false,
                ValidateAudience = false,
            };
            o.RequireHttpsMetadata = false;
            o.SaveToken = true;
        });

        services.AddTransient<JwtFactory>();
        services.AddTransient<JwtVerifier>();
    }
}
