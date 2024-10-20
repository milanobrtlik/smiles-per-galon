namespace WhereIsOurCar.File.GraphQL;

public class FileType : ObjectType<Entity.S3File>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.S3File> descriptor)
    {
        descriptor.BindFieldsExplicitly();

        descriptor.Field("url")
            .Type<NonNullType<StringType>>()
            .ResolveWith<FileTypeResolvers>(r => r.ResolveUrl(default!, default!));
    }
}

internal class FileTypeResolvers
{
    public string ResolveUrl(
        [Parent] Entity.S3File s3File,
        [Service] S3UrlFactory s3UrlFactory
    ) => s3UrlFactory.Create(s3File);
}
