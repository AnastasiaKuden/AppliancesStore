namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels
{
    public class ElectricKettlesOutputModel : AppliancesShortcutOutputModel
    {
        public decimal Weight { get; set; }
        public int Power { get; set; }
        public decimal Volume { get; set; }
        public string BodyMaterial { get; set; }
        public string HeatingElementType { get; set; }
    }
}
