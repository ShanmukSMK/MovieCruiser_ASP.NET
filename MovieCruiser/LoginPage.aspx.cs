﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieCruiser
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "Shanmuk" && txtPassword.Text == "123")
            {
                Session["Name"] = txtUserName.Text;
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, true);

            }
        }
    }
}