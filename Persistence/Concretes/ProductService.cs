
using EnocaCase.Application;
using EnocaCase.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnocaCase.Persistence.Concretes
{
    public class ProductService : IProductService
    {
        public List<Product> GetProducts()
           => new()
           {
           };
    }
}
