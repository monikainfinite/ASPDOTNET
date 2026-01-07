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
      
        public string ValidateBillDate(DateTime date)
        {
            if (date > DateTime.Now)
            {
                return "Bill date cannot be in the future";
            }
            return "valid";
        }
    }
}