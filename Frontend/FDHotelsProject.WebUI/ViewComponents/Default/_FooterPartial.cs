using Microsoft.AspNetCore.Mvc;

namespace FDHotelsProject.WebUI.ViewComponents.Default
{
    public class _FooterPartial : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
