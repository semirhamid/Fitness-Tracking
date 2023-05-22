using BGIS_BL.Models.DTO;
using BGIS_BL.Models.Entity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace BGIS_BL.Infrastructure.Db
{   
    public class SchoolDbContext : DbContext
    {

        public virtual DbSet<ClassRoom> ClassRooms {get; set;}

        public SchoolDbContext (DbContextOptions<SchoolDbContext> options)
            : base(options)
        {
        }
    }
}

// dotnet ef migrations add "Initial Commit" -o .\Infrastructure\Migrations\School\ -c SchoolDbContext
// dotnet ef database update -c SchoolDbContext