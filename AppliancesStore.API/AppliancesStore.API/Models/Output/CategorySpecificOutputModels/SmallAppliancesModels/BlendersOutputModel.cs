namespace HouseholdAppliancesStore.API.Models.Output.CategorySpecificOutputModels

namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels
{
    public class BlendersOutputModel : AppliancesShortcutOutputModel
    {
        public decimal Width { get; set; }
        public decimal Height { get; set; }
        public decimal Depth { get; set; }
        public decimal Weight { get; set; }
        public int Power { get; set; }
        public byte NumberOfPrograms { get; set; }
        public decimal Volume { get; set; }
        public bool WhiskForBeating { get; set; }
        public bool Chopper { get; set; }
        public bool TravelBottle { get; set; }
    }
}
