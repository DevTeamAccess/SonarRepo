using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication5.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
       
    private readonly    IScopedService transientService1;
       public WeatherForecastController(IScopedService transientService2, IScopedService transientService3) {
            transientService1 = transientService2;
        }
       

        [HttpGet]
        public object Get()
        {
            var dddd = transientService1.GetOperationID();
            return dddd;
        }
    }
}
