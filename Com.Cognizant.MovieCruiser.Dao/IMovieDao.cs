﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Com.Cognizant.MovieCruiser.Model;

namespace Com.Cognizant.MovieCruiser.Dao
{
    interface IMovieDao
    {
        List<Movie> GetMovieListAdmin();
        List<Movie> GetMovieListCustomer();
        //void ModifyMovie(Movie movie);
        Movie GetMovie(int MovieId);


    }
}
