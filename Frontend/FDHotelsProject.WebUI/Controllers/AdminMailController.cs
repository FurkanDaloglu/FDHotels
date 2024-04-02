using FDHotelsProject.WebUI.Models.Mail;
using MailKit.Net.Smtp;
using Microsoft.AspNetCore.Mvc;
using MimeKit;


namespace FDHotelsProject.WebUI.Controllers
{
    public class AdminMailController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Index(AdminMailViewModel adminMailViewModel)
        {
            MimeMessage mimeMessage = new();
            MailboxAddress mailboxAddressFrom = new("FDHotelAdmin", "buraya mailin gönderileceği yazılacak");
            mimeMessage.From.Add(mailboxAddressFrom);

            MailboxAddress mailboxAddressTo = new("User", adminMailViewModel.ReceiverMail);
            mimeMessage.To.Add(mailboxAddressTo);

            var bodyBuilder=new BodyBuilder();
            bodyBuilder.TextBody= adminMailViewModel.Body;
            mimeMessage.Body = bodyBuilder.ToMessageBody();

            mimeMessage.Subject= adminMailViewModel.Subject;

            SmtpClient client = new();
            client.Connect("smtp.gmail.com", 587, false);
            client.Authenticate("gönderen mail", "alınan password key");
            client.Send(mimeMessage);
            client.Disconnect(true);
            return View();
        }
    }
}
