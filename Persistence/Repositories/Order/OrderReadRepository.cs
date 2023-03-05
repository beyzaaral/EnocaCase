using EnocaCase.Application.Repositories;
using EnocaCase.Domain.Entities;
using EnocaCase.Persistence.Contexts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnocaCase.Persistence.Repositories
{
    public class OrderReadRepository : ReadRepository<Order>, IOrderReadRepository
    {
        public OrderReadRepository(EnocaCaseAPIDbContext context) : base(context)
        {
        }
    }
}
