using fitness_backend;
using fitness_backend.Infrastructure;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.FileProviders;

WebApplicationBuilder builder;

Console.WriteLine("Running development");
Environment.SetEnvironmentVariable("ASPNETCORE_ENVIRONMENT", "Development");

builder = WebApplication.CreateBuilder(args);

if (args.Length >= 1 && args[0] == "devel")
{
    var urls = "http://localhost:7247";
    if (args.Length == 2)
    {
        urls = args[1];
    }
    builder.WebHost.UseUrls(urls);
}

Startup.ConfigureServices(builder.Services, builder.Configuration);

var app = builder.Build();

var path = Path.Combine(app.Environment.ContentRootPath, "StaticFiles");
bool exists = Directory.Exists(path);
if (!exists)
{
    Directory.CreateDirectory(path);
}

using (var scope = app.Services.CreateScope())
{
    AppDbSeeder authDbSeeder = new AppDbSeeder();
    await authDbSeeder.Seed(scope);
}

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseStaticFiles(new StaticFileOptions
{
    FileProvider = new PhysicalFileProvider(Path.Combine(Directory.GetCurrentDirectory(), "StaticFiles")),
    RequestPath = "/StaticFiles",
    ServeUnknownFileTypes = true
});

app.UseCors("corsapp");
app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();

app.Run();
