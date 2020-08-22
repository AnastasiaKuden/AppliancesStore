using HouseholdAppliancesStore.Data.DTO;
using System.Collections.Generic;

namespace AppliancesStore.Data
{
    public interface IOrderRepository
    {
        DataWrapper<List<OrderDto>> GetNotProcessedOrders();
        DataWrapper<List<OrderDto>> GetNotIssuedOrders();
        DataWrapper<List<OrderDto>> GetCompletedOrders();
        DataWrapper<OrderDto> CreateOrder(OrderDto orderDto);
        void AddProductsInOrder(ProductsInOrderDto products);
        DataWrapper<long> AddOrderInformation(OrderDto orderDto);
        DataWrapper<OrderDto> GetOrderById(long id);
        void MarkTheOrderAsProcessedById(long id);
        void MarkTheOrderAsIssuedById(long id);
    }
}
