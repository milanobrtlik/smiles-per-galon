using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace WhereIsOurCar.User.GraphQL;

[ExtendObjectType(typeof(Query))]
public class UserQuery
{
    [Authorize]
    public async Task<Entity.User> MeAsync(
        AppDbContext db,
        [GlobalState] int currentUserId,
        CancellationToken ct
    ) => await db
        .Users
        .Where(u => u.Id.Equals(currentUserId))
        .FirstAsync(ct);
}
