﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnocaCase.Domain.Entities
{
    public class Order : BaseEntity
    {
        public int CompanyId { get; set; }
        public int ProductId { get; set; }
        public string OrdersName { get; set; }
        public DateTime OrderDate { get; set; }

        public ICollection<Product> Products { get; set; }
        //public Company Company { get; set; }

        public ICollection<Company> Companies { get; set; }

        //public Product Product { get; set; }
    }
}
