using fitness_backend_bl.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace fitness_backend
{
    [ApiController]
    [Route("api/[controller]")]
    public class WorkoutController : ControllerBase
    {
        private readonly IWorkoutManager _workoutManager;
        private readonly IFileStorageManager _fileManager;


        public WorkoutController(IWorkoutManager workoutManager, IFileStorageManager fileManager)
        {
            _workoutManager = workoutManager;
            _fileManager = fileManager;
        }

        [HttpGet("all")]
        public  ActionResult<IList<WorkoutReturnDTO>> GetAllWorkouts()
        {
            var workouts = _workoutManager.GetAllWorkouts();
            return Ok(workouts);
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<WorkoutReturnDTO>> GetWorkoutById(int id)
        {
            var workout = await _workoutManager.GetWorkoutById(id);
            if (workout == null)
                return NotFound();

            return Ok(workout);
        }

        [HttpPost("create")]
        public async Task<IActionResult> CreateWorkout([FromForm] WorkoutDTO workoutDto)
        {
            if (workoutDto == null)
                return BadRequest("Invalid request data.");

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            if (workoutDto.Image1 == null)
                return BadRequest("Image1 is required.");

            if (workoutDto.Image2 == null)
                return BadRequest("Image1 is required.");


            try
            {
                var workout = new Workout
                {
                    Title = workoutDto.Title,
                    Duration = workoutDto.Duration,
                    Step = workoutDto.Step,
                    Description = workoutDto.Description,
                    Focus = workoutDto.Focus,

                };

                int workoutId = await _workoutManager.CreateWorkout(workout, workoutDto.Image1, workoutDto.Image2);

                return Ok(workoutId);
            }
            catch (Exception ex)
            {
                // Handle any exceptions that occurred during workout creation
                return StatusCode(500, $"Failed to create workout: {ex.Message}");
            }
        }

        [HttpPut("update/{workoutId}")]
        public async Task<IActionResult> UpdateWorkout(int workoutId, [FromForm] WorkoutDTO workoutDto)
        {
            if (workoutDto == null)
                return BadRequest("Invalid request data.");

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            try
            {
                var updatedWorkout = new Workout
                {
                    Title = workoutDto.Title,
                    Duration = workoutDto.Duration,
                    Step = workoutDto.Step,
                    Description = workoutDto.Description,
                    Focus = workoutDto.Focus
                };

                bool success = await _workoutManager.UpdateWorkout(workoutId, updatedWorkout, workoutDto.Image1, workoutDto.Image2);

                if (success)
                    return Ok();

                return NotFound($"Workout with ID {workoutId} not found.");
            }
            catch (Exception ex)
            {
                // Handle any exceptions that occurred during workout update
                return StatusCode(500, $"Failed to update workout: {ex.Message}");
            }
        }

        [HttpDelete("delete/{workoutId}")]
        public async Task<IActionResult> DeleteWorkout(int workoutId)
        {
            try
            {
                bool success = await _workoutManager.DeleteWorkout(workoutId);

                if (success)
                    return Ok();

                return NotFound($"Workout with ID {workoutId} not found.");
            }
            catch (Exception ex)
            {
                // Handle any exceptions that occurred during workout deletion
                return StatusCode(500, $"Failed to delete workout: {ex.Message}");
            }
        }
    }
}
