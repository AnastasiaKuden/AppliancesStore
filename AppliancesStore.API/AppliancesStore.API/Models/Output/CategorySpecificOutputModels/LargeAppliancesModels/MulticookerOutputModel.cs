using HouseholdAppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels;

namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
    public class MulticookerOutputModel : LargeAppliancesOutputModel
    {
        public byte NumberOfPrograms { get; set; }
        public decimal Volume { get; set; }
        public bool DelayedStart { get; set; }
        public string ControlType { get; set; }
        public string BowlCover { get; set; }
        public bool KeepingWarm { get; set; }
    }
}
