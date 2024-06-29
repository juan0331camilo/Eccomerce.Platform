﻿namespace Ecommerce.Application.DTOs
{
    public class CartItemDTO
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }
        public decimal Subtotal => Quantity * Price;
    }
}
