namespace AppliancesStore.API.Models.Output
{
    public class OrderShortcutOutputModel
    {
        public long Id { get; set; }
        public string Date { get; set; }
        public decimal TotalAmount { get; set; }
        public bool CourierDelivery { get; set; }
        public bool Processed { get; set; }
        public bool IssuedBy { get; set; }
    }
}
