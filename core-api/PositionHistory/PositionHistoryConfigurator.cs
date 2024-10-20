using HotChocolate.Execution.Configuration;
using WhereIsOurCar.PositionHistory.DataLoader;
using WhereIsOurCar.PositionHistory.GraphQL;

namespace WhereIsOurCar.PositionHistory;

public static class PositionHistoryConfigurator
{
    public static void Configure(WebApplicationBuilder builder)
    {
    }

    public static void ConfigureGraphql(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<PositionHistoryType>()
            .AddDataLoader<LastPositionByCarIdDataLoader>()
            .AddTypeExtension<PositionHistoryMutation>()
            .AddDataLoader<PhotoByPositionHistoryIdDataLoader>()
            ;
    }
}
