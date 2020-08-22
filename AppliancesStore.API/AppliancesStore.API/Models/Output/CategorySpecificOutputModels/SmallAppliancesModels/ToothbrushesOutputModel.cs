namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels
{
    public class ToothbrushesOutputModel : AppliancesShortcutOutputModel
    {
        public byte Nozzle { get; set; }
        public int BatteryLife { get; set; }
        public string UserAge { get; set; }
        public long NumberOfPulsations { get; set; }
    }
}
