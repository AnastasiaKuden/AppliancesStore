namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels
{
    public class IronsOutputModel : AppliancesShortcutOutputModel
    {
        public decimal Weight { get; set; }
        public int Power { get; set; }
        public byte NumberOfPrograms { get; set; }
        public byte Nozzle { get; set; }
        public int WaterTankVolume { get; set; }
        public bool ScaleProtection { get; set; }
    }
}
