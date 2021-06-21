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
    public partial class order_ctrl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //---LinQ ---
            ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["memberConnectionString1"];

            SqlDataAdapter cmd = new SqlDataAdapter("select * from orderout order by initdate desc", conn.ConnectionString);

            DataSet ds = new DataSet();
            cmd.Fill(ds, "orderout");


            //---顯示全部---
            DataTable dt = ds.Tables["orderout"];
            GridView1.DataSource = dt;
            GridView1.DataBind();


            Button3.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)  //篩選
        {
            ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["memberConnectionString1"];

            SqlDataAdapter cmd = new SqlDataAdapter($"select * from orderout where {DropDownList1.SelectedValue} like N'%{TextBox1.Text}%'", conn.ConnectionString);

            DataSet ds = new DataSet();
            cmd.Fill(ds, "orderout");

            DataTable dt = ds.Tables["orderout"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string id = GridView1.Rows[e.NewSelectedIndex].Cells[0].Text; //取得點擊行ID

            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(s_data);
            //本機用
            //SqlConnection conn = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = member; Persist Security Info = True; User ID = TonyDU; Password = a5832463");
            SqlDataAdapter cmd = new SqlDataAdapter($"select * from orderin where orderid={id}", conn);

            DataSet ds = new DataSet();
            cmd.Fill(ds, "orderin");

            DataTable dt = ds.Tables["orderin"];
            GridView2.DataSource = dt;
            GridView2.DataBind();

            GridView1.Visible = false;


            Button3.Visible = true;
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("order ctrl.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("backhomepage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/homepage.aspx");
        }

        

























        /*protected void HyperLink1_DataBinding(object sender, EventArgs e)
        {
            
            ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["memberConnectionString1"];

            SqlDataAdapter cmd = new SqlDataAdapter($"select id from orderout intersect select orderid from orderin", conn.ConnectionString);

            DataSet ds = new DataSet();
            cmd.Fill(ds, "orderin");

            DataTable dt = ds.Tables["orderin"];
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }*/
    }
}

