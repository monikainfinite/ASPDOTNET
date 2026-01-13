using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Question1.Models;
namespace Question1.Controllers
{
    public class NorthwindController : Controller
    {
        northwindEntities1 db=new northwindEntities1();
        // GET: Northwind
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult GetCustomersInGermany()
        {
            var result = db.Customers.Where(c => c.Country == "Germany").ToList();
            return View(result);    
        }
        public ActionResult GetByOrder()
        {
            var result = db.Orders.Where(o => o.OrderID == 10248).Select(o => o.Customer).FirstOrDefault();

            return View(result);
        }
    }
}