using System.ComponentModel.DataAnnotations.Schema;
using NetTopologySuite.Geometries;

namespace WhereIsOurCar.PositionHistory.Entity;

[Table("position_history")]
public class PositionHistory
{
    [ID] public int Id { get; set; }
    [GraphQLIgnore] public int CarId { get; set; }
    public Car.Entity.Car Car { get; set; } = default!;
    public DateTime CreatedAt { get; set; }
    public Point Location { get; set; } = default!;
    [GraphQLIgnore] public int ParkedById { get; set; }
    public User.Entity.User ParkedBy { get; set; } = default!;
    public ICollection<PositionHistoryPhoto> Photos { get; set; } = default!;
}
