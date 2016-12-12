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
        lblLoggedin.Text ="you are logged in as :" + Convert.ToString(Session["username"]);

        string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
        
        using(SqlConnection con = new SqlConnection(cs))
        {
            con.Open();
            SqlCommand cmd=new SqlCommand("SELECT * FROM tblUser ",con);
            using( SqlDataReader dr=cmd.ExecuteReader())
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }

        }

        




    }
}