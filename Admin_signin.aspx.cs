using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(AuthenticateAdmin(txtEmail.Text,txtPassword.Text))
        {
            Session["admin"] = txtEmail.Text;
            Response.Redirect("~/Admin_profile.aspx");
        }
        else
        {
            lblMessage.Text = "Wrong credentials";
        }
    }

    private bool AuthenticateAdmin(string adminemail, string password)
    {
        string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("spAuthadmin",con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            string enpass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text,"SHA1");

            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", enpass);

            SqlParameter outputpara = new SqlParameter();
            outputpara.ParameterName = "@status";
            outputpara.SqlDbType = System.Data.SqlDbType.Int;
            outputpara.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(outputpara);


            con.Open();
            cmd.ExecuteNonQuery();

            int stat = int.Parse(outputpara.Value.ToString());

            return stat == 1;
        }
    }
}