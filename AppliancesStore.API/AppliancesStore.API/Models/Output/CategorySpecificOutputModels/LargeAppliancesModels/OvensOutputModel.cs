using HouseholdAppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels;

namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class OvensOutputModel : LargeAppliancesOutputModel
    {
        public byte NumberOfPrograms { get; set; }
        public bool Grill { get; set; }
        public decimal Volume { get; set; }
        public string EnergyClass { get; set; }
        public string Switches { get; set; }
        public string TypeOfInstallation { get; set; }
        public bool Convection { get; set; }
        public bool MicrowaveFunction { get; set; }
        public int MaximumTemperature { get; set; }
    }
}
