using HexKeyGenarator;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace TestCase
{
    [TestClass]
    public class HexKeyGen
    {

        [TestMethod]
        public void HexKey()
        {
            string hex_value = "0111496e6472616a69742042616e65726a6565020f3132333435363738393031323334350314323032322d30342d32355431353a33303a30305a040831303130302e303005063130302e3032";
           // string hex_value = "";
            Assert.IsFalse("Invalid" == new KeyGenaratorCaller(new KeyGenarator()).GetHexKey(hex_value).Result ? true : false, "Invalid hex Key");
        }
        [TestMethod]
        public void HexKey1()
        {
            
            string hex_value = "0111496e6472616a69742042616e65726a6565020f3132333435363738393031323334350314323032322d30342d32355431353a33303a30305a040831303130302e303005063130302e3032";
           //string hex_value = "";
            Assert.IsFalse("Invalid" == new KeyGenaratorCaller(new KeyGenarator()).GetHexKey(hex_value).Result ? true : false, "Invalid hex Key");
        }
    }
}
