using Q2_Movies.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q2_Movies.Repository
{
    internal interface IMovieRepository
    {
        IEnumerable<Movies> GetAll();
        Movies GetById(int id);
        void Add(Movies movie);
        void Update(Movies movie);
        void Delete(int id);

        IEnumerable<Movies> GetMoviesByYear(int year);
        IEnumerable<Movies> GetMoviesByDirector(string director);
    }
}
