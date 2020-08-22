namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class AirConditionersOutputModel : LargeAppliancesOutputModel
    {
        public byte NumberOfPrograms { get; set; }
        public string EnergyClass { get; set; }
        public byte NoiseLevel { get; set; }
        public byte MaximumRoomArea { get; set; }
        public bool MultiSplitSystem { get; set; }
        public bool MotionDetector { get; set; }
    }
}
