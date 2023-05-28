using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace fitness_backend_server.Infrastructure.Migrations.Auth
{
    public partial class ModifiedUserID : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "userId",
                table: "UserSleeps",
                type: "integer",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "userId",
                table: "UserSleeps");
        }
    }
}
