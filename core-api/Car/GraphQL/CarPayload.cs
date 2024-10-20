namespace WhereIsOurCar.Car.GraphQL;

public class CarPayload : Payload
{
    public Entity.Car? Car { get; }

    public CarPayload(IEnumerable<UserError> errors) : base(errors)
    {
    }

    public CarPayload(Entity.Car car)
    {
        Car = car;
    }

    public static CarPayload Ok(Entity.Car car)
    {
        return new CarPayload(car);
    }

    public static CarPayload NotFound(int id)
    {
        return new CarPayload(new[] { UserError.NotFound($"Car #{id} not found.") });
    }
}
