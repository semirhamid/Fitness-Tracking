using fitness_backend_bl.Infrastructure.Db;
using fitness_backend_bl.Interface;
using fitness_backend_bl.Models.Entity;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace fitness_backend.Controller
{

    [ApiController]
    // [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme, Roles = "Admin")]
    [Route("api/[controller]/[action]")]
    public class HomeController : ControllerBase
    {
        private readonly IAuthManager _authManager;

        public HomeController(IAuthManager authManager)
        {

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

            return Ok();
        }

    }

}