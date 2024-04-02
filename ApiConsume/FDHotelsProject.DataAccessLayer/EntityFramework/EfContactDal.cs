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
    public class EfContactDal:GenericRepository<Contact>,IContactDal
    {
        public EfContactDal(FDHotelsProjectContext context) : base(context)
        {
        }

        public int GetContactCount()
        {
            var context = new FDHotelsProjectContext();
            var value = context.Contacts.Count();
            return value;
        }
    }
}
