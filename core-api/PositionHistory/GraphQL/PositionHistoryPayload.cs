namespace WhereIsOurCar.PositionHistory.GraphQL;

public class PositionHistoryPayload : Payload
{
    public PositionHistoryPayload(IEnumerable<UserError> errors) : base(errors){}

    public PositionHistoryPayload(Entity.PositionHistory positionHistory)
    {
        PositionHistory = positionHistory;
    }

    public Entity.PositionHistory? PositionHistory { get; }

    public static PositionHistoryPayload Ok(Entity.PositionHistory positionHistory)
    {
        return new PositionHistoryPayload(positionHistory);
    }

    public static PositionHistoryPayload CarNotFound(int carId)
    {
        return new PositionHistoryPayload(new[] { UserError.NotFound($"Car #{carId} not found.") });
    }
}
