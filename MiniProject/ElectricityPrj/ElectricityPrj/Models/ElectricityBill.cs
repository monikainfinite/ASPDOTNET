using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ElectricityPrj.Models
{

    public class ElectricityBill 
    { private string consumerNumber; 
        private string consumerName;
        private int unitsconsumed; 
        private double billAmount; 
        public string ConsumerNumber 
        { 
            get { return consumerNumber; }
            set
            { 
                if (value == null || value.Length != 7) 
                { 
                    throw new FormatException("Invalid Consumer Number");
                } 
                if (!value.StartsWith("EB"))
                { throw new FormatException("Invalid Consumer Number"); 
                }
                for (int i = 2; i < value.Length; i++) 
                { 
                    if (!char.IsDigit(value[i])) 
                    { 
                        throw new FormatException("Invalid consumer Number");
                    } 
                }
                consumerNumber = value; 
            }
        }
        public string ConsumerName 
        { 
            get { return consumerName; } 
            set { consumerName = value; }
        } 
        public int UnitsConsumed
        { 
            get { return unitsconsumed; } 
            set { unitsconsumed = value; }
        }
        public double BillAmount 
        { 
            get { return billAmount; } 
            set { billAmount = value; }
        }
    }
}