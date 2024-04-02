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
    public class EfSendMessageDal:GenericRepository<SendMessage>,ISendMessageDal
    {
        public EfSendMessageDal(FDHotelsProjectContext context) : base(context)
        {

        }

        public int GetSendMessageCount()
        {
            var context = new FDHotelsProjectContext();
            var value = context.SendMessages.Count();
            return value;
        }
    }
}
