
using EnocaCase.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnocaCase.Application
{
    public interface IProductService
    {
        List<Product> GetProducts();
    }
}
