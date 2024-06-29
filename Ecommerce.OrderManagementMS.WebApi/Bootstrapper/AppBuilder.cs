﻿namespace Ecommerce.OrderManagementMS.WebApi.Bootstrapper
{
    using Ecommerce.Application.DTOs;
    using Ecommerce.Application.Interfaces;
    using Ecommerce.Application.Service;
    using Ecommerce.Application.Validators;
    using Ecommerce.Domain.Constants;
    using Ecommerce.Domain.Data;
    using FluentValidation;
    using Microsoft.EntityFrameworkCore;
    using Microsoft.Extensions.Caching.Memory;
    using Microsoft.OpenApi.Models;
    using System.Reflection;

    /// <summary>
    /// App Builder 
    /// </summary>
    public static class AppBuilder
    {
        /// <summary>
        /// Get App
        /// </summary>
        /// <param name="args"></param>
        /// <returns></returns>
        public static WebApplication GetApp(string[] args)
        {
            WebApplicationBuilder builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddHealthChecks();
            MemoryCache memoryCache = new(new MemoryCacheOptions { SizeLimit = CacheConstant.SizeLimit });
            builder.Services.AddSingleton<IMemoryCache>(memoryCache);
            builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
            builder.Services.AddDbContext<EcommerceContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("EcommerceContext")));

            builder.Services.AddSwaggerGen(options =>
            {
                options.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = "Order Management Service",
                    Description = "Should handle creating and listing orders.",
                    Contact = new OpenApiContact
                    {
                        Name = "Microsoft Learn",
                        Url = new Uri("https://learn.microsoft.com/")
                    }
                });

                string xmlFilename = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
                options.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory, xmlFilename));
            });

            // Services
            builder.Services.AddScoped<IOrderService, OrderService>();
            builder.Services.AddScoped<IOrderDetailService, OrderDetailService>();
            builder.Services.AddScoped<IValidator<OrderCreateDTO>, OrderCreateValidator>();

            // Logs
            builder.Logging.ClearProviders();

            WebApplication app = builder.Build();
            return app;
        }
    }
}
