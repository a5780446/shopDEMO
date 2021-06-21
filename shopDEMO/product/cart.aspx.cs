using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace shopDEMO.product
{
    public partial class cart : System.Web.UI.Page
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

            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("id");
                dt.Columns.Add("model");
                dt.Columns.Add("size");
                dt.Columns.Add("qty");
                dt.Columns.Add("price");
                dt.Columns.Add("image");
                dt.Columns.Add("total");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitem"] == null)
                    {
                        dr = dt.NewRow();
                        string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
                        SqlConnection conn = new SqlConnection(s_data);
                        //本機再用的
                        //string mycon = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=member;Integrated Security=True";
                        //SqlConnection conn = new SqlConnection(mycon);
                        string query = "select * from product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = query;
                        cmd.Connection = conn;

                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();

                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["model"] = ds.Tables[0].Rows[0]["model"].ToString();
                        dr["size"] = Request.QueryString["size"];
                        dr["qty"] = Request.QueryString["qty"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"]; //int
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();

                        int quantity = Convert.ToInt32(Request.QueryString["qty"].ToString());
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"]);
                        int total = price * quantity;
                        dr["total"] = total;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitem"] = dt;

                        //-------------------------//
                        Session["buyitem"] = dt;
                        //GridView1.FooterRow.Cells[2].Text = "總價格";
                        GridView1.FooterRow.Cells[5].Text = "共:" + paytotal().ToString() + "NTD";
                        GridView1.FooterRow.Cells[4].Text = totalqty().ToString() + "件商品";
                        Response.Redirect("cart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitem"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
                        SqlConnection conn = new SqlConnection(s_data);
                        //本機再用的
                        //string mycon = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=member;Integrated Security=True";
                        //SqlConnection conn = new SqlConnection(mycon);
                        string query = "select * from product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = query;
                        cmd.Connection = conn;

                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();

                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["model"] = ds.Tables[0].Rows[0]["model"].ToString();
                        dr["size"] = Request.QueryString["size"];
                        dr["qty"] = Request.QueryString["qty"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"]; //int
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();

                        int quantity = Convert.ToInt32(Request.QueryString["qty"].ToString());
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"]);
                        int total = price * quantity;
                        dr["total"] = total;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitem"] = dt;


                        //----------//
                        //GridView1.FooterRow.Cells[2].Text = "總價格";
                        GridView1.FooterRow.Cells[5].Text = "共:" + paytotal().ToString() + "NTD";
                        GridView1.FooterRow.Cells[4].Text = totalqty().ToString() + "件商品";
                        Response.Redirect("cart.aspx");



                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitem"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    //------------//
                    if (GridView1.Rows.Count > 0)
                    {
                        //GridView1.FooterRow.Cells[2].Text = "總價格";
                        GridView1.FooterRow.Cells[5].Text = "共:" + paytotal().ToString() + "NTD";
                        GridView1.FooterRow.Cells[4].Text = totalqty().ToString() + "件商品";
                    }
                }
            }
        }



        public int paytotal() //算總價
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitem"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int pay = 0;
            while (i < nrow)
            {
                pay += Convert.ToInt32(dt.Rows[i]["total"].ToString());
                i += 1;
            }
            return pay;
        }

        public int totalqty()  //計算數量
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitem"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int x = 0;
            while (i < nrow)
            {
                x += Convert.ToInt32(dt.Rows[i]["qty"].ToString());
                i += 1;
            }
            return x;
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();  //刪除欄
            dt = (DataTable)Session["buyitem"];

            for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for(int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitem"] = dt;
            Response.Redirect("cart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pay/paypage.aspx");
        }

        protected void Button101_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/homepage.aspx");
        }
    }
}
