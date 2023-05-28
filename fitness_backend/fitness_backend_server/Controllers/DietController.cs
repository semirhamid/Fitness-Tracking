using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace fitness_backend
{
    [ApiController]
    [Route("api/[controller]")]
    public class DietController : ControllerBase
    {
        private readonly IDietManager _dietManager;

        public DietController(IDietManager dietManager)
        {
            _dietManager = dietManager;
        }

        [HttpGet("all")]
        public ActionResult<IList<DietReturnDTO>> GetAllDiets()
        {
            var diets = _dietManager.GetAllDiets();
            return Ok(diets);
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<DietReturnDTO>> GetDietById(int id)
        {
            var diet = await _dietManager.GetDietById(id);
            if (diet == null)
                return NotFound();

            return Ok(diet);
        }

        [HttpPost("create")]
        public async Task<IActionResult> CreateDiet([FromForm] DietDTO dietDto)
        {
            if (dietDto == null)
                return BadRequest("Invalid request data.");

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            if (dietDto.ImageUrl == null)
                return BadRequest("ImageUrl is required.");

            try
            {
                int dietId = await _dietManager.CreateDiet(dietDto);

                return Ok(dietId);
            }
            catch (Exception ex)
            {
                // Handle any exceptions that occurred during diet creation
                return StatusCode(500, $"Failed to create diet: {ex.Message}");
            }
        }

        [HttpPut("update/{dietId}")]
        public async Task<IActionResult> UpdateDiet(int dietId, [FromForm] DietDTO dietDto)
        {
            if (dietDto == null)
                return BadRequest("Invalid request data.");

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            try
            {
                bool success = await _dietManager.UpdateDiet(dietId, dietDto);

                if (success)
                    return Ok();

                return NotFound($"Diet with ID {dietId} not found.");
            }
            catch (Exception ex)
            {
                // Handle any exceptions that occurred during diet update
                return StatusCode(500, $"Failed to update diet: {ex.Message}");
            }
        }

        [HttpDelete("delete/{dietId}")]
        public async Task<IActionResult> DeleteDiet(int dietId)
        {
            try
            {
                bool success = await _dietManager.DeleteDiet(dietId);

                if (success)
                    return Ok();

                return NotFound($"Diet with ID {dietId} not found.");
            }
            catch (Exception ex)
            {
                // Handle any exceptions that occurred during diet deletion
                return StatusCode(500, $"Failed to delete diet: {ex.Message}");
            }
        }
    }
}
