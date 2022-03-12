using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AddData : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustDBConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            disp_data();

        }


        protected void btnInsert_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand cmd = new SqlCommand("CustomerDetails_sp", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.AddWithValue("@Name", txt1.Text);
                cmd.Parameters.AddWithValue("@Age", txt2.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                disp_data();

                Label1.Text = "INSERTED SUCCESFULLY !";

            }
            catch (Exception ex)
            {
                lblException.Text = ex.Message;
            }


        }

        protected void disp_data()
        {
            SqlCommand cmd = new SqlCommand("displayDetails_sp", conn);
            cmd.CommandText = "select * from customerDetails where Name='txt1.Text'";
            //conn.Open();
            //cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
           
            Panel1.DataBind();
            //conn.Close();
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                SqlCommand cmd = new SqlCommand("updateDetails_sp", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", txt1.Text);
                cmd.Parameters.AddWithValue("@Age", txt2.Text);
               
                conn.Open();
                cmd.ExecuteNonQuery();
              
                conn.Close();
                disp_data();
                Label1.Text = "UPDATED SUCCESFULLY !";

            }
            catch (Exception ex)
            {
                lblException.Text = ex.Message;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("deleteDetails_sp", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", txt1.Text);
                
               
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                disp_data();


                Label1.Text = "DELETED SUCCESFULLY !";

            }
            catch (Exception ex)
            {
                lblException.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("displayDetails_sp", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", txt1.Text);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    TextBox4.Text = dr[0].ToString();
                    TextBox5.Text = dr[1].ToString();
                    TextBox6.Text = dr[2].ToString();
                }
            }
            else
            {
                Label1.Text = "Invalid !";

            }
           

                conn.Close();
               
        }
    }
}

