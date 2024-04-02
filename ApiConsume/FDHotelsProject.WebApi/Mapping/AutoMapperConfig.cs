using AutoMapper;
using FDHotelsProject.DtoLayer.Dtos.RoomDto;
using FDHotelsProject.EntityLayer.Concrete;

namespace FDHotelsProject.WebApi.Mapping
{
    public class AutoMapperConfig:Profile
    {
        public AutoMapperConfig()
        {
            CreateMap<RoomAddDto, Room>().ReverseMap();

            CreateMap<UpdateRoomDto, Room>().ReverseMap();
        }
    }
}
