using AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels;
using AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels;
using AppliancesStore.Core;
using AppliancesStore.Data.DTO;
using AutoMapper;
using System.Collections.Generic;

namespace AppliancesStore.API
{
    public class ComplexMapper
    {
        private readonly IMapper _mapper;

        public ComplexMapper(IMapper mapper)
        {
            _mapper = mapper;
        }
        public dynamic MapBasedOnCategory(AppliancesDto appliancesDto)
        {
            if (appliancesDto.CategoryId == (int)Category.Refrigerators) return _mapper.Map<RefrigeratorsOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.MicrowaveOven) return _mapper.Map<MicrowaveOvenOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.Multicooker) return _mapper.Map<MulticookerOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.VacuumCleaners) return _mapper.Map<VacuumCleanersOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.RobotVacuumCleaners) return _mapper.Map<RobotVacuumCleanersOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.Dishwashers) return _mapper.Map<DishwashersOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.Hobs) return _mapper.Map<HobsOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.Hoods) return _mapper.Map<HoodsOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.WashingMachines) return _mapper.Map<WashingMachinesOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.Irons) return _mapper.Map<IronsOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.AirConditioners) return _mapper.Map<AirConditionersOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.Ovens) return _mapper.Map<OvensOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.CoffeeMakers) return _mapper.Map<CoffeeMakersOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.ElectricKettles) return _mapper.Map<ElectricKettlesOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.Blenders) return _mapper.Map<BlendersOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.MeatGrinder) return _mapper.Map<MeatGrinderOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.HairDryers) return _mapper.Map<HairDryersOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.Toothbrushes) return _mapper.Map<ToothbrushesOutputModel>(appliancesDto);
            if (appliancesDto.CategoryId == (int)Category.Libra) return _mapper.Map<LibraOutputModel>(appliancesDto);
            return -1;
        }

        public dynamic MapBasedOnCategory(List<AppliancesDto> appliancesDto)
        {
            var outputModel = MapBasedOnCategory(appliancesDto[0]);
            if (outputModel is RefrigeratorsOutputModel)
            {
                return _mapper.Map<List<RefrigeratorsOutputModel>>(appliancesDto);
            }
            if (outputModel is MicrowaveOvenOutputModel)
            {
                return _mapper.Map<List<MicrowaveOvenOutputModel>>(appliancesDto);
            }
            if (outputModel is MulticookerOutputModel)
            {
                return _mapper.Map<List<MulticookerOutputModel>>(appliancesDto);
            }
            if (outputModel is VacuumCleanersOutputModel)
            {
                return _mapper.Map<List<VacuumCleanersOutputModel>>(appliancesDto);
            }
            if (outputModel is RobotVacuumCleanersOutputModel)
            {
                return _mapper.Map<List<RobotVacuumCleanersOutputModel>>(appliancesDto);
            }
            if (outputModel is DishwashersOutputModel)
            {
                return _mapper.Map<List<DishwashersOutputModel>>(appliancesDto);
            }
            if (outputModel is HobsOutputModel)
            {
                return _mapper.Map<List<HobsOutputModel>>(appliancesDto);
            }
            if (outputModel is HoodsOutputModel)
            {
                return _mapper.Map<List<HoodsOutputModel>>(appliancesDto);
            }
            if (outputModel is WashingMachinesOutputModel)
            {
                return _mapper.Map<List<WashingMachinesOutputModel>>(appliancesDto);
            }
            if (outputModel is IronsOutputModel)
            {
                return _mapper.Map<List<IronsOutputModel>>(appliancesDto);
            }
            if (outputModel is AirConditionersOutputModel)
            {
                return _mapper.Map<List<AirConditionersOutputModel>>(appliancesDto);
            }
            if (outputModel is OvensOutputModel)
            {
                return _mapper.Map<List<OvensOutputModel>>(appliancesDto);
            }
            if (outputModel is CoffeeMakersOutputModel)
            {
                return _mapper.Map<List<CoffeeMakersOutputModel>>(appliancesDto);
            }
            if (outputModel is ElectricKettlesOutputModel)
            {
                return _mapper.Map<List<ElectricKettlesOutputModel>>(appliancesDto);
            }
            if (outputModel is BlendersOutputModel)
            {
                return _mapper.Map<List<BlendersOutputModel>>(appliancesDto);
            }
            if (outputModel is MeatGrinderOutputModel)
            {
                return _mapper.Map<List<MeatGrinderOutputModel>>(appliancesDto);
            }
            if (outputModel is HairDryersOutputModel)
            {
                return _mapper.Map<List<HairDryersOutputModel>>(appliancesDto);
            }
            if (outputModel is ToothbrushesOutputModel)
            {
                return _mapper.Map<List<ToothbrushesOutputModel>>(appliancesDto);
            }
            if (outputModel is LibraOutputModel)
            {
                return _mapper.Map<List<LibraOutputModel>>(appliancesDto);
            }
            return -1;
        }
    }
}
