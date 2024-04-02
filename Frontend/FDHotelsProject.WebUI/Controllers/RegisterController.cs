using FDHotelsProject.DataAccessLayer.Concrete;
using FDHotelsProject.EntityLayer.Concrete;
using FDHotelsProject.WebUI.Dtos.MessageCategoryDto;
using FDHotelsProject.WebUI.Dtos.RegisterDto;
using FDHotelsProject.WebUI.Dtos.WorkLocationDto;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using System.Net.Http;

namespace FDHotelsProject.WebUI.Controllers
{
    [AllowAnonymous]
    public class RegisterController : Controller
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly IHttpClientFactory _httpClientFactory;

        public RegisterController(UserManager<AppUser> userManager, IHttpClientFactory httpClientFactory)
        {
            _userManager = userManager;
            _httpClientFactory = httpClientFactory;
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync("http://localhost:65023/api/WorkLocation");
            var jsonData = await responseMessage.Content.ReadAsStringAsync();
            var values = JsonConvert.DeserializeObject<List<ResultWorkLocationDto>>(jsonData);

            List<SelectListItem> values2 = new();
            values2.Add(new SelectListItem { Text = "Çalıştığınız Konumu Seçiniz", Value = "", Disabled = true, Selected = true });
            values2.AddRange
            (from x in values
             select new SelectListItem
             {
                 Text = x.WorkLocationName,
                 Value = x.WorkLocationID.ToString()
             });
            ViewBag.v = values2;
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Index(CreateNewUserDto createNewUserDto)
        {
            if(!ModelState.IsValid)
            {
                return View();
            }
            var appUser = new AppUser()
            {
                Name = createNewUserDto.Name,
                Email = createNewUserDto.Mail,
                Surname = createNewUserDto.Surname,
                UserName = createNewUserDto.Username,
                WorkLocationID = createNewUserDto.WorkLocationID
            };
            var result=await _userManager.CreateAsync(appUser,createNewUserDto.Password);
            if(result.Succeeded)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }
    }
}
