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

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            
            switch (Menu1.SelectedItem.Text)
            {
                case "男生上著":
                    SqlDataSource1.SelectCommand = "select * from product where id like '1___8'";
                    break;
                case "男生下著":
                    SqlDataSource1.SelectCommand = "select * from product where id like '1___9'";
                    break;
                case "女生上著":
                    SqlDataSource1.SelectCommand = "select * from product where id like '2___8'";
                    break;
                case "女生下著":
                    SqlDataSource1.SelectCommand = "select * from product where id like '2___9'";
                    break;
                case "孩童上著":
                    SqlDataSource1.SelectCommand = "select * from product where id like '3___8'";
                    break;
                case "孩童下著":
                    SqlDataSource1.SelectCommand = "select * from product where id like '3___9'";
                    break;



            }
        }
    }
}