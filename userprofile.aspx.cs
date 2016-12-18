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
        lblLoggedin.Text = "you are logged in as :" + Convert.ToString(Session["username"]);
        string user = Convert.ToString(Session["username"]);
        string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;

        using (SqlConnection con = new SqlConnection(cs))
        {
            con.Open();
            //SqlCommand cmd=new SqlCommand("SELECT * FROM tblUser WHERE email = "+user,con);
            SqlDataAdapter da = new SqlDataAdapter("spGetuser", con);
            da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

            da.SelectCommand.Parameters.AddWithValue("@email", user);


            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

    }


    protected void btnUpdatepw_Click(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblResult.Text = "done";
        }
    }
}