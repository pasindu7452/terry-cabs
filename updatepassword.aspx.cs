﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"]==null)
        {
            Response.Redirect("~/user_signin.aspx");
        }
        else
        {
            lblLoggedin.Text = "you are logged in as :" + Convert.ToString(Session["username"]);
            string user = Convert.ToString(Session["username"]);
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        if (Session["username"] == null)
        {
            Response.Redirect("~/user_signin.aspx");

        }
    }
    protected void btnUpdatepass_Click(object sender, EventArgs e)
    {
        if(txtOldpass.Text=="" || txtNewpass.Text=="" || txtConpass.Text=="")
        {
            lblMessage.Text = "*please fill all the fields";
        }
    }
}