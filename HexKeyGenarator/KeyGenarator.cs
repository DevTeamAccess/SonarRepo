using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace HexKeyGenarator
{
  public  class KeyGenarator : IKeyGenarator
    {
        public async Task<string> hexKey(string hexKey)
        {
            if (!string.IsNullOrEmpty(hexKey))
                return await Task.FromResult(HexString2B64String(hexKey));
            else
                return "Invalid";

        }
        private string HexString2B64String(string input)
        {
            var resultantArray = new byte[input.Length / 2];
            for (var i = 0; i < resultantArray.Length; i++)
            {
                resultantArray[i] = Convert.ToByte(input.Substring(i * 2, 2), 16);
            }
            return Convert.ToBase64String(resultantArray);
        }
    }
}
