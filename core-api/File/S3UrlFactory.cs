using WhereIsOurCar.File.Entity;

namespace WhereIsOurCar.File;

public class S3UrlFactory
{
    public string Create(S3File s3File)
    {
        return $"https://{s3File.Bucket}.{s3File.ServiceUrl}/{s3File.ObjectId}";
    }
}
