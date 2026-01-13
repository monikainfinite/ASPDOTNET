using Q2_Movies.Models;
using Q2_Movies.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace Q2_Movies.Controllers
{
    public class MoviesController : Controller
    {
        IMovieRepository repo = new MovieRepository();
        // GET: Movies
        public ActionResult Index()
        {
            var data = repo.GetAll();
            return View(data);
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Movies movie)
        {
            repo.Add(movie);
            return RedirectToAction("Index");
        }
        public ActionResult Edit(int id)
        {
            var movie = repo.GetById(id);
            return View(movie);
        }

        [HttpPost]
        public ActionResult Edit(Movies movie)
        {
            repo.Update(movie);
            return RedirectToAction("Index");
        }
        public ActionResult Delete(int id)
        {
            repo.Delete(id);
            return RedirectToAction("Index");
        }
        public ActionResult MoviesByYear(int year)
        {
            var result = repo.GetMoviesByYear(year);
            return View(result);
        }
        public ActionResult MoviesByDirector(string name)
        {
            var result = repo.GetMoviesByDirector(name);
            return View(result);
        }
    }
}