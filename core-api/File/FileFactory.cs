using Microsoft.EntityFrameworkCore;

namespace WhereIsOurCar.File;

public class FileFactory
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;
    private readonly S3Client _s3Client;
    private readonly IConfigurationSection _s3Config;

    public FileFactory(IDbContextFactory<AppDbContext> dbContextFactory, S3Client s3Client,
        IConfiguration configuration)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
        _s3Client = s3Client;
        _s3Config = configuration.GetRequiredSection("s3");
    }

    public async Task<Entity.S3File> Create(Stream inputStream, CancellationToken ct)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(ct);
        var objectId = GenerateObjectId();

        await _s3Client.UploadFileAsync(inputStream, objectId, ct);

        var file = new Entity.S3File
        {
            ServiceUrl = _s3Config.GetRequiredSection("ServiceUrl").Value!,
            Region = _s3Config.GetRequiredSection("Region").Value!,
            Bucket = _s3Config.GetRequiredSection("Bucket").Value!,
            ObjectId = objectId,
        };

        // await db.AddAsync(file, ct);

        return file;
    }

    private static string GenerateObjectId()
    {
        return Convert.ToBase64String(Guid.NewGuid().ToByteArray())
                .Replace("=", "")
                .Replace("/", "")
                .Replace("+", "")
            ;
    }
}
