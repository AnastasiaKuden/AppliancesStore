namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class HoodsOutputModel : LargeAppliancesOutputModel
    {
        public string TypeOfInstallation { get; set; }
        public string ControlType { get; set; }
        public string OperatingMode { get; set; }
        public string Filter { get; set; }
        public string TypeOfLighting { get; set; }
    }
}
