namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels
{
    public class HairDryersOutputModel : AppliancesShortcutOutputModel
    {
        public decimal Weight { get; set; }
        public int Power { get; set; }
        public byte NumberOfPrograms { get; set; }
        public byte Nozzle { get; set; }
        public bool Ionization { get; set; }
        public bool FoldingHandle { get; set; }
    }
}
