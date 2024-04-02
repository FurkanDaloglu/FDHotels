using Microsoft.AspNetCore.Mvc;

namespace FDHotelsProject.WebUI.ViewComponents.Default
{
    public class _ReservationPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
