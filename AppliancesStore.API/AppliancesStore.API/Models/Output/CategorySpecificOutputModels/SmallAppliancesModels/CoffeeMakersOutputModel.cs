namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels
{
    public class CoffeeMakersOutputModel : AppliancesShortcutOutputModel
    {
        public decimal Width { get; set; }
        public decimal Height { get; set; }
        public decimal Depth { get; set; }
        public decimal Weight { get; set; }
        public int Power { get; set; }
        public byte NumberOfPrograms { get; set; }
        public decimal Volume { get; set; }
        public string ControlType { get; set; }
        public string TypeOfCoffeeUsed { get; set; }
        public byte PumpPressure { get; set; }
        public bool IntegratedCoffeeGrinder { get; set; }
    }
}
