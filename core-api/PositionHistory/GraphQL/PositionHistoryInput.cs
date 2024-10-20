using WhereIsOurCar.File.GraphQL;
using WhereIsOurCar.Photo.GraphQL;

namespace WhereIsOurCar.PositionHistory.GraphQL;

public record PositionHistoryInput(
    [property: ID(nameof(Car.Entity.Car))] int CarId,
    double Lat,
    double Lon,
    List<PhotoInput> Photos
);

public record PositionHistoryFilter(
    [property: ID(nameof(Car.Entity.Car))] Optional<int> CarId
);
