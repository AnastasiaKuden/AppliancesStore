using System.Collections.Generic;

namespace AppliancesStore.API.Models.Output
{
    public class OrderOutputModel : OrderShortcutOutputModel
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public List<ProductsInOrder> Products { get; set; }
    }

    public class ProductsInOrder
    {
        public int ProductId { get; set; }
        public string Model { get; set; }
        public decimal Price { get; set; }
        public byte Quantity { get; set; }
        public decimal Amount { get; set; }
    }
}
