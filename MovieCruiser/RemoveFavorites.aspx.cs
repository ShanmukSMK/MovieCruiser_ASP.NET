using Com.Cognizant.MovieCruiser.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieCruiser
{
    public partial class FavoritesNotification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FavoritesDaoCollection favoriteList = new FavoritesDaoCollection();
            FavoritesDaoCollection.CreateFavoriteList();
            GridViewRemoveFav.DataSource = FavoritesDaoCollection.favoritesMovieList;
            GridViewRemoveFav.DataBind();
            if (Request.QueryString["Id"] != null)
            {
                int movieId = Convert.ToInt32(Request.QueryString["id"].ToString());
                FavoritesDaoCollection movieList = new FavoritesDaoCollection();
                FavoritesDaoCollection.CreateFavoriteList();
                movieList.RemoveMovieFromFavorites(895192, movieId);
                GridViewRemoveFav.DataSource = FavoritesDaoCollection.userCart[895192];
                GridViewRemoveFav.DataBind();
            }
            //if (FavoritesDaoCollection.favoritesMovieList == null)
            //{
            //    Response.Redirect("FavoritesEmpty.aspx");
            //}
            if (Request.QueryString["Id"] == null)
            {
                Response.Redirect("FavoritesEmpty.aspx");
            }
        }
    }
}