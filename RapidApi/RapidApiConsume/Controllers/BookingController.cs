using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using RapidApiConsume.Models;
using System.Net.Http.Headers;
namespace RapidApiConsume.Controllers
{
    public class BookingController : Controller
    {
        public async Task<IActionResult> Index()
        {

            var client = new HttpClient();
            var request = new HttpRequestMessage
            {
                Method = HttpMethod.Get,
                RequestUri = new Uri("https://booking-com.p.rapidapi.com/v2/hotels/search?locale=en-gb&filter_by_currency=TRY&checkin_date=2024-03-24&dest_type=city&dest_id=-740501&adults_number=1&checkout_date=2024-03-27&order_by=popularity&room_number=1&units=metric&children_number=2&children_ages=5%2C0&categories_filter_ids=class%3A%3A2%2Cclass%3A%3A4%2Cfree_cancellation%3A%3A1&include_adjacency=true&page_number=0"),
                Headers =
    {
        { "X-RapidAPI-Key", "d1e9b288d2mshfec9d76caa16d2cp1eecd4jsn4bab8b8d906f" },
        { "X-RapidAPI-Host", "booking-com.p.rapidapi.com" },
    },
            };
            using (var response = await client.SendAsync(request))
            {
                response.EnsureSuccessStatusCode();
                var body = await response.Content.ReadAsStringAsync();
                var values=JsonConvert.DeserializeObject<BookingApiViewModel>(body);
                return View(values.results.ToList());
            }
        }
    }
}
