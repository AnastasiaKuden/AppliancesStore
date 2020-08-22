namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class DishwashersOutputModel : LargeAppliancesOutputModel
    {
        public byte NumberOfPrograms { get; set; }
        public string EnergyClass { get; set; }
        public bool RemoteStart { get; set; }
        public byte NoiseLevel { get; set; }
        public string TypeOfInstallation { get; set; }
        public byte Capacity { get; set; }
        public string Drying { get; set; }
        public string ControlType { get; set; }
        public bool FloorIndication { get; set; }
        public bool IntensiveWash { get; set; }
    }
}
