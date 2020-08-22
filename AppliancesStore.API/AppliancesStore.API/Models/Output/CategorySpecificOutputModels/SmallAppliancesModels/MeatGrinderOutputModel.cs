namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels
{
    public class MeatGrinderOutputModel : AppliancesShortcutOutputModel
    {
        public decimal Width { get; set; }
        public decimal Height { get; set; }
        public decimal Depth { get; set; }
        public decimal Weight { get; set; }
        public int Power { get; set; }
        public byte Nozzle { get; set; }
        public bool Juicer { get; set; }
    }
}
