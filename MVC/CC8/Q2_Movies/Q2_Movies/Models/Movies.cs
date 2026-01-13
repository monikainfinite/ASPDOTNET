using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace Q2_Movies.Models
{
    public class Movies
    {
        [Key]
        public int MovieId { get; set; }

        public string MovieName { get; set; }
        public string DirectorName { get; set; }
        public DateTime DateOfRelease { get; set; }
    }
}