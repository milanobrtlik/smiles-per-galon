using System.ComponentModel.DataAnnotations.Schema;

namespace WhereIsOurCar.PositionHistory.Entity;

[Table("position_history_x_photo")]
public class PositionHistoryPhoto
{
    public int PositionHistoryId { get; set; }
    public PositionHistory PositionHistory { get; set; } = default!;
    public int PhotoId { get; set; }
    public Photo.Entity.Photo Photo { get; set; } = default!;
}
