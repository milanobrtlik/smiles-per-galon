using Minio;
using Minio.DataModel;

namespace WhereIsOurCar.File;

public class S3Client
{
    private readonly MinioClient _s3Client;
    private readonly IConfigurationSection _config;

    public S3Client(IConfiguration configuration)
    {
        _config = configuration.GetSection("S3");
        _s3Client = new MinioClient()
            .WithEndpoint(_config.GetSection("ServiceUrl").Value!)
            .WithCredentials(_config.GetSection("AccessKey").Value!, _config.GetSection("SecretKey").Value!)
            .WithRegion(_config.GetSection("Region").Value!)
            .WithSSL()
            .Build();
    }

    public async Task UploadFileAsync(Stream inputStream, string objectId, CancellationToken ct)
    {
        var bucketName = _config.GetSection("BucketName").Value;

        var args = new PutObjectArgs()
            .WithStreamData(inputStream)
            .WithObjectSize(inputStream.Length)
            .WithBucket(bucketName)
            .WithObject(objectId)
            .WithHeaders(new Dictionary<string, string> { { "x-amz-acl", "public-read" } });

        await _s3Client.PutObjectAsync(args, ct);
    }

    public async Task DeleteFileAsync(string objectId, CancellationToken ct)
    {
        var bucketName = _config.GetRequiredSection("BucketName").Value!;
        var args = new RemoveObjectArgs()
            .WithBucket(bucketName)
            .WithObject(objectId);

        await _s3Client.RemoveObjectAsync(args, ct);
    }

    public IObservable<Item> List(
        string prefix,
        CancellationToken ct
    )
    {
        var bucketName = _config.GetSection("BucketName").Value;
        var listObjectArgs = new ListObjectsArgs()
                .WithBucket(bucketName)
                .WithPrefix(prefix)
            ;
        return _s3Client.ListObjectsAsync(listObjectArgs, ct);
    }
}
