using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace WhereIsOurCar.Car.GraphQL;

[ExtendObjectType(nameof(Query))]
public class CarQuery
{
    [Authorize]
    public IQueryable<Entity.Car> CarList(
        [GlobalState] int currentUserId,
        AppDbContext db
    ) => db.CarUsers
        .Where(cu => cu.UserId.Equals(currentUserId))
        .Select(cu => cu.Car)
        .OrderBy(c => c.Id)
    ;

    [Authorize]
    public async Task<Entity.Car?> CarDetail(
        [GlobalState] int currentUserId,
        [ID(nameof(Entity.Car))] int id,
        AppDbContext db,
        CancellationToken ct
    ) => await db.CarUsers
        .Where(cu => cu.UserId.Equals(currentUserId))
        .Where(cu => cu.CarId.Equals(id))
        .Include(cu => cu.Car)
        .Select(cu => cu.Car)
        .FirstOrDefaultAsync(ct)
    ;
}
