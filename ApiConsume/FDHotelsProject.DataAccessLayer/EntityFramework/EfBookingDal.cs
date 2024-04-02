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
    public class EfBookingDal : GenericRepository<Booking>, IBookingDal
    {
        public EfBookingDal(FDHotelsProjectContext context) : base(context)
        {
        }

        public int GetBookingCount()
        {
            var context = new FDHotelsProjectContext();
            var value = context.Bookings.Count();
            return value;
        }

        public List<Booking> Last6Bookings()
        {
            var context= new FDHotelsProjectContext();
            var value = context.Bookings.OrderByDescending(x => x.BookingID).Take(6).ToList();
            return value;
        }

        public void BookingStatusChangeApproved(int id)
        {
            var context = new FDHotelsProjectContext();
            var value=context.Bookings.Find(id);
            value.Status = "Onaylandı";
            context.SaveChanges();
        }

        public void BookingStatusChangeCancel(int id)
        {
            var context = new FDHotelsProjectContext();
            var value = context.Bookings.Find(id);
            value.Status = "İptal Edildi";
            context.SaveChanges();
        }

        public void BookingStatusChangeWait(int id)
        {
            var context = new FDHotelsProjectContext();
            var value = context.Bookings.Find(id);
            value.Status = "Müşteri Aranacak";
            context.SaveChanges();
        }
    }
}
