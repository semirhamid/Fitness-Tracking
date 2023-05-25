using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace fitness_backend
{
    [ApiController]
    [Route("api/[controller]")]
    public class WorkoutController: ControllerBase
    {
        private readonly WorkoutManager _workoutManager;
        public WorkoutController(WorkoutManager workoutManager)
        {
            _workoutManager = workoutManager;
        }

        
    }
}