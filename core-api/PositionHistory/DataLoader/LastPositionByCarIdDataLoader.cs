using Microsoft.EntityFrameworkCore;

namespace WhereIsOurCar.PositionHistory.DataLoader;

public class LastPositionByCarIdDataLoader : BatchDataLoader<int, Entity.PositionHistory?>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public LastPositionByCarIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler, DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.PositionHistory?>> LoadBatchAsync(
        IReadOnlyList<int> keys, CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);


        return await db.PositionHistories
            .Where(ph => keys.Contains(ph.CarId))
            .GroupBy(ph => ph.CarId)
            .Select(g => g.OrderByDescending(ph => ph.CreatedAt).FirstOrDefault())
            .ToDictionaryAsync(g => g!.CarId, cancellationToken);
    }
}
