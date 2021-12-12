using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace HexKeyGenarator
{
  public  class KeyGenaratorCaller
    {
        IKeyGenarator _IKeyGenarator;
        public KeyGenaratorCaller(IKeyGenarator IKeyGenarator)
        {
            _IKeyGenarator = IKeyGenarator;
        }
        public async Task<string> GetHexKey(string Key)
        {
            return await _IKeyGenarator.hexKey(Key);
        }
    }
}
