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
    protected void btnSignin_Click(object sender, EventArgs e)
    {
        if (AuthenticateUser(txtEmail.Text, txtPassword.Text))
        {
           
            Session["username"] = txtEmail.Text;
            Response.Redirect("~/userprofile.aspx");
            //FormsAuthentication.RedirectFromLoginPage(txtEmail.Text, false);
        }
        else
        {
            lblMessage.Text = "wrong credentials";
        }
    }

    private bool AuthenticateUser(string useremail, string password)
    {
        string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("spAuthenticateUsers",con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //password encryption
            string enpass = FormsAuthentication.HashPasswordForStoringInConfigFile(password,"SHA1");

            cmd.Parameters.AddWithValue("@email",useremail);
            cmd.Parameters.AddWithValue("@password",enpass);

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