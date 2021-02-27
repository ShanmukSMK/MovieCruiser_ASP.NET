using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Cognizant.MovieCruiser.Dao
{
    interface IFavoritesDao
    {
        void AddMovieToFavorites(long userId, long movieId);
        void GetAllFavorites(long userId);
        void RemoveMovieFromFavorites(long userId, long movieId);
    }
}
