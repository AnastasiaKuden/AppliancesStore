namespace AppliancesStore.API.Models.Output
{
	public class AppliancesShortcutOutputModel
	{
		public int Id { get; set; }
		public string Category { get; set; }
		public string Model { get; set; }
		public string Company { get; set; }
		public string Country { get; set; }
		public int ProductionYear { get; set; }
		public string Color { get; set; }
		public decimal Price { get; set; }
		public bool IsDeleted { get; set; }
	}
}
