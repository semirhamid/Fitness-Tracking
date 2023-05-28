using fitness_backend_bl.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace fitness_backend
{
    [ApiController]
    [Route("api/[controller]")]
    public class PlanTypesController : ControllerBase
    {
        private readonly IPlanTypeManager _planTypeManager;

        public PlanTypesController(IPlanTypeManager planTypeManager)
        {
            _planTypeManager = planTypeManager;
        }

        [HttpGet("all")]
        public ActionResult<IList<PlanTypeReturnDTO>> GetAllPlanTypes()
        {
            var planTypes = _planTypeManager.GetAllPlanTypes();
            return Ok(planTypes);
        }

        [HttpGet("planTypesByPlanIdDay")]
        public async Task<ActionResult<Dictionary<int, DietWorkoutList>>> GetPlanTypesByPlanIdDay(int planId, int day)
        {
            var planTypes = await _planTypeManager.GetPlanTypeByDayPlanId(day, planId);
            return Ok(planTypes);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetPlanTypeById(int id)
        {
            var planType = await _planTypeManager.GetPlanTypeById(id);
            if (planType == null)
                return NotFound();

            return Ok(planType);
        }

        [HttpPost("create")]
        public async Task<IActionResult> CreatePlanType([FromForm] PlanTypeDTO planTypeDto)
        {      
            var planTypeId = await _planTypeManager.CreatePlanType(planTypeDto);
            return CreatedAtAction(nameof(GetPlanTypeById), new { id = planTypeId }, null);
        }

        [HttpPut("updatePlanType")]
        public async Task<IActionResult> UpdatePlanType([FromForm] PlanTypeDTO planTypeDto)
        {
            var result = await _planTypeManager.UpdatePlanType(planTypeDto.PlanId, planTypeDto);
            if (!result)
                return NotFound();

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePlanType(int id)
        {
            var result = await _planTypeManager.DeletePlanType(id);
            if (!result)
                return NotFound();

            return NoContent();
        }










        [HttpPost("createPlan")]
        public async Task<IActionResult> CreatePlan([FromForm] PlanDTO plan)
        {
            var result = await _planTypeManager.CreatePlan(plan);
            if (result)
            {
                return Ok();
            }
            else
            {
                return BadRequest();
            }

        }

        [HttpGet("getPlanById/{id}")]
        public async Task<IActionResult> GetPlanById(int id)
        {
            var plan = await _planTypeManager.GetPlanById(id);
            if (plan == null)
                return NotFound();

            return Ok(plan);
        }

        [HttpGet("getPlans")]
        public async Task<IActionResult> GetPlans()
        {
            var plans = await _planTypeManager.GetPlans();
            if (plans == null)
                return NotFound();

            return Ok(plans);
        }

        [HttpPut("updatePlan")]
        public async Task<IActionResult> UpdatePlan( [FromForm] PlanUpdateDTO plan)
        {
            var result = await _planTypeManager.UpdatePlan(plan.Id, plan);
            if (!result)
                return NotFound();

            return NoContent();
        }

        [HttpDelete("deletePlan/{id}")]
        public async Task<IActionResult> DeletePlan(int id)
        {
            var result = await _planTypeManager.DeletePlan(id);
            if (!result)
                return NotFound();

            return NoContent();
        }
    }
}