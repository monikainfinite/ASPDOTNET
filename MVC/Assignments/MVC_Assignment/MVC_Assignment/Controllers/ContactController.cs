using MVC_Assignment.Models;
using MVC_Assignment.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace MVC_Assignment.Controllers
{
    public class ContactController : Controller
    {
        IContactRepository repo = new ContactRepository();
        // GET: Contact
        //public ActionResult Index()
        //{
        //    return View();
        //}
        public async Task<ActionResult> Index()
        {
            var contacts = await repo.GetAllAsync();
            return View(contacts);
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public async Task<ActionResult> Create(Contact contact)
        {
            await repo.CreateAsync(contact);
            return RedirectToAction("Index");
        }
        public async Task<ActionResult> Delete(long id)
        {
            var contacts = await repo.GetAllAsync();
            var contact = contacts.Find(c => c.Id == id);

            if (contact == null)
                return HttpNotFound();

            return View(contact);
        }
        [HttpPost, ActionName("Delete")]
        public async Task<ActionResult> DeleteConfirmed(long id)
        {
            await repo.DeleteAsync(id);
            return RedirectToAction("Index");
        }

    }
}