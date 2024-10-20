using System.ComponentModel.DataAnnotations.Schema;
using WhereIsOurCar.File.Entity;

namespace WhereIsOurCar.Photo.Entity;

[Table("photo")]
public class Photo
{
    [ID]public int Id { get; set; }
    [GraphQLIgnore]public int FullId { get; set; }
    [GraphQLIgnore]public S3File Full { get; set; } = default!;
    [GraphQLIgnore]public int ThumbId { get; set; }
    [GraphQLIgnore]public S3File Thumb { get; set; } = default!;
}
