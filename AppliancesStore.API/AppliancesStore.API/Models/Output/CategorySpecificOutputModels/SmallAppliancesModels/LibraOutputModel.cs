namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels
{
    public class LibraOutputModel : AppliancesShortcutOutputModel
    {
        public decimal Width { get; set; }
        public decimal Height { get; set; }
        public decimal Depth { get; set; }
        public decimal Weight { get; set; }
        public int WeightLimit { get; set; }
        public decimal MeasurementAccuracy { get; set; }
    }
}
