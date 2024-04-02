using FDHotelsProject.WebUI.Dtos.ContactDto;
using FDHotelsProject.WebUI.Dtos.SendMessageDto;
using FDHotelsProject.WebUI.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Text;

namespace FDHotelsProject.WebUI.Controllers
{
    public class AdminContactController : Controller
    {
        private readonly IHttpClientFactory _httpClientFactory;
        public AdminContactController(IHttpClientFactory httpClientFactory)
        {
            _httpClientFactory = httpClientFactory;
        }
        private async Task<(int,int)> GetCount()
        {
            var client = _httpClientFactory.CreateClient();

            var responseMessage2 = await client.GetAsync("http://localhost:65023/api/Contact/GetContactCount");
            var jsonData2 = await responseMessage2.Content.ReadAsStringAsync();
            var contactCount= int.Parse(jsonData2);

            var responseMessage3 = await client.GetAsync("http://localhost:65023/api/SendMessage/GetSendMessageCount");
            var jsonData3 = await responseMessage3.Content.ReadAsStringAsync();
            var sendMessageCount = int.Parse(jsonData3);
            return (contactCount, sendMessageCount);
        }
        public async Task<IActionResult> Inbox()
        {

            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync("http://localhost:65023/api/Contact");
            if (responseMessage.IsSuccessStatusCode)
            {
                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<List<InboxContactDto>>(jsonData);
                var (contactCount, sendMessageCount) = await GetCount();
                ViewBag.contactCount = contactCount;
                ViewBag.sendMessageCount = sendMessageCount;
                return View(values);
            }
            return View();
        }

        public async Task<IActionResult> Sendbox()
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync("http://localhost:65023/api/SendMessage");
            if (responseMessage.IsSuccessStatusCode)
            {

                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<List<ResultSendboxDto>>(jsonData);
                var (contactCount, sendMessageCount) = await GetCount();
                ViewBag.contactCount=contactCount;
                ViewBag.sendMessageCount=sendMessageCount;
                return View(values);
            }
            return View();
        }

        [HttpGet]
        public IActionResult AddSendMessage()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> AddSendMessage(CreateSendMessage createSendMessage)
        {
            createSendMessage.SenderMail = "FDadmin@gmail.com";
            createSendMessage.SenderName = "FDadmin";
            createSendMessage.Date = DateTime.Parse(DateTime.Now.ToShortDateString());
            var client = _httpClientFactory.CreateClient();
            var jsonData = JsonConvert.SerializeObject(createSendMessage);
            StringContent stringContent = new StringContent(jsonData, Encoding.UTF8, "application/json");
            var responseMessage = await client.PostAsync("http://localhost:65023/api/SendMessage", stringContent);
            if (responseMessage.IsSuccessStatusCode)
            {
                return RedirectToAction("SendBox");
            }
            return View();
        }

        public PartialViewResult SideBarAdminContactPartial()
        {
            return PartialView();
        }
        public PartialViewResult SideBarAdminContactCategoryPartial()
        {
            return PartialView();
        }

        public async Task<IActionResult> MessageDetailsBySendbox(int id)
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync($"http://localhost:65023/api/SendMessage/{id}");
            if (responseMessage.IsSuccessStatusCode)
            {
                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<GetMessageByIDDto>(jsonData);
                var (contactCount, sendMessageCount) = await GetCount();
                ViewBag.contactCount = contactCount;
                ViewBag.sendMessageCount = sendMessageCount;
                return View(values);
            }
            return View();
        }
        public async Task<IActionResult> MessageDetailsByInbox(int id)
        {

            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync($"http://localhost:65023/api/Contact/{id}");
            if (responseMessage.IsSuccessStatusCode)
            {
                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<InboxContactDto>(jsonData);
                var (contactCount, sendMessageCount) = await GetCount();
                ViewBag.contactCount = contactCount;
                ViewBag.sendMessageCount = sendMessageCount;
                return View(values);
            }
            return View();
        }
    }
}
