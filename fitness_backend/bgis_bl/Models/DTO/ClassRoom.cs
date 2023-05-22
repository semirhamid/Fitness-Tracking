using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace BGIS_BL.Models.DTO
{
    public class ClassRoom
    {
        public int Id { get; set; }
        public string Grade { get; set; }
        public string Section { get; set; }

    }

}
