using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using System.Security.Claims;
using fitness_backend_bl.Models.Entity;

namespace fitness_backend
{
    public class UserDataController : ControllerBase
    {
        private readonly IUserDataManager _userDataManager;

        public UserDataController(IUserDataManager userDataManager)
        {
            _userDataManager = userDataManager;
        }

        private async Task<string> GetCurrentUser()
        {
            string userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            return "6ca8d57c-accc-4365-b1b5-fa0a6e3c76070";
        }

        [HttpPost("user/dayworkout")]
        public async Task<IActionResult> AddUserDayWorkoutData([FromBody] UserDailyWorkoutModel userDailyWorkoutModel)
        {
            string userId = await GetCurrentUser();
            bool result = await _userDataManager.AddUserDayWorkoutData(userDailyWorkoutModel, userId);
            if (result)
                return Ok();

            return BadRequest();
        }

        [HttpPost("user/diet")]
        public async Task<IActionResult> AddUserDiet([FromBody] UserDietModel userDietModel)
        {
            string userId = await GetCurrentUser();
            bool result = await _userDataManager.AddUserDiet(userDietModel.IsCompleted, userDietModel.Day, userId);
            if (result)
                return Ok();

            return BadRequest();
        }

        [HttpPost("user/sleep")]
        public async Task<IActionResult> AddUserSleep([FromBody] UserSleepModel userSleepModel)
        {
            string userId = await GetCurrentUser();
            bool result = await _userDataManager.AddUserSleep(userSleepModel.Duration, userSleepModel.Day, userId);
            if (result)
                return Ok();

            return BadRequest();
        }

        [HttpDelete("user/daydata/{day}")]
        public async Task<IActionResult> DeleteUserDayData(int day)
        {
            string userId = await GetCurrentUser();
            bool result = await _userDataManager.DeleteUserDayData(day, userId);
            if (result)
                return Ok();

            return BadRequest();
        }

        [HttpDelete("user/diet/{day}")]
        public async Task<IActionResult> DeleteUserDiet(int day)
        {
            string userId = await GetCurrentUser();
            bool result = await _userDataManager.DeleteUserDiet(day, userId);
            if (result)
                return Ok();

            return BadRequest();
        }

        [HttpDelete("user/sleep/{day}")]
        public async Task<IActionResult> DeleteUserSleep(int day)
        {
            string userId = await GetCurrentUser();
            bool result = await _userDataManager.DeleteUserSleep(day, userId);
            if (result)
                return Ok();

            return BadRequest();
        }

        [HttpGet("user/daydata/{day}")]
        public IActionResult GetUserDayData(int day)
        {
            string userId = GetCurrentUser().Result;
            UserDailyWorkoutReturnModel data = _userDataManager.GetUserDayData(day, userId);
            if (data != null)
                return Ok(data);

            return NotFound();
        }

        [HttpGet("user/plandata")]
        public IActionResult GetUserPlanTypeData()
        {
            string userId = GetCurrentUser().Result;
            List<UserDailyWorkoutReturnModel> data = _userDataManager.GetUserPlanTypeData(userId);
            if (data != null)
                return Ok(data);

            return NotFound();
        }

        [HttpPost("user/plan/{planTypeId}")]
        public async Task<IActionResult> RegisterUserPlan(int planTypeId)
        {
            string userId = await GetCurrentUser();
            bool result = await _userDataManager.RegisterUserPlan(planTypeId, userId);
            if (result)
                return Ok();

            return BadRequest();
        }
    }
}
