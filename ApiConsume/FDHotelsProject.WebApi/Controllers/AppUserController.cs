using FDHotelsProjectBusinessLayer.Abstract;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FDHotelsProject.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AppUserController : ControllerBase
    {
        private readonly IAppUserService _appUserService;
        public AppUserController(IAppUserService appUserService)
        {
            _appUserService = appUserService;
        }
        [HttpGet]
        public IActionResult AppUserList()
        {
            var values = _appUserService.TGetList();
            return Ok(values);
        }
        [HttpGet("UsersWithWorkLocations")]
        public IActionResult UsersWithWorkLocations()
        {
            var values = _appUserService.TUsersListWithWorkLocations();
            return Ok(values);
        }
    }
}
