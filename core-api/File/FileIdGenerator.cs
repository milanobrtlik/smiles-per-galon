namespace WhereIsOurCar.File;

public class FileIdGenerator
{
    public string Generate(string path, string extension = "png")
    {
        var random = Convert.ToBase64String(Guid.NewGuid().ToByteArray())
            .Replace("=", "")
            .Replace("/", "")
            .Replace("+", "");

        return $"{path}/{random}.{extension}";
    }
}
