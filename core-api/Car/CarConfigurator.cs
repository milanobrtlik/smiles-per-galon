using HotChocolate.Execution.Configuration;
using WhereIsOurCar.Car.DataLoader;
using WhereIsOurCar.Car.GraphQL;

namespace WhereIsOurCar.Car;

public static class CarConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddTypeExtension<CarMutation>()
            .AddTypeExtension<CarQuery>()
            .AddDataLoader<CarByIdDataLoader>()
            .AddType<CarType>()
            ;
    }

    public static void Configure(IServiceCollection services)
    {
    }
}
