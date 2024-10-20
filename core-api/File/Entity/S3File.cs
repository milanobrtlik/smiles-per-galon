using System.ComponentModel.DataAnnotations.Schema;

namespace WhereIsOurCar.File.Entity;

[Table("s3_file")]
public class S3File
{
    public int Id { get; set; }
    public string ServiceUrl { get; set; } = default!;
    public string Region { get; set; } = default!;
    public string Bucket { get; set; } = default!;
    public string ObjectId { get; set; } = default!;
}
