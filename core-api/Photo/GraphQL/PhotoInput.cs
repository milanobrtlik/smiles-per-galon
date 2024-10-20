namespace WhereIsOurCar.Photo.GraphQL;

public record PhotoInput(
    IFile Full,
    IFile Thumb
);
