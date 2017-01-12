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

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string user = Convert.ToString(Session["username"]);
        string date_time = DateTime.Now.ToString();

        if (ddlType.SelectedValue.ToString()=="-1")
        {
            lblMessage.Text = "*Please select vehicle type";
        }
        else
        {
            if (ddlBrand.SelectedValue.ToString() == "-1")
            {
                lblMessage.Text = "*Please select vehicle brand";

            }
            else
            {
                if (txtModel.Text=="")
                {
                    lblMessage.Text = "*Please enter model";
                }
                else
                {
                    string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;

                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand("spRent_req", con);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@email", user);
                        cmd.Parameters.AddWithValue("@date", date_time);
                        cmd.Parameters.AddWithValue("@type", ddlType.Text);
                        cmd.Parameters.AddWithValue("@brand", ddlBrand.Text);
                        cmd.Parameters.AddWithValue("@model", txtModel.Text);
                        cmd.Parameters.AddWithValue("@details", txtDetails.InnerText);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblMessage2.Text = "Your request has sucessfully stored in database,We'll contact you soon!";

                        ddlType.SelectedIndex = 0;
                        ddlBrand.SelectedIndex = 0;
                        txtModel.Text = "";
                        txtDetails.InnerText = "";
                        
                    }
                }
            }
        }
    }
}