using Microsoft.EntityFrameworkCore;
using WhereIsOurCar;
using WhereIsOurCar.Auth;
using WhereIsOurCar.Auth.Jwt;
using WhereIsOurCar.Car;
using WhereIsOurCar.File;
using WhereIsOurCar.Photo;
using WhereIsOurCar.PositionHistory;
using WhereIsOurCar.User;

var builder = WebApplication.CreateBuilder(args);

JwtConfigurator.Configure(builder.Services, builder.Configuration);

builder.Services.AddPooledDbContextFactory<AppDbContext>(o =>
    o.UseNpgsql(
            builder.Configuration.GetConnectionString("default"),
            x => x.UseNetTopologySuite()
        )
        .UseSnakeCaseNamingConvention()
);

builder.Services
    .AddAuthorization()
    .AddHttpContextAccessor()
    .AddCors(o => o.AddDefaultPolicy(p => p.AllowAnyHeader().AllowAnyMethod().AllowAnyOrigin()));
FileConfigurator.Configure(builder.Services);

var graphql = builder.Services.AddGraphQLServer();

GraphQlConfigurator.ConfigureGraphQl(graphql);
AuthConfigurator.ConfigureGraphQl(graphql);
UserConfigurator.ConfigureGraphQl(graphql);
CarConfigurator.ConfigureGraphQl(graphql);
PositionHistoryConfigurator.ConfigureGraphql(graphql);
FileConfigurator.ConfigureGraphQl(graphql);
PhotoConfigurator.ConfigureGraphql(graphql);

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
}

app.UseCors()
    .UseRouting()
    .UseAuthentication()
    .UseEndpoints(routeBuilder => routeBuilder.MapGraphQL())
;

using (var scope = app.Services.CreateScope())
{
    var factory = scope.ServiceProvider.GetRequiredService<IDbContextFactory<AppDbContext>>();
    factory.CreateDbContext().Database.Migrate();
}

app.Run();
