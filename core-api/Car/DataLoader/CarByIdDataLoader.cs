using Microsoft.EntityFrameworkCore;

namespace WhereIsOurCar.Car.DataLoader;

public class CarByIdDataLoader : BatchDataLoader<int, Entity.Car>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public CarByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.Car>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.Cars
            .Where(c => keys.Contains(c.Id))
            .ToDictionaryAsync(c => c.Id, cancellationToken);
    }
}
