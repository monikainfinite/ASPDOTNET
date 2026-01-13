using Q2_Movies.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Q2_Movies.Repository
{
    public class MovieRepository : IMovieRepository
    {
        MovieContext db = new MovieContext();
        public IEnumerable<Movies> GetAll()
        {
            return db.Movies.ToList();
        }
        public Movies GetById(int id)
        {
            return db.Movies.Find(id);
        }
        public void Add(Movies movie)
        {
            db.Movies.Add(movie);
            db.SaveChanges();
        }
        public void Update(Movies movie)
        {
            db.Entry(movie).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
        public void Delete(int id)
        {
            Movies m = db.Movies.Find(id);
            db.Movies.Remove(m);
            db.SaveChanges();
        }
        public IEnumerable<Movies> GetMoviesByYear(int year)
        {
            return db.Movies
                     .Where(m => m.DateOfRelease.Year == year)
                     .ToList();
        }
        public IEnumerable<Movies> GetMoviesByDirector(string director)
        {
            return db.Movies
                     .Where(m => m.DirectorName == director)
                     .ToList();
        }
    }
}