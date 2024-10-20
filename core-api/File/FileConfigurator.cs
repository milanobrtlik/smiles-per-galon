using HotChocolate.Execution.Configuration;
using WhereIsOurCar.File.DataLoader;
using WhereIsOurCar.File.GraphQL;

namespace WhereIsOurCar.File;

public static class FileConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddDataLoader<FileByIdDataLoader>()
            ;
    }

    public static void Configure(IServiceCollection services)
    {
        services
            .AddTransient<FileIdGenerator>()
            .AddTransient<S3Client>()
            .AddTransient<S3UrlFactory>()
            .AddTransient<FileFactory>()
            ;
    }
}
