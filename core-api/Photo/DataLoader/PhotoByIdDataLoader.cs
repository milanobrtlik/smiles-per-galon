using Microsoft.EntityFrameworkCore;

namespace WhereIsOurCar.Photo.DataLoader;

public class PhotoByIdDataLoader : BatchDataLoader<int, Entity.Photo>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public PhotoByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.Photo>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.Photos
            .Where(p => keys.Contains(p.Id))
            .ToDictionaryAsync(p => p.Id, cancellationToken);
    }
}
