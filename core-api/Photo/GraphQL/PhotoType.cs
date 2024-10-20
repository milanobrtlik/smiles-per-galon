using WhereIsOurCar.File;
using WhereIsOurCar.Photo.DataLoader;

namespace WhereIsOurCar.Photo.GraphQL;

public class PhotoType : ObjectType<Entity.Photo>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.Photo> descriptor)
    {
        descriptor.Field("full")
            .Type<NonNullType<StringType>>()
            .ResolveWith<PhotoResolvers>(r => r.ResolveFull(default!, default!, default!, default!));
        descriptor.Field("thumb")
            .Type<NonNullType<StringType>>()
            .ResolveWith<PhotoResolvers>(r => r.ResolveThumb(default!, default!, default!, default!));
    }
}

internal class PhotoResolvers
{
    public async Task<string> ResolveFull(
        [Parent] Entity.Photo photo,
        PhotoByIdDataLoader dataLoader,
        CancellationToken ct,
        [Service]S3UrlFactory s3UrlFactory
    ) => s3UrlFactory.Create((await dataLoader.LoadAsync(photo.Id, ct)).Full);

    public async Task<string> ResolveThumb(
        [Parent] Entity.Photo photo,
        PhotoByIdDataLoader dataLoader,
        CancellationToken ct,
        [Service] S3UrlFactory s3UrlFactory
    ) => s3UrlFactory.Create((await dataLoader.LoadAsync(photo.Id, ct)).Thumb);
}
