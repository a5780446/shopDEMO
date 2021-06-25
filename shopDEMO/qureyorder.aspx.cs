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
    public partial class qureyorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logined"] != null)
            {
                Button100.Visible = true;
                Button101.Visible = true;
                Button99.Visible = true;
                Label99.Text = Session["user"].ToString();
                HyperLink1.Visible = false;
                HyperLink2.Visible = false;
            }
            else
            {
                Button100.Visible = false;
                Button101.Visible = false;
                Button99.Visible = false;
                Label99.Text = "Hi~訪客";
                HyperLink1.Visible = true;
                HyperLink2.Visible = true;
            }

            Label101.Visible = false;
            LinkButton2.Visible = false;
        }

        protected void Button102_Click(object sender, EventArgs e)
        {
            /* ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["memberConnectionString1"];
             SqlDataAdapter cmd = new SqlDataAdapter($"select * from orderout where {DropDownList1.SelectedValue} like '{TextBox1.Text}'", conn.ConnectionString);
             DataSet ds = new DataSet();
             cmd.Fill(ds, "orderout");
             DataTable dt = ds.Tables["orderout"];
             GridView1.DataSource = dt;
             GridView1.DataBind();*/

            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(s_data);
            string sqlcommand = ($"select * from orderout where {DropDownList1.SelectedValue} like '{TextBox1.Text}'"); ; //sql語法灌進去
            SqlCommand cmd = new SqlCommand(sqlcommand, conn);
            conn.Open();
            SqlDataReader Reader = cmd.ExecuteReader();
            if (Reader.HasRows)
            {
                GridView1.DataSource = Reader;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
            else
            {
                Label101.Visible = true;
                GridView1.Visible = false;
            }



        }

        protected void Button101_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/homepage.aspx");
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
            LinkButton2.Visible = true;
            GridView2.Visible = true;
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            LinkButton2.Visible = false;
        }
    }
}