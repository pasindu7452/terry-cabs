﻿using System;
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
        string cs = ConfigurationManager.ConnectionStrings["dbex"].ConnectionString;

        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("spAdmin",con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            string pass = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox4.Text,"SHA1");

            cmd.Parameters.AddWithValue("@first",TextBox1.Text);
            cmd.Parameters.AddWithValue("@last", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@pass", pass);
            con.Open();
            cmd.ExecuteNonQuery();





        }
    }
}