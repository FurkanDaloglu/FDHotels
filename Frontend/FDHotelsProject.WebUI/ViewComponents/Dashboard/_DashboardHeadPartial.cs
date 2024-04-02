using Microsoft.AspNetCore.Mvc;

namespace FDHotelsProject.WebUI.ViewComponents.Dashboard
{
    public class _DashboardHeadPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
