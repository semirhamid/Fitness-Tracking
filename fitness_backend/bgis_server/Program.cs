using BGIS.Infrastructure;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

Startup.ConfigureServices(builder.Services, builder.Configuration);
// Add services to the container.

 // Seed the database with the basics


var app = builder.Build();
using (var scope = app.Services.CreateScope())
{
    AppDbSeeder authDbSeeder = new AppDbSeeder();
    await authDbSeeder.Seed(scope);
}
// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors("corsapp");
app.UseHttpsRedirection();
app.UseAuthentication();

app.UseAuthorization();

app.MapControllers();

app.Run();
