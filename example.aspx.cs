using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("SELECT * FROM example", con);
        con.Open();
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        con.Close();
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        //String cmmnd = "SELECT name FROM example WHERE id ="+txtName.Text;
        SqlDataAdapter da = new SqlDataAdapter("getuser",con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@userid", txtName.Text);
        DataSet ds = new DataSet();
        da.Fill(ds, "people");

        ViewState["QUERY"]="getuser";
        ViewState["DS"] = ds;

        if (ds.Tables["people"].Rows.Count > 0)
        {
            DataRow dr = ds.Tables["people"].Rows[0];
            TextBox1.Text = dr["name"].ToString();
        }
        else
        {
            Label1.Text = "No record";
        }

        
      
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        String cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("getusr2",con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username",TextBox2.Text);

        SqlParameter paraout = new SqlParameter();
        paraout.ParameterName = "@status";
        paraout.SqlDbType = System.Data.SqlDbType.Int;
        paraout.Direction = System.Data.ParameterDirection.Output;
        cmd.Parameters.Add(paraout);

        con.Open();
        cmd.ExecuteNonQuery();

        string status = paraout.Value.ToString();
        Label2.Text = "status=" + status;

    }

   
}