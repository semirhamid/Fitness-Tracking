
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using fitness_backend_bl.Infrastructure.Db;
using fitness_backend_bl.Models.Entity;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json;

namespace fitness_backend.Infrastructure
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
                            Name = user.
                            Email = user.Email,


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


            authContext.Database.Migrate();




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