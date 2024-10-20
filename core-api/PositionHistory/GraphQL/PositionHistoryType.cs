using WhereIsOurCar.Car.DataLoader;
using WhereIsOurCar.File.GraphQL;
using WhereIsOurCar.Photo.GraphQL;
using WhereIsOurCar.PositionHistory.DataLoader;
using WhereIsOurCar.User.DataLoader;

namespace WhereIsOurCar.PositionHistory.GraphQL;

public class PositionHistoryType : ObjectType<Entity.PositionHistory>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.PositionHistory> descriptor)
    {
        descriptor.Field(ph => ph.Car)
            .ResolveWith<PositionTypeResolvers>(r => r.ResolveCar(default!, default!, default!));

        descriptor.Field(ph => ph.ParkedBy)
            .ResolveWith<PositionTypeResolvers>(r => r.ResolveParkedBy(default!, default!, default!));

        descriptor.Field("photos")
            .Type<ListType<PhotoType>>()
            .ResolveWith<PositionTypeResolvers>(r => r.ResolvePhotos(default!, default!, default!));
    }
}

internal class PositionTypeResolvers
{
    public async Task<Car.Entity.Car> ResolveCar(
        [Parent] Entity.PositionHistory parent,
        CarByIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(parent.CarId, ct);

    public async Task<User.Entity.User> ResolveParkedBy(
        [Parent] Entity.PositionHistory positionHistory,
        UserByIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(positionHistory.ParkedById, ct);

    public async Task<IEnumerable<Photo.Entity.Photo>> ResolvePhotos(
        [Parent] Entity.PositionHistory positionHistory,
        PhotoByPositionHistoryIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(positionHistory.Id, ct);
}
