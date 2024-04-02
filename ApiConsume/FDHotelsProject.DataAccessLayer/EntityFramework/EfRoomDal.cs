using FDHotelsProject.DataAccessLayer.Abstract;
using FDHotelsProject.DataAccessLayer.Concrete;
using FDHotelsProject.DataAccessLayer.Repositories;
using FDHotelsProject.EntityLayer.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDHotelsProject.DataAccessLayer.EntityFramework
{
    public class EfRoomDal : GenericRepository<Room>, IRoomDal
    {
        public EfRoomDal(FDHotelsProjectContext context) : base(context)
        {

        }

        public int RoomCount()
        {
            var context = new FDHotelsProjectContext();
            var value = context.Rooms.Count();
            return value;
        }
    }
}
