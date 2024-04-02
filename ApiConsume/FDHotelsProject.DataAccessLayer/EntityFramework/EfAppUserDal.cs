using FDHotelsProject.DataAccessLayer.Abstract;
using FDHotelsProject.DataAccessLayer.Concrete;
using FDHotelsProject.DataAccessLayer.Repositories;
using FDHotelsProject.EntityLayer.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDHotelsProject.DataAccessLayer.EntityFramework
{
    public class EfAppUserDal : GenericRepository<AppUser>, IAppUserDal
    {
        public EfAppUserDal(FDHotelsProjectContext context) : base(context)
        {
        }

        public int AppUserCount()
        {
            var context = new FDHotelsProjectContext();
            var value = context.Users.Count();
            return value;
        }

        public List<AppUser> UserListWithWorkLocation()
        {
            var context = new FDHotelsProjectContext();
            return context.Users.Include(x => x.WorkLocation).ToList();
        }

        public List<AppUser> UsersListWithWorkLocations()
        {
            var context = new FDHotelsProjectContext();
            //var values = context.Users.Include(x => x.WorkLocation).Select(y => new AppUserWithWorkLocationDto
            //{
            //    Name = y.Name,
            //    Surname = y.Surname,
            //    WorkLocationID = y.WorkLocationID,
            //    WorkLocationName = y.WorkLocation.WorkLocationName
            //});
            var values = context.Users.ToList();
            return values.ToList();
        }
    }
}
