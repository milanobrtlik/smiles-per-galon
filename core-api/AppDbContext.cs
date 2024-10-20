using Microsoft.EntityFrameworkCore;
using Npgsql;
using WhereIsOurCar.Car.Entity;
using WhereIsOurCar.File.Entity;
using WhereIsOurCar.PositionHistory.Entity;

namespace WhereIsOurCar;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
    {
        NpgsqlConnection.GlobalTypeMapper.MapEnum<CarUserKind>();
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.HasPostgresEnum<CarUserKind>();

        modelBuilder.Entity<CarUser>()
            .HasKey(cu => new { cu.CarId, cu.UserId });

        modelBuilder.Entity<PositionHistoryPhoto>()
            .HasKey(php => new { php.PositionHistoryId, php.PhotoId });
    }

    public DbSet<User.Entity.User> Users { get; set; } = default!;
    public DbSet<Car.Entity.Car> Cars { get; set; } = default!;
    public DbSet<CarUser> CarUsers { get; set; } = default!;
    public DbSet<PositionHistory.Entity.PositionHistory> PositionHistories { get; set; } = default!;
    public DbSet<S3File> Files { get; set; } = default!;
    public DbSet<PositionHistoryPhoto> PositionHistoryPhotos { get; set; } = default!;
    public DbSet<Photo.Entity.Photo> Photos { get; set; } = default!;
}
