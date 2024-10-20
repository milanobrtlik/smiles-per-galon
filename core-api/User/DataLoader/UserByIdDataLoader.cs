using Microsoft.EntityFrameworkCore;

namespace WhereIsOurCar.User.DataLoader;

public class UserByIdDataLoader : BatchDataLoader<int, Entity.User>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public UserByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler, DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.User>> LoadBatchAsync(IReadOnlyList<int> keys, CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.Users
            .Where(u => keys.Contains(u.Id))
            .OrderBy(u => u.Id)
            .ToDictionaryAsync(u => u.Id, cancellationToken);
    }
}
