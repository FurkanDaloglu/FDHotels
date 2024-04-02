using Microsoft.AspNetCore.Mvc;

namespace FDHotelsProject.WebUI.ViewComponents.Dashboard
{
    public class _DashboardScriptPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
