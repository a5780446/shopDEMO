using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace shopDEMO.back
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //---LinQ ---
            ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["memberConnectionString"];

            SqlDataAdapter cmd = new SqlDataAdapter("select * from product", conn.ConnectionString);

            DataSet ds = new DataSet();
            cmd.Fill(ds, "product");


            //---顯示全部---
            DataTable dt = ds.Tables["product"];
            GridView1.DataSource = dt;
            GridView1.DataBind();



            //---linq 部分顯示---
            //EnumerableRowCollection<DataRow> product = dt.AsEnumerable();



            //var result = from n in product where n.Field<int>("qty") >15 select n;

            //var result = from n in product where n.Field<string>("id") == "10028" select n;



            /*GridView1.DataSource = result.AsDataView();
            GridView1.DataBind(); */

            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ConnectionStringSettings conn = ConfigurationManager.ConnectionStrings["memberConnectionString"];

            SqlDataAdapter cmd = new SqlDataAdapter($"select * from product where {DropDownList1.SelectedValue} like N'%{TextBox1.Text}%'", conn.ConnectionString);

            DataSet ds = new DataSet();
            cmd.Fill(ds, "product");

            DataTable dt = ds.Tables["product"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Values[0].ToString(); //取得點擊行ID

            //SqlConnection conn = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = member; Persist Security Info = True; User ID = TonyDU; Password = a5832463");
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(s_data);
            SqlCommand cmd = new SqlCommand($"delete from product where (id = {id}) ", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("product.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            DropDownList1.Visible = false;
            Button1.Visible = false;
            TextBox1.Visible = false;
            Button2.Visible = false;

            GridView2.Visible = true;
            Button3.Visible = true;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            DropDownList1.Visible = true;
            Button1.Visible = true;
            TextBox1.Visible = true;
            Button2.Visible = true;

            GridView2.Visible = false;
            Button3.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("backhomepage.aspx");
        }

        /*protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //string id = GridView1.Rows[e.RowIndex].FindControl; //取得點擊行ID
            GridView1.EditIndex = e.NewEditIndex;

            SqlConnection conn = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = member; Persist Security Info = True; User ID = TonyDU; Password = a5832463");

            SqlCommand cmd = new SqlCommand($"update product where (id = {id}) ", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("product.aspx");
        }*/
    }
}
