namespace WhereIsOurCar.User.GraphQL;

public class UserType : ObjectType<Entity.User>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.User> descriptor)
    {
        // descriptor.Field(u => u.Email)
        //     .Authorize()
    }
}
