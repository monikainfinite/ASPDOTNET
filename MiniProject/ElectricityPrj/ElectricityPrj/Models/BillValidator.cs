using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ElectricityPrj.Models
{
    public class BillValidator
    {
        public string ValidateUnitsConsumed(int unitsconsumed)
        {
            if (unitsconsumed < 0)
            {
                return "Given units is invalid"; 
            } 
            return "valid"; 
        }
    }
}