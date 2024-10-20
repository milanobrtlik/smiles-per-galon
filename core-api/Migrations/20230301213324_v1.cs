using System;
using Microsoft.EntityFrameworkCore.Migrations;
using NetTopologySuite.Geometries;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using WhereIsOurCar.Car.Entity;

#nullable disable

namespace WhereIsOurCar.Migrations
{
    /// <inheritdoc />
    public partial class v1 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("Npgsql:Enum:car_user_kind", "owner,regular")
                .Annotation("Npgsql:PostgresExtension:postgis", ",,");

            migrationBuilder.CreateTable(
                name: "car",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    licence_plate = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_car", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "user",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    name = table.Column<string>(type: "text", nullable: true),
                    email = table.Column<string>(type: "text", nullable: false),
                    password = table.Column<string>(type: "text", nullable: true),
                    avatar_url = table.Column<string>(type: "text", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_user", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "car_user",
                columns: table => new
                {
                    user_id = table.Column<int>(type: "integer", nullable: false),
                    car_id = table.Column<int>(type: "integer", nullable: false),
                    car_user_kind = table.Column<CarUserKind>(type: "car_user_kind", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_car_user", x => new { x.car_id, x.user_id });
                    table.ForeignKey(
                        name: "fk_car_user_car_car_id",
                        column: x => x.car_id,
                        principalTable: "car",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_car_user_user_user_id",
                        column: x => x.user_id,
                        principalTable: "user",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "position_history",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    car_id = table.Column<int>(type: "integer", nullable: false),
                    created_at = table.Column<DateTime>(type: "timestamp with time zone", nullable: false),
                    location = table.Column<Point>(type: "geometry", nullable: false),
                    parked_by_id = table.Column<int>(type: "integer", nullable: false),
                    photo_url = table.Column<string>(type: "text", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_position_history", x => x.id);
                    table.ForeignKey(
                        name: "fk_position_history_car_car_id",
                        column: x => x.car_id,
                        principalTable: "car",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_position_history_user_parked_by_id",
                        column: x => x.parked_by_id,
                        principalTable: "user",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_car_user_user_id",
                table: "car_user",
                column: "user_id");

            migrationBuilder.CreateIndex(
                name: "ix_position_history_car_id",
                table: "position_history",
                column: "car_id");

            migrationBuilder.CreateIndex(
                name: "ix_position_history_parked_by_id",
                table: "position_history",
                column: "parked_by_id");

            migrationBuilder.CreateIndex(
                name: "ix_user_email",
                table: "user",
                column: "email",
                unique: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "car_user");

            migrationBuilder.DropTable(
                name: "position_history");

            migrationBuilder.DropTable(
                name: "car");

            migrationBuilder.DropTable(
                name: "user");
        }
    }
}
