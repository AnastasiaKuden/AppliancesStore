using HouseholdAppliancesStore.API.Models.Input;
using HouseholdAppliancesStore.Data;

namespace AppliancesStore.API.Validators
{
    public class AppliancesValidator
    {
        private readonly IAppliancesRepository _repo;
        public AppliancesValidator(IAppliancesRepository repo)
        {
            _repo = repo;
        }
        public string CheckAppliancesInputModel(AppliancesInputModel inputModel)
        {
            DataWrapper<int> dataWrapper;
            if (string.IsNullOrWhiteSpace(inputModel.Model)) return ("Enter the model name");
            dataWrapper = _repo.CheckModelAvailability(inputModel.Model);
            if (dataWrapper.Data != 0) return ("This model already exists, maybe it lies in remote");
            if (string.IsNullOrWhiteSpace(inputModel.Company)) return ("Enter the company name");
            if (string.IsNullOrWhiteSpace(inputModel.Country)) return ("Enter the country");
            if (inputModel.ProductionYear == null) return ("Enter the production year");
            if (inputModel.Price == null) return ("Enter the price");
            return "";
        }
    }
}
