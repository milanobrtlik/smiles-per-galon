using System.Security.Claims;
using HotChocolate.AspNetCore;
using HotChocolate.Execution;

namespace WhereIsOurCar.Auth;

public class CurrentUserRequestInterceptor : DefaultHttpRequestInterceptor
{
    public override ValueTask OnCreateAsync(HttpContext context, IRequestExecutor requestExecutor,
        IQueryRequestBuilder requestBuilder,
        CancellationToken cancellationToken)
    {
        var nameIdentifier = context.User.FindFirstValue(ClaimTypes.NameIdentifier);
        if (context.User.Identity is not { IsAuthenticated: true } || nameIdentifier is null)
        {
            return base.OnCreateAsync(context, requestExecutor, requestBuilder, cancellationToken);
        }
        
        requestBuilder.SetGlobalState("currentUserId", int.Parse(nameIdentifier));

        return base.OnCreateAsync(context, requestExecutor, requestBuilder, cancellationToken);
    }
}
