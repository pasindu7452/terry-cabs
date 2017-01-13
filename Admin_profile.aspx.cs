using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["admin"]==null)
        {
            Response.Redirect("~/Admin_signin.aspx");
        }
        else
        {
            Label1.Text = "You are logged in as:";
            lblLoggedin.Text = Convert.ToString(Session["admin"]);
            string user = Convert.ToString(Session["username"]);
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        if (Session["admin"]==null)
        {
            Response.Redirect("~/Admin_signin.aspx");

        }
    }
}