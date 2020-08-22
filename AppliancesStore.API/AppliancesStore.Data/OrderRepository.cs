using AppliancesStore.Core;
using AppliancesStore.Data.DTO;
using AppliancesStore.Data.StorageProcedures;
using Dapper;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace AppliancesStore.Data
{
    public class OrderRepository : IOrderRepository
    {
        private readonly IDbConnection _connection;

        public OrderRepository(IOptions<DatabaseOptions> options)
        {
            _connection = new SqlConnection(options.Value.DBConnectionString);
        }

        public DataWrapper<List<OrderDto>> GetNotProcessedOrders()
        {
            var result = new DataWrapper<List<OrderDto>>();
            try
            {
                result.Data = _connection.Query<OrderDto>(OrderSP.OrdersGetAllNotProcessed).ToList();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<List<OrderDto>> GetNotIssuedOrders()
        {
            var result = new DataWrapper<List<OrderDto>>();
            try
            {
                result.Data = _connection.Query<OrderDto>(OrderSP.OrdersGetAllNotIssued).ToList();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<List<OrderDto>> GetCompletedOrders()
        {
            var result = new DataWrapper<List<OrderDto>>();
            try
            {
                result.Data = _connection.Query<OrderDto>(OrderSP.OrdersGetAllCompleted).ToList();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<OrderDto> GetOrderById(long orderId)
        {
            var orderDictionary = new Dictionary<long, OrderDto>();
            var result = new DataWrapper<OrderDto>();
            try
            {
                result.Data = _connection.Query<OrderDto, ProductsInOrderDto, AppliancesDto, OrderDto>(
                    OrderSP.OrderWithProductsGetById,
                    (order, product, appliances) =>
                    {
                        OrderDto orderEntry;
                        if (!orderDictionary.TryGetValue(order.Id.Value, out orderEntry))
                        {
                            orderEntry = order;
                            orderEntry.Products = new List<ProductsInOrderDto>();
                            orderDictionary.Add(orderEntry.Id.Value, orderEntry);
                        }
                        product.Product = appliances;
                        product.Product.Model = appliances.Model;
                        product.Product.Price = appliances.Price;
                        orderEntry.Products.Add(product);
                        return orderEntry;
                    },
                    new { orderId },
                    splitOn: "ProductId, Model",
                    commandType: CommandType.StoredProcedure).FirstOrDefault();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<long> AddOrderInformation(OrderDto orderDto)
        {
            var result = new DataWrapper<long>();
            try
            {
                result.Data = _connection.Query<long>(OrderSP.OrderCreate,
                    new
                    {
                        orderDto.FirstName,
                        orderDto.LastName,
                        orderDto.Email,
                        orderDto.Phone,
                        orderDto.CourierDelivery,
                        orderDto.Address
                    },
                    commandType: CommandType.StoredProcedure).FirstOrDefault();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public void AddProductsInOrder(ProductsInOrderDto products)
        {
            _connection.Execute(OrderSP.ProductsPutInOrder,
                   new
                   {
                       products.OrderId,
                       products.ProductId,
                       products.Quantity
                   },
                   commandType: CommandType.StoredProcedure);
        }

        public DataWrapper<OrderDto> CreateOrder(OrderDto orderDto)
        {
            var result = new DataWrapper<OrderDto>();
            try
            {
                orderDto.Id = AddOrderInformation(orderDto).Data;
                foreach (var product in orderDto.Products)
                {
                    product.OrderId = orderDto.Id;
                    AddProductsInOrder(product);
                }
                result.Data = GetOrderById(orderDto.Id.Value).Data;
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public void MarkTheOrderAsProcessedById(long id)
        {
            _connection.Execute(OrderSP.OrderMarkAsProcessed, new { id }, commandType: CommandType.StoredProcedure);
        }

        public void MarkTheOrderAsIssuedById(long id)
        {
            _connection.Execute(OrderSP.OrderMarkAsIssued, new { id }, commandType: CommandType.StoredProcedure);
        }
    }
}
