using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == null)
        {
            //Response.Redirect("~/user_signin.aspx");
            lbUserSigned.Enabled = false;
            NameLable.Enabled = false;
        }
        else
        {

            //lblLoggedin.Text = "you are logged in as :" + Convert.ToString(Session["username"]);
            string user = Convert.ToString(Session["username"]);
            lbUserSigned.Text = Convert.ToString(Session["username"]);
        }

    }
}
