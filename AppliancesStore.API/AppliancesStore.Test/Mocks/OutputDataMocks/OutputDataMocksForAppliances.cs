using AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppliancesStore.Test.Mocks.OutputDataMocks
{
    public class OutputDataMocksForAppliances
    {
        public dynamic GetAppliancesOutputModelModelMock(int num)
        {
            return num switch
            {
                7 => new LibraOutputModel()
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
                8 => new AppliancesInputModel()
                {
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",

                },
                9 => new AppliancesInputModel()
                {
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",

                },
                10 => new AppliancesInputModel()
                {
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",

                },
                11 => new AppliancesInputModel()
                {
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",

                },
                _ => new AppliancesInputModel(),
            };
        }
    }
}
