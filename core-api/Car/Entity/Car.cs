using System.ComponentModel.DataAnnotations.Schema;

namespace WhereIsOurCar.Car.Entity;

[Table("car")]
public class Car
{
    [ID] public int Id { get; set; }
    public string LicencePlate { get; set; } = default!;
}
