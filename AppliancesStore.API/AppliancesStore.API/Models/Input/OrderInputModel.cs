using System.Collections.Generic;

namespace AppliancesStore.API.Models.Input
{
    public class OrderInputModel
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public bool? CourierDelivery { get; set; }
        public string Address { get; set; }
        public List<ProductsToPutInOrder> Products { get; set; }
    }

    public class ProductsToPutInOrder
    {
        public int ProductId { get; set; }
        public byte Quantity { get; set; }
    }
}
