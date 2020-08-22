using HouseholdAppliancesStore.Core;
using HouseholdAppliancesStore.Data.DTO;
using Microsoft.Extensions.Options;
using System.Data;
using System.Data.SqlClient;
using Dapper;
using System;
using System.Linq;
using System.Collections.Generic;
using HouseholdAppliancesStore.Data.StorageProcedures;

namespace AppliancesStore.Data
{
    public class AppliancesRepository : IAppliancesRepository
    {
        private readonly IDbConnection _connection;
        Categorization categorization;

        public AppliancesRepository(IOptions<DatabaseOptions> options)
        {
            _connection = new SqlConnection(options.Value.DBConnectionString);
            categorization = new Categorization();
        }

        public DataWrapper<List<AppliancesDto>> GetAllProducts()
        {
            var result = new DataWrapper<List<AppliancesDto>>();
            try
            {
                var allProducts = _connection.Query<AppliancesDto>(AppliancesSP.AppliancesGetAll).ToList();
                result.Data = categorization.PutDownCategoriesToProducts(allProducts);
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<List<AppliancesDto>> GetAllDeletedProducts()
        {
            var result = new DataWrapper<List<AppliancesDto>>();
            try
            {
                var allProducts = _connection.Query<AppliancesDto>(AppliancesSP.AppliancesGetAllRemote).ToList();
                result.Data = categorization.PutDownCategoriesToProducts(allProducts);
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<List<AppliancesDto>> GetProductsByCategoryId(byte categoryId)
        {
            var result = new DataWrapper<List<AppliancesDto>>();
            try
            {
                var allProducts = GetAllProducts().Data;
                result.Data = allProducts.Where(r => r.CategoryId == categoryId).ToList();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<AppliancesDto> GetProductById(int id)
        {
            var result = new DataWrapper<AppliancesDto>();
            try
            {
                var product = _connection.Query<AppliancesDto>(
                    AppliancesSP.AppliancesGetById, new { id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
                result.Data = categorization.PutDownCategoriesToProducts(new List<AppliancesDto>() { product }).FirstOrDefault();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<AppliancesDto> AddProduct(AppliancesDto appliancesDto)
        {
            var result = new DataWrapper<AppliancesDto>();
            try
            {
                var product = _connection.Query<AppliancesDto>(AppliancesSP.AppliancesAdd, appliancesDto, commandType: CommandType.StoredProcedure).FirstOrDefault();
                result.Data = categorization.PutDownCategoriesToProducts(new List<AppliancesDto>() { product }).FirstOrDefault();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<AppliancesDto> UpdatePriceByProductId(int Id, decimal? price)
        {
            var result = new DataWrapper<AppliancesDto>();
            try
            {
                var product = _connection.Query<AppliancesDto>(AppliancesSP.AppliancesUpdatePrice, new { Id, price }, commandType: CommandType.StoredProcedure).FirstOrDefault();
                result.Data = categorization.PutDownCategoriesToProducts(new List<AppliancesDto>() { product }).FirstOrDefault();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<int> DeleteOrRestoreProductById(int id)
        {
            var result = new DataWrapper<int>();
            try
            {
                result.Data = _connection.Query<int>(AppliancesSP.AppliancesDeleteOrRestore, new { id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }

        public DataWrapper<int> CheckModelAvailability(string model)
        {
            var result = new DataWrapper<int>();
            try
            {
                result.Data = _connection.Query<int>(AppliancesSP.AppliancesFindByModelName, new { model }, commandType: CommandType.StoredProcedure).FirstOrDefault();
                result.IsOk = true;
            }
            catch (Exception e)
            {
                result.ExceptionMessage = e.Message;
            }
            return result;
        }
    }
}
