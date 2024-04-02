using Microsoft.AspNetCore.Mvc;

namespace FDHotelsProject.WebUI.Controllers
{
    public class DashboardController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
