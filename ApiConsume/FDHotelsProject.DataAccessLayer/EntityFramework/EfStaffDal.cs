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
    public class EfStaffDal : GenericRepository<Staff>, IStaffDal
    {
        public EfStaffDal(FDHotelsProjectContext context) : base(context)
        {
        }

        public int GetStaffCount()
        {
            var context=new FDHotelsProjectContext();
            var value = context.Staff.Count();
            return value;
        }
        public List<Staff> Last4Staff()
        {
            var context = new FDHotelsProjectContext();
            var values = context.Staff.OrderByDescending(x => x.StaffID).Take(4).ToList();
            return values;
        }
    }
}
