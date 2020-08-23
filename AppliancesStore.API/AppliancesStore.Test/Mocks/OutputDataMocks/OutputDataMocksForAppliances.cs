using AppliancesStore.API.Models.Output;
using AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels;
using AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels;

namespace AppliancesStore.Test.Mocks.OutputDataMocks
{
    public class OutputDataMocksForAppliances
    {
        public dynamic GetAppliancesOutputModelMock(int num)
        {
            return num switch
            {
                1 => new LibraOutputModel()
                {
                    Id = 10009,
                    Category = "Libra",
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",
                    IsDeleted = false,
                    Width = 33,
                    Height = 6,
                    Depth = 33,
                    Weight = 3,
                    WeightLimit = 195,
                    MeasurementAccuracy = 0.98M
                },
                2 => new MulticookerOutputModel()
                {
                    Id = 10010,
                    Category = "Multicooker",
                    Model = "Tefal-CE1900",
                    Company = "Tefal",
                    Country = "Italy",
                    ProductionYear = 2019,
                    Price = 25000,
                    Color = "Black",
                    IsDeleted = false,
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
                3 => new RefrigeratorsOutputModel()
                {
                    Id = 10011,
                    Category = "Refrigerators",
                    Model = "ATLANT RC-62",
                    Company = "ATLANT",
                    Country = "Italy",
                    ProductionYear = 2016,
                    Price = 8000,
                    Color = "Brown",
                    IsDeleted = false,
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
                4 => new ToothbrushesOutputModel()
                {
                    Id = 10012,
                    Category = "Toothbrushes",
                    Model = "Oclean Pro 37329",
                    Company = "Oclean",
                    Country = "Finland",
                    ProductionYear = 2020,
                    Price = 3500,
                    Color = "Blue",
                    IsDeleted = false,
                    Nozzle = 2,
                    BatteryLife = 100,
                    UserAge = "Adult",
                    NumberOfPulsations = 7000000
                },
                5 => new MulticookerOutputModel()
                {
                    Id = 10010,
                    Category = "Multicooker",
                    Model = "Tefal-CE1900",
                    Company = "Tefal",
                    Country = "Italy",
                    ProductionYear = 2019,
                    Price = 25000,
                    Color = "Black",
                    IsDeleted = false,
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
                6 => new LibraOutputModel()
                {
                    Id = 10009,
                    Category = "Libra",
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",
                    IsDeleted = false,
                    Width = 33,
                    Height = 6,
                    Depth = 33,
                    Weight = 3,
                    WeightLimit = 195,
                    MeasurementAccuracy = 0.98M
                },
                7 => new MulticookerOutputModel()
                {
                    Id = 10010,
                    Category = "Multicooker",
                    Model = "Tefal-CE1900",
                    Company = "Tefal",
                    Country = "Italy",
                    ProductionYear = 2019,
                    Price = 25000,
                    Color = "Black",
                    IsDeleted = false,
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
                8 => "Enter the model name",                
                9 => "This model already exists, maybe it lies in remote",               
                10 => "Enter the price",                
                _ => new AppliancesShortcutOutputModel(),
            };
        }
    }
}
