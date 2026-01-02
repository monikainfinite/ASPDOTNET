using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;
using System.Web.Services;

namespace WebService_prj1
{
    /// <summary>
    /// Summary description for Web_Infinite_Services
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Web_Infinite_Services : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public string SayHello(string username)
        {
            return "Hello : " + username;
        }
        [WebMethod]
        public float Squareroot(float f)
        {
            return f * f;
        }
        [WebMethod]
        public float sumOfNumbers(float f1,float f2)
        {
            return f1 + f2;
        }
        public void Message()
        {
            Console.WriteLine("This is a Test Method");
        }
    }
}
