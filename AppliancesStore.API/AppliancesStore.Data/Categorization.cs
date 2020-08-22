using HouseholdAppliancesStore.Core;
using HouseholdAppliancesStore.Data.DTO;
using System.Collections.Generic;

namespace AppliancesStore.Data
{
    internal class Categorization
    {
        public List<AppliancesDto> PutDownCategoriesToProducts(List<AppliancesDto> allProducts)
        {
            allProducts.ForEach(p =>
            {
                if (p.NumberOfChambers != null) p.CategoryId = (int)Category.Refrigerators;
                if (p.InnerCoating != null) p.CategoryId = (int)Category.MicrowaveOven;
                if (p.BowlCover != null) p.CategoryId = (int)Category.Multicooker;
                if (p.SuctionPipe != null) p.CategoryId = (int)Category.VacuumCleaners;
                if (p.TypeOfSensors != null) p.CategoryId = (int)Category.RobotVacuumCleaners;
                if (p.IntensiveWash != null) p.CategoryId = (int)Category.Dishwashers;
                if (p.PanelMaterial != null) p.CategoryId = (int)Category.Hobs;
                if (p.TypeOfLighting != null) p.CategoryId = (int)Category.Hoods;
                if (p.MaximumSpinSpeed != null) p.CategoryId = (int)Category.WashingMachines;
                if (p.WaterTankVolume != null) p.CategoryId = (int)Category.Irons;
                if (p.MaximumRoomArea != null) p.CategoryId = (int)Category.AirConditioners;
                if (p.MaximumTemperature != null) p.CategoryId = (int)Category.Ovens;
                if (p.TypeOfCoffeeUsed != null) p.CategoryId = (int)Category.CoffeeMakers;
                if (p.BodyMaterial != null) p.CategoryId = (int)Category.ElectricKettles;
                if (p.Chopper != null) p.CategoryId = (int)Category.Blenders;
                if (p.Juicer != null) p.CategoryId = (int)Category.MeatGrinder;
                if (p.Ionization != null) p.CategoryId = (int)Category.HairDryers;
                if (p.UserAge != null) p.CategoryId = (int)Category.Toothbrushes;
                if (p.WeightLimit != null) p.CategoryId = (int)Category.Libra;
            });
            return allProducts;
        }
    }
}
