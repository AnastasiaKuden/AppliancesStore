using System.Collections.Generic;
using AutoMapper;
using HouseholdAppliancesStore.API.Models.Output;
using HouseholdAppliancesStore.Data;
using HouseholdAppliancesStore.Data.DTO;
using Microsoft.AspNetCore.Mvc;

namespace AppliancesStore.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MakeResponseWrapper : Controller
    {
        internal readonly IMapper _mapper;
        internal delegate T DtoConverter<T, K>(K dto);
        internal readonly ComplexMapper _complexMapper;
        internal MakeResponseWrapper(IMapper mapper)
        {
            _mapper = mapper;
            _complexMapper = new ComplexMapper(_mapper);
        }

        internal ActionResult<AppliancesShortcutOutputModel> MakeResponse(DataWrapper<AppliancesDto> dataWrapper)
        {
            if (!dataWrapper.IsOk)
            {
                return BadRequest(dataWrapper.ExceptionMessage);
            }
            return Ok(_complexMapper.MapBasedOnCategory(dataWrapper.Data));
        }

        internal ActionResult<List<AppliancesShortcutOutputModel>> MakeResponse(DataWrapper<List<AppliancesDto>> dataWrapper)
        {
            if (!dataWrapper.IsOk)
            {
                return BadRequest(dataWrapper.ExceptionMessage);
            }
            return Ok(_complexMapper.MapBasedOnCategory(dataWrapper.Data));
        }

        internal ActionResult<T> MakeResponse<T, K>(DataWrapper<K> dataWrapper, DtoConverter<T, K> dtoConverter)
        {
            if (!dataWrapper.IsOk)
            {
                return BadRequest(dataWrapper.ExceptionMessage);
            }
            return Ok(dtoConverter(dataWrapper.Data));
        }
    }
}
