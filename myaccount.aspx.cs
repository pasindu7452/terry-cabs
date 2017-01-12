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
        if(Session["username"]==null)
        {
            Response.Redirect("~/user_signin.aspx");
        }
        else
        {
            lblLoggedin.Text = "you are logged in as :" + Convert.ToString(Session["username"]);

            string user=Convert.ToString(Session["username"]);
            String cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter("spGetuser", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

            da.SelectCommand.Parameters.AddWithValue("@email",user);

            DataSet ds = new DataSet();
            da.Fill(ds,"Users");

            if(ds.Tables["Users"].Rows.Count>0)
            {
                DataRow dr = ds.Tables["Users"].Rows[0];
                lblFname.Text = dr["first_name"].ToString();
                lblLname.Text = dr["last_name"].ToString();
                lblContact.Text = dr["contact_number"].ToString();
                lblAddress.Text = dr["address"].ToString();
                lblEmail.Text = dr["email"].ToString();
            }



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
}