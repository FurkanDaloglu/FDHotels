using FDHotelsProject.EntityLayer.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDHotelsProjectBusinessLayer.Abstract
{
    public interface IBookingService:IGenericService<Booking>
    {
        int TGetBookingCount();
        List<Booking> TLast6Bookings();
        void TBookingStatusChangeApproved(int id);
        void TBookingStatusChangeCancel(int id);
        void TBookingStatusChangeWait(int id);
    }
}
