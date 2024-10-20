using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WhereIsOurCar.Migrations
{
    /// <inheritdoc />
    public partial class v5 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_photos_s3_file_full_id",
                table: "photos");

            migrationBuilder.DropForeignKey(
                name: "fk_photos_s3_file_thumb_id",
                table: "photos");

            migrationBuilder.DropForeignKey(
                name: "fk_position_history_x_photo_photos_photo_id",
                table: "position_history_x_photo");

            migrationBuilder.DropPrimaryKey(
                name: "pk_photos",
                table: "photos");

            migrationBuilder.RenameTable(
                name: "photos",
                newName: "photo");

            migrationBuilder.RenameIndex(
                name: "ix_photos_thumb_id",
                table: "photo",
                newName: "ix_photo_thumb_id");

            migrationBuilder.RenameIndex(
                name: "ix_photos_full_id",
                table: "photo",
                newName: "ix_photo_full_id");

            migrationBuilder.AddPrimaryKey(
                name: "pk_photo",
                table: "photo",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_photo_s3_file_full_id",
                table: "photo",
                column: "full_id",
                principalTable: "s3_file",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_photo_s3_file_thumb_id",
                table: "photo",
                column: "thumb_id",
                principalTable: "s3_file",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_position_history_x_photo_photo_photo_id",
                table: "position_history_x_photo",
                column: "photo_id",
                principalTable: "photo",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_photo_s3_file_full_id",
                table: "photo");

            migrationBuilder.DropForeignKey(
                name: "fk_photo_s3_file_thumb_id",
                table: "photo");

            migrationBuilder.DropForeignKey(
                name: "fk_position_history_x_photo_photo_photo_id",
                table: "position_history_x_photo");

            migrationBuilder.DropPrimaryKey(
                name: "pk_photo",
                table: "photo");

            migrationBuilder.RenameTable(
                name: "photo",
                newName: "photos");

            migrationBuilder.RenameIndex(
                name: "ix_photo_thumb_id",
                table: "photos",
                newName: "ix_photos_thumb_id");

            migrationBuilder.RenameIndex(
                name: "ix_photo_full_id",
                table: "photos",
                newName: "ix_photos_full_id");

            migrationBuilder.AddPrimaryKey(
                name: "pk_photos",
                table: "photos",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_photos_s3_file_full_id",
                table: "photos",
                column: "full_id",
                principalTable: "s3_file",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_photos_s3_file_thumb_id",
                table: "photos",
                column: "thumb_id",
                principalTable: "s3_file",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_position_history_x_photo_photos_photo_id",
                table: "position_history_x_photo",
                column: "photo_id",
                principalTable: "photos",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
