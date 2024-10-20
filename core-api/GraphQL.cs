using HotChocolate.Execution.Configuration;
using WhereIsOurCar.Auth;

namespace WhereIsOurCar;

public static class GraphQlConfigurator
{
    public static void ConfigureGraphQl(IRequestExecutorBuilder builder)
    {
        builder
            .AddAuthorization()
            .AddHttpRequestInterceptor<CurrentUserRequestInterceptor>()
            .RegisterDbContext<AppDbContext>(DbContextKind.Pooled)
            .AddQueryType<Query>()
            .AddMutationType<Mutation>()
            .AddType<UploadType>()
            .AddSpatialTypes()
            .AddFiltering()
            .AddProjections()
            .AddSpatialFiltering()
            .AddSpatialProjections()
            .AddSorting()
            ;
    }
}

public class Query
{
}

public class Mutation
{
}

public abstract class Payload
{
    public Payload(IEnumerable<UserError>? errors = null)
    {
        Errors = errors ?? new List<UserError>();
    }

    public IEnumerable<UserError> Errors { get; }
}

public class ConfirmationPayload : Payload
{
    public ConfirmationPayload(IEnumerable<UserError> errors) : base(errors) {}
    public static ConfirmationPayload Ok()
    {
        return new ConfirmationPayload(new List<UserError>());
    }

    public static ConfirmationPayload PermissionDenied()
    {
        return new ConfirmationPayload(new[] { UserError.PermissionDenied() });
    }
}

public record UserError(string Code, string? Message)
{
    public static UserError BadCredentials(string? message = null)
    {
        return new UserError("INVALID_CREDENTIALS", message);
    }

    public static UserError NotFound(string message)
    {
        return new UserError("NOT_FOUND", message);
    }

    public static UserError PermissionDenied()
    {
        return new UserError("PERMISSION_DENIED", null);
    }
}
