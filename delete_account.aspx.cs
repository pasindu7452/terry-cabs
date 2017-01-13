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
using System.Net.Mail;

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

    protected void btnSub_Click(object sender, EventArgs e)
    {
        string user = Convert.ToString(Session["username"]);
        
        if (txtPass.Text=="")
        {
            lblMessage.Text = "*Please enter password";
        }
        else
        {
            string enpass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPass.Text,"SHA1");

            string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;

            using (SqlConnection con=new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spDeluser",con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email",user);
                cmd.Parameters.AddWithValue("@pass",enpass);

                con.Open();
                cmd.ExecuteNonQuery();

                MailMessage mailmessage = new MailMessage("pasindu745@gmail.com",user);
                mailmessage.Subject = "Notice!";
                mailmessage.Body = "You account of tertty cabs is successfully deleted!";

                SmtpClient smtpclient = new SmtpClient("smtp.gmail.com",587);
                smtpclient.Credentials = new System.Net.NetworkCredential()
                {
                    UserName = "pasindu745@gmail.com ",
                    Password = "blackstallion"
                };

                smtpclient.EnableSsl = true;
                smtpclient.Send(mailmessage);
                
                Response.Redirect("~/user_signup.aspx");


            }
        }

                
                
    }
}