using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO
{
    public partial class mamberdata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("VIPhomepage.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string name = Session["user"].ToString();
            ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["memberConnectionString1"];

            SqlDataAdapter cmd = new SqlDataAdapter($"select * from orderout where userID=N'{name}'", conn.ConnectionString);

            DataSet ds = new DataSet();
            cmd.Fill(ds, "orderout");

            DataTable dt = ds.Tables["orderout"];
            GridView1.DataSource = dt;
            GridView1.DataBind();

            DetailsView1.Visible = false;
            Button6.Visible = false;
        }
    }
}