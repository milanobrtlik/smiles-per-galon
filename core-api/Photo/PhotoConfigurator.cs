using HotChocolate.Execution.Configuration;
using WhereIsOurCar.Photo.DataLoader;
using WhereIsOurCar.Photo.GraphQL;

namespace WhereIsOurCar.Photo;

public class PhotoConfigurator
{
    public static void ConfigureGraphql(IRequestExecutorBuilder builder)
    {
        builder
            .AddType<PhotoType>()
            .AddDataLoader<PhotoByIdDataLoader>()
            ;
    }
}
