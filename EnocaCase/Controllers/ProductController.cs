﻿using EnocaCase.Application.Repositories;
using EnocaCase.Application.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace EnocaCase.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        readonly private IProductWriteRepository _productWriteRepository;
        readonly private IProductReadRepository _productReadRepository;

        public ProductsController(IProductWriteRepository productWriteRepository, IProductReadRepository productReadRepository)
        {
            _productWriteRepository = productWriteRepository;
            _productReadRepository = productReadRepository;
        }

        /*[HttpGet]
        public async Task<IActionResult> Get()
        {

            return Ok(_productReadRepository.GetAll());
        }*/

        [HttpPost]
        public async Task<IActionResult> Post(CreateProduct model)
        {
            await _productWriteRepository.AddAsync(new()
            {

                Name = model.Name,
                CompanyId = model.CompanyId,
                Stock = model.Stock,
                Price = model.Price,
                ProductName = model.ProductName,
                CreatedDate = model.CreatedDate,

            });
            await _productWriteRepository.SaveAsync();
            return StatusCode((int)HttpStatusCode.Created);
        }

    }
}
