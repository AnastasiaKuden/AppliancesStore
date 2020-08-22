namespace AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels
{
	public class WashingMachinesOutputModel : LargeAppliancesOutputModel
	{
		public string EnergyClass { get; set; }
		public string TypeOfInstallation { get; set; }
		public byte Capacity { get; set; }
		public string Drying { get; set; }
		public int MaximumSpinSpeed { get; set; }
	}
}
