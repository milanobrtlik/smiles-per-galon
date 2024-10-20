using Microsoft.EntityFrameworkCore;

namespace WhereIsOurCar.File.DataLoader;

public class FileByIdDataLoader : BatchDataLoader<int, Entity.S3File>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;


    public FileByIdDataLoader(IDbContextFactory<AppDbContext> dbContextFactory, IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.S3File>> LoadBatchAsync(IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db.Files
            .Where(f => keys.Contains(f.Id))
            .ToDictionaryAsync(f => f.Id, cancellationToken);
    }
}
