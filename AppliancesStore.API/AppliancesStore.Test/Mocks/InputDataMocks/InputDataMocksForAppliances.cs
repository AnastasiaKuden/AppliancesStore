using AppliancesStore.API.Models.Input;

namespace AppliancesStore.Test.Mocks.InputDataMocks
{
    public class InputDataMocksForAppliances
    {
        public AppliancesInputModel GetAppliancesInputModelMock(int num)
        {
            return num switch
            {
                1 => new AppliancesInputModel()
                {
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",
                    Width = 33,
                    Height = 6,
                    Depth  = 33,
                    Weight = 3,
                    WeightLimit = 195,
                    MeasurementAccuracy = 0.98M
                },
                2 => new AppliancesInputModel()
                {
                    Model = "Tefal-CE1900",
                    Company = "Tefal",
                    Country = "Italy",
                    ProductionYear = 2019,
                    Price = 25000,
                    Color = "Black",
                    Width = 27,
                    Height = 28,
                    Depth = 26,
                    Weight = 4,
                    Power = 1500,
                    NumberOfPrograms = 5,
                    Volume = 12.3M,
                    DelayedStart = true,
                    ControlType = "Electronic",
                    BowlCover = "Coal",
                    KeepingWarm = true
                },
                3 => new AppliancesInputModel()
                {
                    Model = "ATLANT RC-62",
                    Company = "ATLANT",
                    Country = "Italy",
                    ProductionYear = 2016,
                    Price = 8000,
                    Color = "Brown",
                    Width = 84,
                    Height = 108,
                    Depth = 65,
                    Weight = 49,
                    Power = 1500,
                    EnergyClass = "B",
                    Volume = 534,
                    NoiseLevel = 42,
                    Freezer = true,
                    DefrostingCameras = "Manual",
                    NumberOfChambers = 2
                },
                4 => new AppliancesInputModel()
                {
                    Model = "Oclean Pro 37329",
                    Company = "Oclean",
                    Country = "Finland",
                    ProductionYear = 2020,
                    Price = 3500,
                    Color = "Blue",
                    Nozzle = 2,
                    BatteryLife = 100,
                    UserAge = "Adult",
                    NumberOfPulsations = 7000000
                },
                5 => new AppliancesInputModel()
                {
                    Model = "SUPRA 4730M",
                    Company = "SUPRA",
                    Country = "Germany",
                    ProductionYear = 2018,
                    Price = null,
                    Color = "White"
                },
                6 => new AppliancesInputModel()
                {
                    Model = "",
                    Company = "Xiaomi",
                    Country = "Japan",
                    ProductionYear = 2019,
                    Price = 34000,
                    Color = "White"
                },
                7 => new AppliancesInputModel()
                {
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "USA",
                    ProductionYear = 2017,
                    Price = 5000,
                    Color = "Yellow"
                },            
                8 => new AppliancesInputModel()
                {
                    Model = "",
                    Company = "Xiaomi",
                    Country = "Japan",
                    ProductionYear = 2019,
                    Price = 34000,
                    Color = "White"
                },
                9 => new AppliancesInputModel()
                {
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "USA",
                    ProductionYear = 2017,
                    Price = 5000,
                    Color = "Yellow"
                },
                10 => new AppliancesInputModel()
                {
                    Model = "SUPRA 4730M",
                    Company = "SUPRA",
                    Country = "Germany",
                    ProductionYear = 2018,
                    Price = null,
                    Color = "White"
                },
                _ => new AppliancesInputModel(),
            };
        }
    }
}
