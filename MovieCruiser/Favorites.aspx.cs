using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.MovieCruiser.Dao;
namespace MovieCruiser
{
    public partial class Favorites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //FavoritesDaoCollection favoriteList = new FavoritesDaoCollection();
            //FavoritesDaoCollection.CreateFavoriteList();
            //GridViewFav.DataSource = FavoritesDaoCollection.favoritesMovieList;
            //GridViewFav.DataBind();
            
            if(Request.QueryString["Id"]!=null)
            {
                int movieId = Convert.ToInt32(Request.QueryString["Id"].ToString());
                FavoritesDaoCollection favList = new FavoritesDaoCollection();
                FavoritesDaoCollection.CreateFavoriteList();
                favList.AddMovieToFavorites(895192, movieId);
                //GridViewFav.DataSource = FavoritesDaoCollection.userCart[895192];
                GridViewFav.DataSource = FavoritesDaoCollection.favoritesMovieList;
                GridViewFav.DataBind();

            }
            
        }
    }
}