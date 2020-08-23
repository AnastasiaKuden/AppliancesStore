using AppliancesStore.API.Models.Input;
using System;
using System.Collections.Generic;
using System.Text;

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
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",

                },
                3 => new AppliancesInputModel()
                {
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",

                },
                4 => new AppliancesInputModel()
                {
                    Model = "Samsung A749 Bl",
                    Company = "Samsung",
                    Country = "China",
                    ProductionYear = 2020,
                    Price = 9000M,
                    Color = "Black",

                },
                5 => new AppliancesInputModel()
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
