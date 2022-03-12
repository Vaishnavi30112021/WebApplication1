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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustDBConnectionString1"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Insert Into CustomerDetails(Name,Age)VALUES(@Name,@Age)",conn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", txt1.Text);
            cmd.Parameters.AddWithValue("@Age", txt2.Text);

            conn.Open();
            cmd.ExecuteNonQuery();

        }

    }
}