using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Hotel.Repositories.Hotels_Repository;
using Hotel.Repositories.User_Repository;
using Microsoft.Extensions.Configuration;
using System.Runtime.Serialization;
using System.Configuration;
using Microsoft.Extensions.Configuration;
using Hotel.Models;


var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

//Add session service
builder.Services.AddSession(options =>
{
	// Configure session options as needed
	options.Cookie.Name = "YourSessionCookieName";
	options.IdleTimeout = TimeSpan.FromMinutes(30);
});
//Data source=localhost;DATABASE=HotelDB;Integrated Security=True
var connectionString = "Data Source=THEO;Integrated Security=True;database=HotelDB;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Connect Timeout=60;Encrypt=False;Trust Server Certificate=False;Command Timeout=0";

//User DbContext & Repo registration
builder.Services.AddDbContext<TheoDbContext>(options => { options.UseSqlServer(connectionString);});
builder.Services.AddScoped<IUserRepository>(provider =>{var dbContext = provider.GetRequiredService<TheoDbContext>();return new UserRepository(dbContext);});

//Hotel DbContext & Repo registration
builder.Services.AddDbContext<TheoDbContext>(options => { options.UseSqlServer(connectionString); });
builder.Services.AddScoped<IHotelRepository>(provider => { var dbContext = provider.GetRequiredService<TheoDbContext>(); return new HotelRepository(dbContext);});





var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.UseSession();


app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
