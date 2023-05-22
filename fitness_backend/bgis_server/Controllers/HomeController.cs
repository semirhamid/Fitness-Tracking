using BGIS_BL.Infrastructure.Db;
using BGIS_BL.Interface;
using BGIS_BL.Models.Entity;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BGIS.Controller
{

    [ApiController]
    // [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme, Roles = "Admin")]
    [Route("api/[controller]/[action]")]
    public class HomeController : ControllerBase
    {
        private readonly SchoolDbContext schoolDbContext;
        private readonly IAuthManager _authManager;

        public HomeController(SchoolDbContext dbContext, IAuthManager authManager)
        {
            this.schoolDbContext = dbContext;
            _authManager = authManager;
        }

        [HttpGet("health1")]
        public IActionResult Health()
        {
            // var items = schoolDbContext.ClassRooms.ToList();
            //_authManager.
            return Ok(new AppUser());
        }

        [HttpGet("health2")]
        [Authorize()]
        public IActionResult Health2()
        {
            return Ok("health 1");
        }


        [HttpGet]
        [Authorize(Policy = "ViewItemsPolicy")]
        public async Task<IActionResult> GetItems()
        {
            var items = await schoolDbContext.ClassRooms.ToListAsync();
            return Ok(items);
        }

    }

}