using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Com.Cognizant.MovieCruiser.Model;

namespace Com.Cognizant.MovieCruiser.Dao
{
    public  class MovieDaoCollection : IMovieDao
    {
        public static List<Movie> movieList = null;
        //public  MovieDaoCollection()
        static public void MovieListInitialization()
        {
            if (movieList == null)
            {
                movieList = new List<Movie>()
        {

             new Movie() { Id=1, Title="Avatar",BoxOffice="$2,787,965,087",Active=true,
             DateOfLaunch = "15/03/2017",Genre="Science Fiction",
                 HasTeaser=true},
              new Movie() { Id=2, Title="The Avengers",BoxOffice="$1,518,812,988",Active=true,
             DateOfLaunch ="23/12/2017",Genre="Super hero",
                 HasTeaser=false},
              new Movie() { Id=3, Title="Titanic",BoxOffice="$2,187,463,944",Active=true,
             DateOfLaunch ="21/08/2017",Genre="Romance",
                 HasTeaser=false},
             new Movie() { Id=4, Title="Jurassic World",BoxOffice="$1,617,713,208",Active=false,
             DateOfLaunch = "02/07/2017",Genre="Science Fiction",
                 HasTeaser=true},
              new Movie() { Id=5, Title="Avengers:End Game",BoxOffice="$2,750,760,348",Active=true,
             DateOfLaunch = "02/11/2022",Genre="Super hero",
                 HasTeaser=true},

        };
            }
        }
        public Movie GetMovie(int MovieId)
        {
            Movie m = new Movie();
            foreach (Movie movie in movieList)
            {
                if (MovieId == movie.Id)
                    m = movie;
            }
            return m;
        }
        public List<Movie> GetMovieListAdmin()
        {
            return movieList;
        }
        public List<Movie> GetMovieListCustomer()
        {
            return movieList;
        }

    }
}
