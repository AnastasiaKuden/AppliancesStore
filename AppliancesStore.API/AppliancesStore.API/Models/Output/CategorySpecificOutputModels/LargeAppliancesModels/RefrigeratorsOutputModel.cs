using HouseholdAppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels;

namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class RefrigeratorsOutputModel : LargeAppliancesOutputModel
    {
        public string EnergyClass { get; set; }
        public decimal Volume { get; set; }
        public byte NoiseLevel { get; set; }
        public bool Freezer { get; set; }
        public string DefrostingCameras { get; set; }
        public byte NumberOfChambers { get; set; }
    }
}
