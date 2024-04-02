using FDHotelsProject.EntityLayer.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDHotelsProjectBusinessLayer.Abstract
{
    public interface IAppUserService:IGenericService<AppUser>
    {
        List<AppUser> TUserListWithWorkLocation();
        List<AppUser> TUsersListWithWorkLocations();
        int TAppUserCount();
    }
}
