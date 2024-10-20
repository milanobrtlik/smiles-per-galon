using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;
using NetTopologySuite.Geometries;
using WhereIsOurCar.File;
using WhereIsOurCar.PositionHistory.Entity;

namespace WhereIsOurCar.PositionHistory.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class PositionHistoryMutation
{
    [Authorize]
    public async Task<PositionHistoryPayload> PositionHistoryInsert(
        [GlobalState] int currentUserId,
        PositionHistoryInput input,
        AppDbContext db,
        [Service]FileFactory fileFactory,
        CancellationToken ct
    )
    {
        var car = await db.CarUsers
            .Where(cu => cu.UserId.Equals(currentUserId))
            .Where(cu => cu.CarId.Equals(input.CarId))
            .Select(cu => cu.Car)
            .FirstOrDefaultAsync(ct);
        if (car is null) return PositionHistoryPayload.CarNotFound(input.CarId);

        var positionHistory = new Entity.PositionHistory
        {
            Car = car,
            CreatedAt = DateTime.UtcNow,
            Location = new Point(input.Lat, input.Lon),
            ParkedById = currentUserId
        };
        
        foreach (var photoInput in input.Photos)
        {
            var photo = new PositionHistoryPhoto
            {
                PositionHistory = positionHistory,
                Photo = new Photo.Entity.Photo
                {
                    Full = await fileFactory.Create(photoInput.Full.OpenReadStream(), ct),
                    Thumb =  await fileFactory.Create(photoInput.Thumb.OpenReadStream(), ct),
                },
            };
            positionHistory.Photos.Add(photo);
        }

        await db.AddAsync(positionHistory, ct);
        await db.SaveChangesAsync(ct);

        return PositionHistoryPayload.Ok(positionHistory);
    }
}
