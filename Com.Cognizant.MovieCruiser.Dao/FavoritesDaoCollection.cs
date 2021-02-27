using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Com.Cognizant.MovieCruiser.Model;

namespace Com.Cognizant.MovieCruiser.Dao
{
    public class FavoritesDaoCollection: IFavoritesDao
    {
        public static List<Movie> favoritesMovieList = null;
        public static List<Movie> retrievedList = null;
        public static Dictionary<long, List<Movie>> userCart = null;
        //public FavoritesDaoCollection()
        static public void CreateFavoriteList()
        {
            if (favoritesMovieList == null)
            {
                favoritesMovieList = new List<Movie>()
                {

                     new Movie(){Id=1,Title= "Avatar", BoxOffice="$2,787,965,087",Active= true,DateOfLaunch= "15/03/2017",Genre= "ScienceFiction",HasTeaser=true },
                    new Movie(){Id=2,Title= "The Avengers",BoxOffice= "$1,518,965,087",Active= true,DateOfLaunch= "23/12/2017",Genre= "SuperHero",HasTeaser= false },
                    new Movie(){Id=3,Title= "Titanic",BoxOffice= "$2,187,585,187",Active= false,DateOfLaunch= "21/08/2017",Genre= "Romance",HasTeaser= true },
                    //new Movie()
                    //{
                        //Id = 1,
                        //Title="Avatar",
                        //BoxOffice="$2,787,965,087",
                        //Active=true,
                        //DateOfLaunch="15/03/2017",
                        //Genre="Science Fiction",
                        //HasTeaser=true,
                        //Id=2,
                        //Title="The Avengers",
                        //BoxOffice="$1,518,812,988",
                        //Active=true,
                        //DateOfLaunch = "23/12/2017",
                        //Genre="Super hero",
                        //HasTeaser=false,
                        //Id=3,
                        //Title="Titanic",
                        //BoxOffice="$2,187,463,944",
                        //Active=true,
                        //DateOfLaunch = "21/08/2017",
                        //Genre="Romance",
                        //HasTeaser=false
                    
                };
                userCart = new Dictionary<long, List<Movie>>();
                userCart.Add(895192, favoritesMovieList);
                userCart.Add(895193, favoritesMovieList);
            }
        }
        public void AddMovieToFavorites(long userId, long movieId)
        {
            int favid;
            MovieDaoCollection m = new MovieDaoCollection();
            List<Movie> movieList = m.GetMovieListCustomer();
            int key = 0;
            Movie movie = (from temp in movieList
                           where temp.Id == movieId
                           select temp).FirstOrDefault();
            favid = movie.Id;
            foreach (Movie emp in favoritesMovieList)
            {
                if ((favid).Equals(emp.Id))
                {
                    key = 1;
                }
            }
            if (movie != null)
            {
                movieId = movie.Id;
                if (key == 0)
                {
                    favoritesMovieList.Add(movie);
                    userCart[userId] = favoritesMovieList;
                }

            }

        }
        public void GetAllFavorites(long userId)
        {
            List<Movie> retrievedMovieList = userCart[userId];
        }
        public void RemoveMovieFromFavorites(long userId, long movieId)
        {
            List<Movie> retrievedMovieList = userCart[userId];
            if (retrievedMovieList.ElementAtOrDefault(((int)movieId - 1)) != null)
            {
                retrievedMovieList.RemoveAt((int)movieId - 1);
            }
            else
            {
                Console.WriteLine("Movie Not Found ");
            }
        }
    }
}
