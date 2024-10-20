using System.ComponentModel.DataAnnotations.Schema;

namespace WhereIsOurCar.Car.Entity;

public enum CarUserKind
{
    Owner,
    Regular
}

[Table("car_x_user")]
public class CarUser
{
    public int UserId { get; set; }
    public User.Entity.User User { get; set; } = default!;
    public int CarId { get; set; }
    public Car Car { get; set; } = default!;
    public CarUserKind CarUserKind { get; set; }
}
