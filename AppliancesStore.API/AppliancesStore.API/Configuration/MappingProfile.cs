using AppliancesStore.API.Models.Output.CategorySpecificOutputModels.SmallAppliancesModels;
using AppliancesStore.API.Models.Output.CategorySpecificOutputModels.LargeAppliancesModels;
using AutoMapper;
using AppliancesStore.API.Models.Input;
using AppliancesStore.API.Models.Output;
using AppliancesStore.Core;
using AppliancesStore.Data.DTO;
using System;

namespace AppliancesStore.API.Configuration
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<AppliancesDto, AppliancesShortcutOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));

            CreateMap<AppliancesDto, HairDryersOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, RefrigeratorsOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, MicrowaveOvenOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, MulticookerOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, VacuumCleanersOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, RobotVacuumCleanersOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, DishwashersOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, HobsOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, HoodsOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, WashingMachinesOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, IronsOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, AirConditionersOutputModel>()
                .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, OvensOutputModel>()
              .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, CoffeeMakersOutputModel>()
              .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, ElectricKettlesOutputModel>()
              .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, BlendersOutputModel>()
              .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, MeatGrinderOutputModel>()
              .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, ToothbrushesOutputModel>()
              .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));
            CreateMap<AppliancesDto, LibraOutputModel>()
              .ForMember(dest => dest.Category, o => o.MapFrom(src => Enum.GetName(typeof(Category), src.CategoryId)));

            CreateMap<AppliancesInputModel, AppliancesDto>();

            CreateMap<OrderInputModel, OrderDto>()
                .ForPath(dest => dest.Products, o => o.MapFrom(src => src.Products));
            CreateMap<ProductsToPutInOrder, ProductsInOrderDto>();

            CreateMap<OrderDto, OrderShortcutOutputModel>();
            CreateMap<OrderDto, OrderOutputModel>()
                .ForPath(dest => dest.Products, o => o.MapFrom(src => src.Products))
                .ForPath(dest => dest.Date, o => o.MapFrom(src => src.Date.ToString("dd.MM.yyyy HH:mm:ss")));
            CreateMap<ProductsInOrderDto, ProductsInOrder>()
                .ForPath(dest => dest.Model, o => o.MapFrom(src => src.Product.Model))
                .ForPath(dest => dest.Price, o => o.MapFrom(src => src.Product.Price));
        }
    }
}
