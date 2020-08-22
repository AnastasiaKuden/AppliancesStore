using HouseholdAppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels;

namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class VacuumCleanersOutputModel : LargeAppliancesOutputModel
    {
        public bool WetCleaning { get; set; }
        public decimal DustContainerSize { get; set; }
        public string DustContainerType { get; set; }
        public byte Nozzle { get; set; }
        public string SuctionPipe { get; set; }
    }
}
