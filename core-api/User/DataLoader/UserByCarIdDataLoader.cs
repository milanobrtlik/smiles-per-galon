using Microsoft.EntityFrameworkCore;

namespace WhereIsOurCar.User.DataLoader;

public class UserByCarIdDataLoader : GroupedDataLoader<int, Entity.User>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;
    private static readonly string UserByIdCacheKey = GetCacheKeyType<UserByIdDataLoader>();

    public UserByCarIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<ILookup<int, Entity.User>> LoadGroupedBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var list = await db.CarUsers
            .Where(cu => keys.Contains(cu.CarId))
            .Include(cu => cu.User)
            .OrderBy(cu => cu.UserId)
            .ToListAsync(cancellationToken);
        
        TryAddToCache(UserByIdCacheKey, list, item => item.CarId, item => item.User);

        return list.ToLookup(cu => cu.CarId, cu => cu.User);
    }
}
