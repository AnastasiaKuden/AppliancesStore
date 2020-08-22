namespace AppliancesStore.Data.StorageProcedures
{
    internal static class OrderSP
    {
        public const string OrderWithProductsGetById = "OrderWithProducts_GetById";
        public const string OrderCreate = "Order_Create";
        public const string ProductsPutInOrder = "Order_PutProductIn";
        public const string OrderMarkAsProcessed = "Order_MarkAsProcessed";
        public const string OrderMarkAsIssued = "Order_MarkAsIssued";
        public const string OrdersGetAllNotProcessed = "Order_GetAllNotProcessed";
        public const string OrdersGetAllNotIssued = "Order_GetAllNotIssued";
        public const string OrdersGetAllCompleted = "Order_GetCompleted";
    }
}
