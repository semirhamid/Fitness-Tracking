using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using BGIS.Infrastructure;
using BGIS_BL.Interface;
using BGIS_BL.Models.DTO;
using BGIS_BL.Models.Entity;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;

namespace BGIS.Controller
{

    [ApiController]
    [Route("api/[controller]/[action]")]
    public class AuthController : ControllerBase
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly IAuthManager _authManager;

        public AuthController(
            UserManager<AppUser> userManager,
            IAuthManager authManager
        )
        {
            _userManager = userManager;
            _authManager = authManager;
        }

        [HttpPost]
        [Route("Register")]
        public async Task<IActionResult> Register([FromBody] UserRegistrationRequestDto user)
        {

            // check i the user with the same email exist
            var existingUser = await _userManager.FindByEmailAsync(user.Email);

            if (existingUser != null)
            {
                return BadRequest(new RegistrationResponse()
                {
                    Result = false,
                    Errors = new List<string>(){
                                            "Email already exist"
                                        }
                });
            }

            var newUser = new AppUser()
            {
                FirstName = user.FirstName,
                MiddleName = user.MiddleName,
                LastName = user.LastName,
                Email = user.Email,
                UserName = user.Email,
                Phone = user.Phone
            };
            var isCreated = await _userManager.CreateAsync(newUser, user.Password);
            if (isCreated.Succeeded)
            {

                return Ok(await _authManager.GenerateJwtToken(newUser));
            }

            return new JsonResult(new RegistrationResponse()
            {
                Result = false,
                Errors = isCreated.Errors.Select(x => x.Description).ToList()
            }
                    )
            { StatusCode = 500 };

        }


        [HttpPost]
        [Route("RefreshToken")]
        public async Task<IActionResult> RefreshToken([FromBody] TokenRequest tokenRequest)
        {
            if (ModelState.IsValid)
            {
                var res = await _authManager.VerifyToken(tokenRequest);

                if (res == null)
                {
                    return BadRequest(new RegistrationResponse()
                    {
                        Errors = new List<string>() {
                    "Invalid tokens"
                },
                        Success = false
                    });
                }

                return Ok(res);
            }

            return BadRequest(new RegistrationResponse()
            {
                Errors = new List<string>() {
                "Invalid payload"
            },
                Success = false
            });
        }

        [HttpPost]
        [Route("Login")]
        public async Task<IActionResult> Login([FromBody] UserLoginRequest user)
        {

            var existingUser = await _userManager.FindByEmailAsync(user.Email);

            if (existingUser == null)
            {
                // We dont want to give to much information on why the request has failed for security reasons
                return BadRequest(new RegistrationResponse()
                {
                    Result = false,
                    Errors = new List<string>(){
                                        "Invalid authentication request"
                                    }
                });
            }

            // Now we need to check if the user has inputed the right password
            var isCorrect = await _userManager.CheckPasswordAsync(existingUser, user.Password);

            if (isCorrect)
            {

                return Ok(await _authManager.GenerateJwtToken(existingUser));
            }
            else
            {
                // We dont want to give to much information on why the request has failed for security reasons
                return BadRequest(new RegistrationResponse()
                {
                    Result = false,
                    Errors = new List<string>(){
                                         "Invalid authentication request"
                                    }
                });
            }


        }

    }

}