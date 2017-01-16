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
        string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            con.Open();
           SqlDataAdapter da=new SqlDataAdapter("SELECT * FROM tblVehicle ",con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();
           

           

        }

    }
}