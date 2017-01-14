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
using System.Net;
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
        MailMessage mailmessage = new MailMessage();
        mailmessage.From = new MailAddress("pasindu745@gmail.com");
        mailmessage.To.Add("math7452@gmail.com");
        mailmessage.Subject = "Account deletion!";
        mailmessage.Body = "Your account of terry cabs has deleted!";
        mailmessage.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        NetworkCredential netcred = new NetworkCredential();
        netcred.UserName = "pasindu745@gmail.com";
        netcred.Password = "blackstallion";
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = new System.Net.NetworkCredential("pasindu745@gmail.com", "blackstallion");
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.Send(mailmessage);

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

                
               
                
                Response.Redirect("~/user_signup.aspx");


            }

           
        }



    }
}