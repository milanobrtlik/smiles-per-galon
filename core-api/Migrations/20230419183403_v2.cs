using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace WhereIsOurCar.Migrations
{
    /// <inheritdoc />
    public partial class v2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_car_user_car_car_id",
                table: "car_user");

            migrationBuilder.DropForeignKey(
                name: "fk_car_user_user_user_id",
                table: "car_user");

            migrationBuilder.DropPrimaryKey(
                name: "pk_car_user",
                table: "car_user");

            migrationBuilder.DropColumn(
                name: "photo_url",
                table: "position_history");

            migrationBuilder.RenameTable(
                name: "car_user",
                newName: "car_x_user");

            migrationBuilder.RenameIndex(
                name: "ix_car_user_user_id",
                table: "car_x_user",
                newName: "ix_car_x_user_user_id");

            migrationBuilder.AddPrimaryKey(
                name: "pk_car_x_user",
                table: "car_x_user",
                columns: new[] { "car_id", "user_id" });

            migrationBuilder.CreateTable(
                name: "file",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    url = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_file", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "position_history_x_photo",
                columns: table => new
                {
                    position_history_id = table.Column<int>(type: "integer", nullable: false),
                    file_id = table.Column<int>(type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_position_history_x_photo", x => new { x.position_history_id, x.file_id });
                    table.ForeignKey(
                        name: "fk_position_history_x_photo_file_file_id",
                        column: x => x.file_id,
                        principalTable: "file",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_position_history_x_photo_position_history_position_history_",
                        column: x => x.position_history_id,
                        principalTable: "position_history",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_position_history_x_photo_file_id",
                table: "position_history_x_photo",
                column: "file_id");

            migrationBuilder.AddForeignKey(
                name: "fk_car_x_user_car_car_id",
                table: "car_x_user",
                column: "car_id",
                principalTable: "car",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_car_x_user_user_user_id",
                table: "car_x_user",
                column: "user_id",
                principalTable: "user",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_car_x_user_car_car_id",
                table: "car_x_user");

            migrationBuilder.DropForeignKey(
                name: "fk_car_x_user_user_user_id",
                table: "car_x_user");

            migrationBuilder.DropTable(
                name: "position_history_x_photo");

            migrationBuilder.DropTable(
                name: "file");

            migrationBuilder.DropPrimaryKey(
                name: "pk_car_x_user",
                table: "car_x_user");

            migrationBuilder.RenameTable(
                name: "car_x_user",
                newName: "car_user");

            migrationBuilder.RenameIndex(
                name: "ix_car_x_user_user_id",
                table: "car_user",
                newName: "ix_car_user_user_id");

            migrationBuilder.AddColumn<string>(
                name: "photo_url",
                table: "position_history",
                type: "text",
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "pk_car_user",
                table: "car_user",
                columns: new[] { "car_id", "user_id" });

            migrationBuilder.AddForeignKey(
                name: "fk_car_user_car_car_id",
                table: "car_user",
                column: "car_id",
                principalTable: "car",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_car_user_user_user_id",
                table: "car_user",
                column: "user_id",
                principalTable: "user",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
