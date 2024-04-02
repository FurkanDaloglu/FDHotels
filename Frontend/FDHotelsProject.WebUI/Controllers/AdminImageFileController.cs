using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Net.Http.Headers;

namespace FDHotelsProject.WebUI.Controllers
{
    public class AdminImageFileController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Index(IFormFile file)
        {
            var stream = new MemoryStream();
            await file.CopyToAsync(stream);
            var bytes =stream.ToArray();

            ByteArrayContent byteArrayContent = new(bytes);
            byteArrayContent.Headers.ContentType = new MediaTypeHeaderValue(file.ContentType);
            MultipartFormDataContent multipartFormDataContent = new();
            multipartFormDataContent.Add(byteArrayContent, "file", file.FileName);
            var httpclient=new HttpClient();
            var responseMessage = await httpclient.PostAsync("http://localhost:65023/api/FileImage", multipartFormDataContent);
            if(responseMessage.IsSuccessStatusCode)
            {
                return RedirectToAction("Index", "Guest");
            }
            return View();
        }
    }
}
