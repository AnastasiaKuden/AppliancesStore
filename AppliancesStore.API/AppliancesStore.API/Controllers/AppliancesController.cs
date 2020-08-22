using HouseholdAppliancesStore.Data.DTO;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace AppliancesStore.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AppliancesController : MakeResponseWrapper
    {
        private readonly IAppliancesRepository _repo;
        private readonly AppliancesValidator _validator;

        public AppliancesController(IAppliancesRepository repo, IMapper mapper) : base(mapper)
        {
            _repo = repo;
            _validator = new AppliancesValidator(_repo);
        }

        /// <summary>
        /// Gets all appliances with short info
        /// </summary>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpGet]
        public ActionResult<List<AppliancesShortcutOutputModel>> GetAllProducts()
        {
            var dataWrapper = _repo.GetAllProducts();
            return MakeResponse(dataWrapper, _mapper.Map<List<AppliancesShortcutOutputModel>>);
        }

        /// <summary>
        /// Gets all deleted appliances with short info
        /// </summary>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpGet("remote")]
        public ActionResult<List<AppliancesShortcutOutputModel>> GetAllDeletedProducts()
        {
            var dataWrapper = _repo.GetAllDeletedProducts();
            return MakeResponse(dataWrapper, _mapper.Map<List<AppliancesShortcutOutputModel>>);
        }

        /// <summary>
        /// Gets household appliances of a specific category
        /// </summary>
        /// <param name="categoryId"></param>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpGet("category/{categoryId}")]
        public ActionResult<List<AppliancesShortcutOutputModel>> GetProductsByCategory(byte categoryId)
        {
            var dataWrapper = _repo.GetProductsByCategoryId(categoryId);
            return MakeResponse(dataWrapper);
        }

        /// <summary>
        /// Gets product by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpGet("{id}")]
        public ActionResult<AppliancesShortcutOutputModel> GetProductById(int id)
        {
            var dataWrapper = _repo.GetProductById(id);
            return MakeResponse(dataWrapper);
        }

        /// <summary>
        /// Adds new product 
        /// </summary>
        /// <param name="inputModel"></param>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [HttpPost]
        public ActionResult<AppliancesShortcutOutputModel> AddNewProduct(AppliancesInputModel inputModel)
        {

            var validationResult = _validator.CheckAppliancesInputModel(inputModel);
            if (!string.IsNullOrWhiteSpace(validationResult)) return BadRequest(validationResult);
            var dataWrapper = _repo.AddProduct(_mapper.Map<AppliancesDto>(inputModel));
            return MakeResponse(dataWrapper);
        }

        /// <summary>
        /// Updates product's price by productId
        /// </summary>
        /// <param name="productId"></param>
        /// <param name="price"></param>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [HttpPut("{id}/price")]
        public ActionResult<AppliancesShortcutOutputModel> UpdatePriceByProductId(int id, [FromBody] decimal? price)
        {
            if (price == null) return BadRequest("Enter the price");
            var dataWrapper = _repo.UpdatePriceByProductId(id, price);
            return MakeResponse(dataWrapper);
        }

        /// <summary>
        /// Deletes product or removes it from deleted by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ProducesResponseType(StatusCodes.Status200OK)]
        [HttpDelete("{id}")]
        public ActionResult DeleteOrRestoreProductById(int id)
        {
            var result = _repo.DeleteOrRestoreProductById(id);
            if (result.Data == 1)
                return Ok("Successfully deleted");
            else
                return Ok("Successfully restored");
        }
    }
}

