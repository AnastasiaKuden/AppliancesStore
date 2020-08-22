using HouseholdAppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels;

namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class RobotVacuumCleanersOutputModel : LargeAppliancesOutputModel
    {
        public int BatteryLife { get; set; }
        public bool WetCleaning { get; set; }
        public decimal DustContainerSize { get; set; }
        public byte Nozzle { get; set; }
        public byte NoiseLevel { get; set; }
        public string TypeOfSensors { get; set; }
        public bool RemoteStart { get; set; }
        public bool BuildingRoomMap { get; set; }
    }
}
