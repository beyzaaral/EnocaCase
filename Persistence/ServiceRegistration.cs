
using Microsoft.Extensions.DependencyInjection;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.EntityFrameworkCore;
using EnocaCase.Persistence.Contexts;
using EnocaCase.Application.Repositories;
using EnocaCase.Persistence.Repositories;

namespace EnocaCase.Persistence
{
    public static class ServiceRegistration
    {
        public static void AddPersistenceServices(this IServiceCollection services)
        {
            //services.AddDbContext<FirmaSiparisAPIDbContext>(options => options.UseSqlServer("Server=DESKTOP-90EA4VD;Database=EnocaChallangeAPIDb;Trusted_Connection=True;TrustServerCertificate=True;"));
            services.AddDbContext<EnocaCaseAPIDbContext>(options => options.UseSqlServer(Configuration.ConnectionString), ServiceLifetime.Singleton);
            services.AddScoped<ICompanyReadRepository, CompanyReadRepository>();
            services.AddScoped<ICompanyWriteRepository, CompanyWriteRepository>();
            services.AddScoped<IOrderReadRepository, OrderReadRepository>();
            services.AddScoped<IOrderWriteRepository, OrderWriteRepository>();
            services.AddScoped<IProductReadRepository, ProductReadRepository>();
            services.AddScoped<IProductWriteRepository, ProductWriteRepository>();
        }
    }
}
