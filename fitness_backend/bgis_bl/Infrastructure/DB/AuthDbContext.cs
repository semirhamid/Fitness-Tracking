using BGIS_BL.Models.DTO;
using BGIS_BL.Models.Entity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace BGIS_BL.Infrastructure.Db
{   
    public class AuthDbContext : IdentityDbContext<AppUser>
    {
        public virtual DbSet<RefreshToken> RefreshTokens {get;set;}
        // public  virtual DbSet<AppUser> AppUsers {get;set;}
        // public  virtual DbSet<AppRole> AppRole {get;set;}

        public AuthDbContext (DbContextOptions<AuthDbContext> options)
            : base(options)
        {
        }


        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}

// dotnet ef migrations add "Initial Commit" -o .\Infrastructure\Migrations\Auth\ -c AuthDbContext 
// dotnet ef database update -c AuthDbContext