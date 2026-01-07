using MVC_example.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC_example.Controllers
{
    public class EmployeeController : Controller
    {
        infiniteEntities db=new infiniteEntities();
        // GET: Employee
        public ActionResult Index()
        { List<Employee>emplist=db.Employees.ToList();
      
            return View(emplist);
        }
        public ActionResult GetEmpDetails()
        {
            List<Employee>emplist= db.Employees.ToList();
            return View(emplist);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Employee emp)
        {
            db.Employees.Add(emp);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Delete(int Id)
        {
            Employee e=db.Employees.Find(Id);
            return View(e);
        }
        [HttpPost,ActionName("Delete")]
        public ActionResult DeleteEmployee(int Id)
        {
            Employee emp=db.Employees.Find(Id);
            db.Employees.Remove(emp);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Details(int Id)
        {
            Employee emp= db.Employees.Find(Id);    
            return View(emp);
        }
        public ActionResult Edit(int Id)
        {
            Employee emp=db.Employees.Find(Id);
            return View(emp);
        }
        [HttpPost,ActionName("Edit")]
        public ActionResult Update(Employee emp)
        {
            Employee e = db.Employees.Find(emp.EmployeeID);
            e.Name=emp.Name;
            e.Role=emp.Role;
            e.Department=emp.Department;
            e.Salary=emp.Salary;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
      
    }
}