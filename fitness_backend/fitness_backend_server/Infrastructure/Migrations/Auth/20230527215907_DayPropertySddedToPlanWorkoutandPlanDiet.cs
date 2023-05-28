using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace fitness_backend_server.Infrastructure.Migrations.Auth
{
    public partial class DayPropertySddedToPlanWorkoutandPlanDiet : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Day",
                table: "PlanWorkouts",
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Day",
                table: "PlanDiets",
                type: "integer",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Day",
                table: "PlanWorkouts");

            migrationBuilder.DropColumn(
                name: "Day",
                table: "PlanDiets");
        }
    }
}
