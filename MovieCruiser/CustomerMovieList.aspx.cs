using Com.Cognizant.MovieCruiser.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieCruiser
{
    public partial class CustomerMovieList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieDaoCollection movieDaoCollection = new MovieDaoCollection();
            MovieDaoCollection.MovieListInitialization();
            //GridView1.DataSource = movieDaoCollection.movieList;
            GridView1.DataSource = MovieDaoCollection.movieList;
            GridView1.DataBind();
        }
       protected void HyperLinkField()
        {
            Response.Redirect("MovieListCustomerNotification.aspx");
        }
    }
}