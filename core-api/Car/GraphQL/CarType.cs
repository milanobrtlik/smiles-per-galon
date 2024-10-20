using WhereIsOurCar.PositionHistory.DataLoader;
using WhereIsOurCar.PositionHistory.GraphQL;
using WhereIsOurCar.User.DataLoader;
using WhereIsOurCar.User.GraphQL;

namespace WhereIsOurCar.Car.GraphQL;

public class CarType : ObjectType<Entity.Car>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.Car> descriptor)
    {
        descriptor.Field("lastPosition")
            .Type<PositionHistoryType>()
            .ResolveWith<CarTypeResolvers>(r => r.ResolveLastPosition(default!, default!, default!));

        descriptor.Field("users")
            .Type<ListType<UserType>>()
            .ResolveWith<CarTypeResolvers>(r => r.ResolveUsers(default!, default!, default!));
    }
}

internal class CarTypeResolvers
{
    public async Task<PositionHistory.Entity.PositionHistory?> ResolveLastPosition(
        [Parent] Entity.Car parent,
        LastPositionByCarIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(parent.Id, ct);

    public async Task<IEnumerable<User.Entity.User>> ResolveUsers(
        [Parent] Entity.Car car,
        UserByCarIdDataLoader dataLoader,
        CancellationToken ct
    ) => await dataLoader.LoadAsync(car.Id, ct);
}
