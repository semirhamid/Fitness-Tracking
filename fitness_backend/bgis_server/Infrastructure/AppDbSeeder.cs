
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using BGIS_BL.Infrastructure.Db;
using BGIS_BL.Models.Entity;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json;

namespace BGIS.Infrastructure
{
    public class AppDbSeeder
    {
        public AppDbSeeder()
        {

        }



        private async Task EnsureRolesSeed(AuthDbContext context, IServiceScope scope)
        {
            var roles = new string[] { "admin", "teacher", "parent", "student" };
            var _roleManager = scope.ServiceProvider.GetService<RoleManager<IdentityRole>>();
            foreach (var roleName in roles)
            {
                var roleExist = await _roleManager.RoleExistsAsync(roleName);
                if (!roleExist)
                {
                    //create the roles and seed them to the database: Question 1
                    var roleResult = await _roleManager.CreateAsync(new IdentityRole(roleName));
                }
            }
        }
        private async Task EnsureUsersSeed(AuthDbContext context, IServiceScope scope)
        {
            var userManager = scope.ServiceProvider.GetService<UserManager<AppUser>>();
            if (!context.Users.Any())
            {
                var usersRead = File.ReadAllText("Infrastructure/Config/Seed" + Path.DirectorySeparatorChar + "users.json");
                var users = JsonConvert.DeserializeObject<List<SeedUserModel>>(usersRead);
                
                foreach (var user in users)
                {

                    var u = await userManager.FindByEmailAsync(user.Email);
                    if (u == null)
                    {
                        var appUser = new AppUser()
                        {
                            UserName = user.UserName,
                            PhoneNumber = user.Phone,
                            Phone = user.Phone,
                            Email = user.Email,
                            MiddleName = user.MiddleName,
                            FirstName = user.FirstName,
                            LastName = user.LastName
                        };
                        var s = JsonConvert.SerializeObject(appUser);
                        var r = await userManager.CreateAsync(appUser, user.Password);
                        if (r.Succeeded)
                        {
                            await userManager.AddToRolesAsync(appUser, user.Roles.Split(","));
                        }

                    }
                }

            }
        }
        public async Task Seed(IServiceScope scope)
        {
            var authContext = scope.ServiceProvider.GetRequiredService<AuthDbContext>(); ;
            var schoolContext = scope.ServiceProvider.GetRequiredService<SchoolDbContext>(); ;

            authContext.Database.Migrate();
            schoolContext.Database.Migrate();



            await this.EnsureRolesSeed(authContext, scope);
            await this.EnsureUsersSeed(authContext, scope);
        }

    }

    public class SeedUserModel
    {
        public string AccountId { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Roles { get; set; }
    }
}