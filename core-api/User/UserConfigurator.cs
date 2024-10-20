using HotChocolate.Execution.Configuration;
using WhereIsOurCar.User.DataLoader;
using WhereIsOurCar.User.GraphQL;

namespace WhereIsOurCar.User;

public static class UserConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<UserType>()
            .AddTypeExtension<UserQuery>()
            .AddDataLoader<UserByIdDataLoader>()
            .AddDataLoader<UserByCarIdDataLoader>()
            ;
    }
}
