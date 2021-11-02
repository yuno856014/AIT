using AIT.DB.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AIT.DB.Controllers
{
    public class DashboardController : Controller
    {
        [Authorize(Roles = "SystemAdmin")]
        public IActionResult Index()
        {
            return View();
        }
    }
}
