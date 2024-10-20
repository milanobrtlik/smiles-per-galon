namespace WhereIsOurCar.Car.GraphQL;

public record CarCreateInput(
    string LicencePlate
);

public record CarUpdateInput(
    [property: ID(nameof(Entity.Car))] int Id,
    Optional<string?> LicencePlace
);

public record CarInvite(
    [property: ID(nameof(Entity.Car))] int CarId
);
