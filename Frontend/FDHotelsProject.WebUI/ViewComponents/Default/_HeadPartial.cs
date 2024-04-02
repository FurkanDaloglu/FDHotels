using Microsoft.AspNetCore.Mvc;

namespace FDHotelsProject.WebUI.ViewComponents.Default
{
    public class _HeadPartial:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
