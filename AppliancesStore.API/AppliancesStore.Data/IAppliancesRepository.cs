using HouseholdAppliancesStore.Data.DTO;
using System.Collections.Generic;

namespace AppliancesStore.Data
{
    public interface IAppliancesRepository
    {
        DataWrapper<List<AppliancesDto>> GetAllProducts();
        DataWrapper<List<AppliancesDto>> GetAllDeletedProducts();
        DataWrapper<List<AppliancesDto>> GetProductsByCategoryId(byte categoryId);
        DataWrapper<AppliancesDto> GetProductById(int id);
        DataWrapper<AppliancesDto> AddProduct(AppliancesDto appliancesDto);
        DataWrapper<AppliancesDto> UpdatePriceByProductId(int Id, decimal? price);
        DataWrapper<int> DeleteOrRestoreProductById(int id);
        DataWrapper<int> CheckModelAvailability(string model);
    }
}
