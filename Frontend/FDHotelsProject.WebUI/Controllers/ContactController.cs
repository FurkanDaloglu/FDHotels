using FDHotelsProject.WebUI.Dtos.ContactDto;
using FDHotelsProject.WebUI.Dtos.MessageCategoryDto;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using System.Net.Http;
using System.Text;

namespace FDHotelsProject.WebUI.Controllers
{
    [AllowAnonymous]
    public class ContactController : Controller
    {
        private readonly IHttpClientFactory _httpClientFactory;
        public ContactController(IHttpClientFactory httpClientFactory)
        {
            _httpClientFactory = httpClientFactory;
        }

        public async Task<IActionResult> Index()
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync("http://localhost:65023/api/MessageCategory");

            var jsonData = await responseMessage.Content.ReadAsStringAsync();
            var values = JsonConvert.DeserializeObject<List<ResultMessageCategoryDto>>(jsonData);
            List<SelectListItem> values2 = new();
            values2.Add(new SelectListItem { Text = "Seçiniz", Value = "", Disabled = true, Selected = true });
            values2.AddRange
            (from x in values
             select new SelectListItem
             {
                 Text = x.MessageCategoryName,
                 Value = x.MessageCategoryID.ToString()
             });
            ViewBag.v = values2;
            return View();
        }
        [HttpGet]
        public async Task<PartialViewResult> SendMessage()
        {
            return PartialView();
        }

        [HttpPost]
        public async Task<IActionResult> SendMessage(CreateContactDto createContactDto)
        {
            try
            {
                var client2 = _httpClientFactory.CreateClient();
                var responseMessage = await client2.GetAsync("http://localhost:65023/api/MessageCategory");
                var jsonData2 = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<List<ResultMessageCategoryDto>>(jsonData2);
                List<SelectListItem> values2 = new();
                values2.Add(new SelectListItem { Text = "Seçiniz", Value = "", Disabled = true, Selected = true });
                values2.AddRange
                (from x in values
                 select new SelectListItem
                 {
                     Text = x.MessageCategoryName,
                     Value = x.MessageCategoryID.ToString()
                 });
                ViewBag.v = values2;


                createContactDto.Date = DateTime.Parse(DateTime.Now.ToShortDateString());
                var client = _httpClientFactory.CreateClient();
                var jsonData = JsonConvert.SerializeObject(createContactDto);
                StringContent stringContent = new StringContent(jsonData, Encoding.UTF8, "application/json");
                await client.PostAsync("http://localhost:65023/api/Contact", stringContent);

                ViewBag.message = "Mesajınız başarılı bir şekilde gönderilmiştir.";
                return View("Index");
            }
            catch (Exception ex)
            {
                // Hata mesajını logla veya hata mesajını görüntüle
                ViewBag.message = "Mesajınız gönderilirken bir hata oluştu: " + ex.Message;
                return View("Index");
            }
        }
    }
}
