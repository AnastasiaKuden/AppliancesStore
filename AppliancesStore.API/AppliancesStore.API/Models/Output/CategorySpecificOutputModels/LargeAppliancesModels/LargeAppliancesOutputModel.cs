namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class LargeAppliancesOutputModel : AppliancesShortcutOutputModel
    {
        public decimal Width { get; set; }
        public decimal Height { get; set; }
        public decimal Depth { get; set; }
        public decimal Weight { get; set; }
        public int Power { get; set; }
    }
}
