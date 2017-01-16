using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected override void OnPreRender(EventArgs e)
    {
        base.OnPreRender(e);

        txtName.Text = string.Empty;
        txtLname.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtReEmail.Text = string.Empty;
        txtPassword.Text = string.Empty;
        txtRePass.Text = string.Empty;
    }

    protected void Signup_Click(object sender, EventArgs e)
    {
        String cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("spAddadmin", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //PasswordCompareValidator1 encryption
            String enpass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");

            cmd.Parameters.AddWithValue("@fname", txtName.Text);
            cmd.Parameters.AddWithValue("@lname", txtLname.Text);
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

            if (stat == -1)
            {
                messagelbl.Text = "please signup with different email address";
            }
            else if (stat == 0)
            {
                messagelbl.Text = "please recorrect following errors";
            }
            else
            {
                messagelbl.Text = "you have sucessfully signed up";
            }
        }

    }
}