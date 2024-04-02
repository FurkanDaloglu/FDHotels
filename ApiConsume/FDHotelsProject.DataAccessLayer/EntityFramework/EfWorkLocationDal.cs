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
    public class EfWorkLocationDal : GenericRepository<WorkLocation>, IWorkLocationDal
    {
        public EfWorkLocationDal(FDHotelsProjectContext context) : base(context)
        {
        }
    }
}
