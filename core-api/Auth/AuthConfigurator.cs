using HotChocolate.Execution.Configuration;
using WhereIsOurCar.Auth.Email;
using WhereIsOurCar.Auth.Google;
using WhereIsOurCar.Auth.Jwt;

namespace WhereIsOurCar.Auth;

public static class AuthConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddTypeExtension<GoogleMutation>()
            .AddTypeExtension<JwtMutation>()
            .AddTypeExtension<EmailAuthMutation>()
            ;
    }
}
