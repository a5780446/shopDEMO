using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace shopDEMO.product
{
    public partial class shoppage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitem"];
            if (dt != null)
                Label1.Text = dt.Rows.Count.ToString();
            else
                Label1.Text = "0";


            //Label2.Text = Session["logined"].ToString();
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

        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "jump")
            {
                Response.Redirect("productSHOW.aspx?id=" + e.CommandArgument.ToString()); 
            }  //點選 商品跳轉到商品詳細頁面


            /*if (e.CommandName == "addtocart")
            {
                Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString());
            } //點選 [加入購物車] 跳轉到購物車頁面*/
        }

        protected void Button101_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/homepage.aspx");
        }
    }
}