using Microsoft.AspNetCore.Mvc;

namespace FDHotelsProject.WebUI.Controllers
{
    public class RoomController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
