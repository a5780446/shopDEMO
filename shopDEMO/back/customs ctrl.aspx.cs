using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO.back
{
    public partial class customs_ctrl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //---LinQ ---
            ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["memberConnectionString1"];

            SqlDataAdapter cmd = new SqlDataAdapter("select * from VIPmember", conn.ConnectionString);

            DataSet ds = new DataSet();
            cmd.Fill(ds, "VIPmember");


            //---顯示全部---
            DataTable dt = ds.Tables["VIPmember"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["memberConnectionString1"];

            SqlDataAdapter cmd = new SqlDataAdapter($"select * from VIPmember where {DropDownList1.SelectedValue} like N'%{TextBox1.Text}%'", conn.ConnectionString);

            DataSet ds = new DataSet();
            cmd.Fill(ds, "VIPmember");

            DataTable dt = ds.Tables["VIPmember"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("backhomepage.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/homepage.aspx");
        }
    }
}