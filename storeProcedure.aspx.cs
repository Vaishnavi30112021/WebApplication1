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
    public partial class storeProcedure : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeDetailsSPConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            View_data();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Employeeinsert_sp", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", txt1.Text);
                cmd.Parameters.AddWithValue("@City", txt2.Text);
                cmd.Parameters.AddWithValue("@Salary", txt3.Text);
                cmd.Parameters.AddWithValue("@Contact", txt4.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                View_data();

                lbl5.Text = "INSERTED SUCCESFULLY !";

            }
            catch (Exception ex)
            {
                lblException.Text = ex.Message;
            }

        }

        protected void View_data()
        {
            SqlCommand cmd = new SqlCommand("EmployeeView_sp", conn);
            cmd.CommandText = "select * from Emp_Table where Name='txt1.Text'";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Panel1.DataBind();
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("EmployeeUpdate_sp", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name",txt1.Text);
                cmd.Parameters.AddWithValue("@City",txt2.Text);
                cmd.Parameters.AddWithValue("@Salary",txt3.Text);
                cmd.Parameters.AddWithValue("@Contact",txt4.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                View_data();
                lbl5.Text = "UPDATED SUCCESFULLY !";

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
                SqlCommand cmd = new SqlCommand("EmployeeDelete_sp", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", txt1.Text);


                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                View_data();
                lbl5.Text = "DELETED SUCCESSFULLY !";
            }

            catch (Exception ex)
            {
                lblException.Text = ex.Message;
            }

        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("EmployeeView_sp", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", txt1.Text);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txt5.Text = dr[0].ToString();
                    txt6.Text = dr[1].ToString();
                    txt7.Text = dr[2].ToString();
                }
            }
            else
            {
                lbl5.Text = "Invalid data !";

            }
            conn.Close();
        }

    }
}
