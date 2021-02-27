using Com.Cognizant.MovieCruiser.Dao;
using Com.Cognizant.MovieCruiser.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieCruiser
{
    public partial class EditMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    // MovieDaoCollection movieDaoCollection = new MovieDaoCollection();
                    MovieDaoCollection.MovieListInitialization();
                    int id = Convert.ToInt32(Request.QueryString["Id"].ToString());
                    Movie obj = (from x in MovieDaoCollection.movieList
                                 where x.Id == id
                                 select x).FirstOrDefault();
                    if (obj != null)
                    {
                        txtTitle.Text = obj.Title;
                        txtGross.Text = obj.BoxOffice;
                        txtDate.Text = obj.DateOfLaunch;
                        DropDownListGenre.SelectedValue = obj.Genre;
                        if (obj.Active)
                        {
                            RadioBtnYes.Checked = true;
                        }
                        else
                        {
                            RadioBtnNo.Checked = true;
                        }

                    }
                }
                    //foreach(var x in movieDaoCollection.movieList)
                    //{
                    //    Response.Write(x.Id + "" + x.Title);
                    //}
                }
            }

            protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

            protected void btnSave_Click(object sender, EventArgs e)
            {
                //MovieDaoCollection movieDao = new MovieDaoCollection();
                MovieDaoCollection.MovieListInitialization();
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                //Movie obj = (from x in movieDao.movieList
                //             where x.Id == id
                //             select x).FirstOrDefault();
                Boolean active;
                Boolean hasTeaser;
                if (RadioBtnYes.Text == "Yes")
                {
                    active = true;
                }
                else
                {
                    active = false;
                }

                if (chkHasTeaser.Checked)
                {
                    hasTeaser = true;
                }
                else
                {
                    hasTeaser = false;
                }
                MovieDaoCollection.movieList.Where(w => w.Id == id).ToList().ForEach(i =>
                {
                    i.Title = txtTitle.Text;
                    i.BoxOffice = txtGross.Text;
                    i.Active = active;
                    i.DateOfLaunch = txtDate.Text;
                    i.Genre = DropDownListGenre.SelectedValue;
                    i.HasTeaser = hasTeaser;
                });
                Response.Redirect("EditMovieStatus.aspx");
            }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 3)
                args.IsValid = false;
            else
                args.IsValid = true;

        }
    }
    } 