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
using System.IO;






public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }









    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtType.Text=="" || txtBrand.Text=="" || txtModel.Text=="" || txtDetails.InnerText=="" || !FileUpload1.HasFile)
        {
            lblMessage.Text = "*Please fill all the fields!";
        }
        else
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".")+"//uploads//"+str);
            string path = "~//uploads//" + str.ToString();

            string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spAddvehicle", con);
                
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@type",txtType.Text);
                cmd.Parameters.AddWithValue("@brand",txtBrand.Text);
                cmd.Parameters.AddWithValue("@model",txtModel.Text);
                cmd.Parameters.AddWithValue("@details",txtDetails.InnerText);
                cmd.Parameters.AddWithValue("@img", path);

                con.Open();
                cmd.ExecuteNonQuery();

                lblMessage.Text = "";
                lblMessage2.Text = "record has successfully added to the database";

            }

        }
    }
}


