﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace shopDEMO.pay
{
    public partial class paypage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //int orderid;
            Random x = new Random();
            //orderid = x.Next(0001, 1000);
            //Label1.Text = orderid.ToString();

            string orderid="";
            string y;
            y = DateTime.Now.ToShortDateString();
            string[] z = y.Split('/');
            foreach(var item in z)
            {
                orderid += item;
            }
            
            orderid += x.Next(0001, 1000).ToString();
            Label1.Text = orderid.ToString();

            Session["order"] = orderid;



            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("id");
                dt.Columns.Add("model");
                dt.Columns.Add("size");
                dt.Columns.Add("price");
                //dt.Columns.Add("cost");
                //dt.Columns.Add("total");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitem"] == null)
                    {
                        dr = dt.NewRow();
                        //string mycon = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=member;Integrated Security=True";
                        //SqlConnection conn = new SqlConnection(mycon);
                        string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
                        SqlConnection conn = new SqlConnection(s_data);
                        string query = "select * from product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = query;
                        cmd.Connection = conn;

                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();

                        da.Fill(ds);
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["model"] = ds.Tables[0].Rows[0]["model"].ToString();
                        dr["size"] = Request.QueryString["size"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"]; //int
                        //int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitem"] = dt;

                        //-------------------------//
                        Session["buyitem"] = dt;
                        //GridView1.FooterRow.Cells[2].Text = "總價格";
                        GridView1.FooterRow.Cells[3].Text = "共:" + paytotal().ToString() + "NTD";
                        Response.Redirect("cart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitem"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        //string mycon = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=member;Integrated Security=True";
                        //SqlConnection conn = new SqlConnection(mycon);
                        string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
                        SqlConnection conn = new SqlConnection(s_data);
                        string query = "select * from product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = query;
                        cmd.Connection = conn;

                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();

                        da.Fill(ds);
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["model"] = ds.Tables[0].Rows[0]["model"].ToString();
                        dr["size"] = Request.QueryString["size"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"]; //int
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitem"] = dt;


                        //----------//
                        //GridView1.FooterRow.Cells[2].Text = "總價格";
                        GridView1.FooterRow.Cells[3].Text = "共:" + paytotal().ToString() + "NTD";
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
                        GridView1.FooterRow.Cells[3].Text = "共:" + paytotal().ToString() + "NTD";
                    }
                }

                Label2.Text = dt.Rows.Count.ToString();
            }
        }
        public int paytotal()  //計算總價
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitem"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int pay = 0;
            while (i < nrow)
            {
                pay += Convert.ToInt32(dt.Rows[i]["price"].ToString());
                i += 1;
            }
            return pay;
        }

        public void update() //訂單外觀
        {
            //SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=member;Integrated Security=True");
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(s_data);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into orderout(id,name,tel,take,tips) values('" + Label1.Text + "',N'" + TextBox1.Text + "','"+TextBox2.Text+"',N'"+DropDownList1.SelectedValue+"',N'"+TextBox3.Text+"')",conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }




        protected void Button1_Click(object sender, EventArgs e) //訂單詳細
        {
            
             DataTable dt;
             dt = (DataTable)Session["buyitem"];
            
            
            for(int i = 0; i <= dt.Rows.Count-1 ; i++)
            {
                string insertcmd = "insert into orderin(orderid,id,model,size,price) values('" + Label1.Text + "','" + dt.Rows[i]["id"] + "',N'" + dt.Rows[i]["model"] + "','"+dt.Rows[i]["size"]+"'," + dt.Rows[i]["price"] + ")";
                //string myconn = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=member;Integrated Security=True";
                string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
                //SqlConnection conn = new SqlConnection(s_data);
                SqlConnection s = new SqlConnection(s_data);
                s.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = insertcmd;
                cmd.Connection = s;
                cmd.ExecuteNonQuery();
                s.Close();
            }
            update();
            Response.Redirect("finish.aspx");
        }
        
    }

}