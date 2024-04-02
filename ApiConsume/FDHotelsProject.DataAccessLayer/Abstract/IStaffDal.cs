using FDHotelsProject.EntityLayer.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDHotelsProject.DataAccessLayer.Abstract
{
    public interface IStaffDal:IGenericDal<Staff>
    {
        int GetStaffCount();
        List<Staff> Last4Staff();
    }
}
