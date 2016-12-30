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
        if(Session["username"]==null)
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
    protected void btnUpdatepass_Click(object sender, EventArgs e)
    {
        string user = Convert.ToString(Session["username"]);

        if(txtOldpass.Text=="" || txtNewpass.Text=="" || txtConpass.Text=="")
        {
            lblMessage.Text = "*please fill all the fields";
        }
        else
        {
            string enOldpass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtOldpass.Text, "SHA1");
            string enNewpass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtNewpass.Text, "SHA1");
            string enConpass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtConpass.Text, "SHA1");

            if(enNewpass != enConpass)
            {
                lblMessage.Text = "*Passwords do not match! please type it again";
            }
            else
            {
                string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
                 using( SqlConnection con = new SqlConnection(cs))
                 {
                       SqlCommand cmd = new SqlCommand("spUpdatepassword",con);
                       cmd.CommandType = System.Data.CommandType.StoredProcedure;

                       cmd.Parameters.AddWithValue("@email",user);
                       cmd.Parameters.AddWithValue("@oldpass",enOldpass);
                       cmd.Parameters.AddWithValue("@newpass",enNewpass);

                        SqlParameter outputpara=new SqlParameter();
                        outputpara.ParameterName="@status";
                        outputpara.SqlDbType=System.Data.SqlDbType.Int;
                        outputpara.Direction = System.Data.ParameterDirection.Output;
                        cmd.Parameters.Add(outputpara);

                        con.Open();
                        cmd.ExecuteNonQuery();

                        int stat = int.Parse(outputpara.Value.ToString());
                        
                        if(stat == 1)
                        {
                            Response.Redirect("~/user_signin.aspx");

                        }
                        else
                        {
                            lblMessage.Text = "*Something went wrong please contact Admin";
                        }


                }
            }

            

        }
    }
}