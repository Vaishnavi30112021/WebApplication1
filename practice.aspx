<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practice.aspx.cs" Inherits="WebApplication1.practice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>


<%--MY Change is this--%>

SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustDBConnectionString1"].ConnectionString);
                SqlCommand cmd = new SqlCommand("delete from CustomerDetails(Name,Age)where(@Name,@Age)", conn);
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Delete CustomerDetails where Name=" + txt1.Text;
                cmd.Connection = conns;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();










/*  protected void View_data(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = ("Select * from CustomerDetails");

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
      */


 protected void disp_data()
        {

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from customerDetails";
            conn.Open();
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            conn.Close();
        }
