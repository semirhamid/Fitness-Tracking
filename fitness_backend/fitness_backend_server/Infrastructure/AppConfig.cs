using System.Text;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using fitness_backend_bl.Models.Entity;
using fitness_backend_bl.Infrastructure;
using fitness_backend_bl.Infrastructure.Db;
using fitness_backend_bl.Interface;
using fitness_backend_bl.BusinessLogic;

namespace fitness_backend

{
    public static class Startup
    {
        public static void ConfigureServices(IServiceCollection services, ConfigurationManager configuration)
        {

            // Enable asp controllers
            services.AddControllers();
            // enable Postgres database and attach it to AuthDbContext that works only for security
            services.AddDbContext<AuthDbContext>(options =>
                             options.UseNpgsql(
                                 configuration.GetConnectionString("DefaultConnection"), b => b.MigrationsAssembly("fitness_backend_server")));
            // enable postgres database and attach it to schoolDbContext for tables that are not in security


            // setup dependency injections
            services.AddScoped<AuthDbContext>();
            // services.AddScoped<AppDbSeeder>();
            services.AddScoped<IAuthManager, AuthManager>();
            services.AddScoped<IFileStorageManager, FileStorageManager>();
            services.AddScoped<UserManager<AppUser>>();
            services.AddScoped<RoleManager<IdentityRole>>();

            services.AddCors(p => p.AddPolicy("corsapp", builder =>
            {
                builder.WithOrigins("*").AllowAnyMethod().AllowAnyHeader();
            }));

            // create identity service using AppUser class and Role
            services.AddIdentity<AppUser, IdentityRole>(options => options.SignIn.RequireConfirmedAccount = true)
                        .AddEntityFrameworkStores<AuthDbContext>();


            // jwt key
            services.Configure<JwtConfig>(configuration.GetSection("JwtConfig"));
            var key = Encoding.ASCII.GetBytes(configuration["JwtConfig:Secret"]);

            // setup JWT authentication policy
            var tokenValidationParameters = new TokenValidationParameters
            {
                ValidateIssuerSigningKey = true,
                IssuerSigningKey = new SymmetricSecurityKey(key),
                ValidateIssuer = false,
                ValidateAudience = false,
                ValidateLifetime = true,
                RequireExpirationTime = false,
                ClockSkew = TimeSpan.Zero
            };
            services.AddSingleton(tokenValidationParameters);
            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            })
            .AddJwtBearer(jwt =>
            {
                jwt.SaveToken = true;
                jwt.TokenValidationParameters = tokenValidationParameters;
            });


            services.AddAuthorization(options =>
            {
                options.AddPolicy("ViewItemsPolicy",
                    policy => policy.RequireClaim("ViewItems"));
            });

            // enable end point explorer for Swagger
            services.AddEndpointsApiExplorer();
            services.AddSwaggerGen();




        }
    }
}