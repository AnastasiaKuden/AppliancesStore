using AppliancesStore.API.Models.Input;
using AppliancesStore.API.Models.Output;
using AppliancesStore.API.Validators;
using AppliancesStore.Data;
using AppliancesStore.Data.DTO;
using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace AppliancesStore.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class OrderController : MakeResponseWrapper
    {
        private readonly IOrderRepository _repo;
        private readonly OrderValidator _validator;

        public OrderController(IOrderRepository repo, IMapper mapper) : base(mapper)
        {
            _repo = repo;
            _validator = new OrderValidator();
        }

        /// <summary>
        /// Gets all new orders, which are not processed
        /// </summary>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpGet]
        public ActionResult<List<OrderOutputModel>> GetAllNewOrders()
        {
            var dataWrapper = _repo.GetNotProcessedOrders();
            return MakeResponse(dataWrapper, _mapper.Map<List<OrderOutputModel>>);
        }

        /// <summary>
        /// Gets all processed and not issued orders
        /// </summary>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpGet("processed")]
        public ActionResult<List<OrderOutputModel>> GetAllProcessedOrders()
        {
            var dataWrapper = _repo.GetNotIssuedOrders();
            return MakeResponse(dataWrapper, _mapper.Map<List<OrderOutputModel>>);
        }

        /// <summary>
        /// Get all completed orders
        /// </summary>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpGet("completed")]
        public ActionResult<List<OrderOutputModel>> GetAllCompletedOrders()
        {
            var dataWrapper = _repo.GetCompletedOrders();
            return MakeResponse(dataWrapper, _mapper.Map<List<OrderOutputModel>>);
        }

        /// <summary>
        /// Gets order by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpGet("{id}")]
        public ActionResult<OrderOutputModel> GetOrderById(int id)
        {
            var dataWrapper = _repo.GetOrderById(id);
            return MakeResponse(dataWrapper, _mapper.Map<OrderOutputModel>);
        }

        /// <summary>
        /// Creates new order
        /// </summary>
        /// <param name="inputModel"></param>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [HttpPost]
        public ActionResult<OrderOutputModel> CreateOrder(OrderInputModel inputModel)
        {
            var validationResult = _validator.CheckOrderInputModel(inputModel);
            if (!string.IsNullOrWhiteSpace(validationResult)) return BadRequest(validationResult);
            var dataWrapper = _repo.CreateOrder(_mapper.Map<OrderDto>(inputModel));
            return MakeResponse(dataWrapper, _mapper.Map<OrderOutputModel>);
        }

        /// <summary>
        /// Marks the order as processed by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status201Created)]
        [HttpPut("{id}/processed")]
        public ActionResult MarkTheOrderAsProcessedById(long id)
        {
            _repo.MarkTheOrderAsProcessedById(id);
            return Ok("Order has been successfully marked as processed");
        }

        /// <summary>
        /// Marks the order as issued by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status201Created)]
        [HttpPut("{id}/issued")]
        public ActionResult MarkTheOrderAsIssuedById(long id)
        {
            _repo.MarkTheOrderAsIssuedById(id);
            return Ok("Order has been successfully marked as issued");
        }
    }
}
