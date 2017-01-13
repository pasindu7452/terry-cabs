using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
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

    protected void btnComment_Click(object sender, EventArgs e)
    {
        string datetime = DateTime.Now.ToString();
        string user = Convert.ToString(Session["username"]);

        if (txtComment.InnerText == "")
        {
            lblMessage.Text = "Please enter your comment";
            lblMessage2.Text = "";
        }
        else
        {
            string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spAddcomment",con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email", user);
                cmd.Parameters.AddWithValue("@date",datetime);
                cmd.Parameters.AddWithValue("@comment", txtComment.InnerText);

                con.Open();
                cmd.ExecuteNonQuery();
                lblMessage.Text = "";
                lblMessage2.Text = "your comment has successfully saved in database.";
                txtComment.InnerText = "";

            }

        }
    }
}