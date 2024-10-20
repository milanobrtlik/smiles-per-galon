using Microsoft.EntityFrameworkCore;
using WhereIsOurCar.Photo.DataLoader;

namespace WhereIsOurCar.PositionHistory.DataLoader;

public class PhotoByPositionHistoryIdDataLoader : GroupedDataLoader<int, Photo.Entity.Photo>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;
    private static readonly string PhotoByPositionIdCacheKey = GetCacheKeyType<PhotoByIdDataLoader>();

    public PhotoByPositionHistoryIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler, DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<ILookup<int, Photo.Entity.Photo>> LoadGroupedBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        var list = await db.PositionHistoryPhotos
            .Where(php => keys.Contains(php.PositionHistoryId))
            .Include(php => php.Photo)
            .OrderBy(php => php.PhotoId)
            .ToListAsync(cancellationToken);

        TryAddToCache(PhotoByPositionIdCacheKey, list, item => item.PositionHistoryId, item => item.Photo);

        return list.ToLookup(php => php.PositionHistoryId, php => php.Photo);
    }
}
