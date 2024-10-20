using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace WhereIsOurCar.Migrations
{
    /// <inheritdoc />
    public partial class v4 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_position_history_photo_position_history_position_history_id",
                table: "position_history_photo");

            migrationBuilder.DropForeignKey(
                name: "fk_position_history_photo_s3_file_full_id",
                table: "position_history_photo");

            migrationBuilder.DropForeignKey(
                name: "fk_position_history_photo_s3_file_thumb_id",
                table: "position_history_photo");

            migrationBuilder.DropPrimaryKey(
                name: "pk_position_history_photo",
                table: "position_history_photo");

            migrationBuilder.DropIndex(
                name: "ix_position_history_photo_full_id",
                table: "position_history_photo");

            migrationBuilder.DropIndex(
                name: "ix_position_history_photo_position_history_id",
                table: "position_history_photo");

            migrationBuilder.DropColumn(
                name: "id",
                table: "position_history_photo");

            migrationBuilder.DropColumn(
                name: "full_id",
                table: "position_history_photo");

            migrationBuilder.RenameTable(
                name: "position_history_photo",
                newName: "position_history_x_photo");

            migrationBuilder.RenameColumn(
                name: "thumb_id",
                table: "position_history_x_photo",
                newName: "photo_id");

            migrationBuilder.RenameIndex(
                name: "ix_position_history_photo_thumb_id",
                table: "position_history_x_photo",
                newName: "ix_position_history_x_photo_photo_id");

            migrationBuilder.AddPrimaryKey(
                name: "pk_position_history_x_photo",
                table: "position_history_x_photo",
                columns: new[] { "position_history_id", "photo_id" });

            migrationBuilder.CreateTable(
                name: "photos",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    full_id = table.Column<int>(type: "integer", nullable: false),
                    thumb_id = table.Column<int>(type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_photos", x => x.id);
                    table.ForeignKey(
                        name: "fk_photos_s3_file_full_id",
                        column: x => x.full_id,
                        principalTable: "s3_file",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_photos_s3_file_thumb_id",
                        column: x => x.thumb_id,
                        principalTable: "s3_file",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_photos_full_id",
                table: "photos",
                column: "full_id");

            migrationBuilder.CreateIndex(
                name: "ix_photos_thumb_id",
                table: "photos",
                column: "thumb_id");

            migrationBuilder.AddForeignKey(
                name: "fk_position_history_x_photo_photos_photo_id",
                table: "position_history_x_photo",
                column: "photo_id",
                principalTable: "photos",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_position_history_x_photo_position_history_position_history_",
                table: "position_history_x_photo",
                column: "position_history_id",
                principalTable: "position_history",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_position_history_x_photo_photos_photo_id",
                table: "position_history_x_photo");

            migrationBuilder.DropForeignKey(
                name: "fk_position_history_x_photo_position_history_position_history_",
                table: "position_history_x_photo");

            migrationBuilder.DropTable(
                name: "photos");

            migrationBuilder.DropPrimaryKey(
                name: "pk_position_history_x_photo",
                table: "position_history_x_photo");

            migrationBuilder.RenameTable(
                name: "position_history_x_photo",
                newName: "position_history_photo");

            migrationBuilder.RenameColumn(
                name: "photo_id",
                table: "position_history_photo",
                newName: "thumb_id");

            migrationBuilder.RenameIndex(
                name: "ix_position_history_x_photo_photo_id",
                table: "position_history_photo",
                newName: "ix_position_history_photo_thumb_id");

            migrationBuilder.AddColumn<int>(
                name: "id",
                table: "position_history_photo",
                type: "integer",
                nullable: false,
                defaultValue: 0)
                .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn);

            migrationBuilder.AddColumn<int>(
                name: "full_id",
                table: "position_history_photo",
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddPrimaryKey(
                name: "pk_position_history_photo",
                table: "position_history_photo",
                column: "id");

            migrationBuilder.CreateIndex(
                name: "ix_position_history_photo_full_id",
                table: "position_history_photo",
                column: "full_id");

            migrationBuilder.CreateIndex(
                name: "ix_position_history_photo_position_history_id",
                table: "position_history_photo",
                column: "position_history_id");

            migrationBuilder.AddForeignKey(
                name: "fk_position_history_photo_position_history_position_history_id",
                table: "position_history_photo",
                column: "position_history_id",
                principalTable: "position_history",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_position_history_photo_s3_file_full_id",
                table: "position_history_photo",
                column: "full_id",
                principalTable: "s3_file",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_position_history_photo_s3_file_thumb_id",
                table: "position_history_photo",
                column: "thumb_id",
                principalTable: "s3_file",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
