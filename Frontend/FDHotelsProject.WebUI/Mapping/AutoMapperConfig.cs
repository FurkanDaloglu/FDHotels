using AutoMapper;
using FDHotelsProject.EntityLayer.Concrete;
using FDHotelsProject.WebUI.Dtos.AboutDto;
using FDHotelsProject.WebUI.Dtos.AppUserDto;
using FDHotelsProject.WebUI.Dtos.BookingDto;
using FDHotelsProject.WebUI.Dtos.ContactDto;
using FDHotelsProject.WebUI.Dtos.GuestDto;
using FDHotelsProject.WebUI.Dtos.LoginDto;
using FDHotelsProject.WebUI.Dtos.RegisterDto;
using FDHotelsProject.WebUI.Dtos.RoomDto;
using FDHotelsProject.WebUI.Dtos.ServiceDto;
using FDHotelsProject.WebUI.Dtos.StaffDto;
using FDHotelsProject.WebUI.Dtos.SubscribeDto;
using FDHotelsProject.WebUI.Dtos.TestimonialDto;
using FDHotelsProject.WebUI.Dtos.WorkLocationDto;

namespace FDHotelsProject.WebUI.Mapping
{
    public class AutoMapperConfig:Profile
    {
        public AutoMapperConfig()
        {
            CreateMap<ResultServiceDto,Service>().ReverseMap();
            CreateMap<UpdateServiceDto,Service>().ReverseMap();
            CreateMap<CreateServiceDto,Service>().ReverseMap();

            CreateMap<CreateNewUserDto, AppUser>().ReverseMap();
            CreateMap<LoginUserDto, AppUser>().ReverseMap();

            CreateMap<ResultAboutDto, About>().ReverseMap();
            CreateMap<UpdateAboutDto, About>().ReverseMap();

            CreateMap<ResultTestimonialDto, Testimonial>().ReverseMap();

            CreateMap<ResultStaffDto, Staff>().ReverseMap();

            CreateMap<CreateSubscribeDto, Subscribe>().ReverseMap();

            CreateMap<CreateBookingDto, Booking>().ReverseMap();
            CreateMap<ApprovedReservationDto, Booking>().ReverseMap();

            CreateMap<ResultRoomDto, Room>().ReverseMap();
            CreateMap<CreateRoomDto, Room>().ReverseMap();
            CreateMap<UpdateRoomDto, Room>().ReverseMap();

            CreateMap<CreateGuestDto, Guest>().ReverseMap();
            CreateMap<UpdateGuestDto, Guest>().ReverseMap();

            CreateMap<CreateContactDto, Contact>().ReverseMap();

            CreateMap<CreateWorkLocationDto, WorkLocation>().ReverseMap();

            CreateMap<ResultAppUserDto, AppUser>().ReverseMap();




        }
    }
}
