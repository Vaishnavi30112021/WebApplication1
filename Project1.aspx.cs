using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

namespace WebApplication1
{
    public partial class Project1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            txt1.Text = Request.QueryString["Name"];
            txt2.Text = Request.QueryString["Age"];
           
        }

    }
}