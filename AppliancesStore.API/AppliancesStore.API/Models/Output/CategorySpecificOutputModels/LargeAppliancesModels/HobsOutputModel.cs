using HouseholdAppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels;

namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class HobsOutputModel : LargeAppliancesOutputModel
    {
        public string Switches { get; set; }
        public string TypeOfInstallation { get; set; }
        public byte NumberOfBurners { get; set; }
        public string PanelMaterial { get; set; }
    }
}
