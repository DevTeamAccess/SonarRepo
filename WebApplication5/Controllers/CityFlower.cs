using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication5.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class CityFlowerController : ControllerBase
    {
     public   CityFlowerController() { }
        [HttpGet]
        public async Task<IActionResult> Get(string hex_value)
        {
            if (!string.IsNullOrEmpty(hex_value))            
                return Ok( await Task.FromResult(HexString2B64String(hex_value)));
            else            
                return Ok("Hex Valtes can not be nul or Emty....");
        }
        public  string HexString2B64String(string input)
        {
            var resultantArray = new byte[input.Length / 2];
            for (var i = 0; i < resultantArray.Length; i++)
            {
                resultantArray[i] = Convert.ToByte(input.Substring(i * 2, 2), 16);
            }
            return Convert.ToBase64String( resultantArray);
        }
        
    }
}
