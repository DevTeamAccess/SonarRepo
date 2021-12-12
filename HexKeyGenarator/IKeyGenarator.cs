using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace HexKeyGenarator
{
   public interface IKeyGenarator
    {
      
        Task<string> hexKey(string hexKey);
    }
}
