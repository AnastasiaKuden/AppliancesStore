using System;
using System.Collections.Generic;

namespace AppliancesStore.Data.DTO
{
    public class OrderDto
    {
        public long? Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public bool CourierDelivery { get; set; }
        public string Address { get; set; }
        public decimal TotalAmount { get; set; }
        public DateTime Date { get; set; }
        public bool Processed { get; set; }
        public bool IssuedBy { get; set; }
        public List<ProductsInOrderDto> Products { get; set; }
    }

    public class ProductsInOrderDto
    {
        public long? Id { get; set; }
        public long? OrderId { get; set; }
        public int ProductId { get; set; }
        public byte Quantity { get; set; }
        public decimal Amount { get; set; }
        public AppliancesDto Product { get; set; }
    }
}
