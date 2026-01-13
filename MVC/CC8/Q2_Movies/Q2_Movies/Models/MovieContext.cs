using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
namespace Q2_Movies.Models
{
    public class MovieContext:DbContext
    {
        public MovieContext() : base("MoviesDB")
        { }
        public DbSet<Movies> Movies { get; set; }

    }
}