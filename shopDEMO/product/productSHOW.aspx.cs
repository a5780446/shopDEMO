using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO.product
{
    public partial class productSHOW : System.Web.UI.Page
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

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                //Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString());


                RadioButtonList selsize = (RadioButtonList)(e.Item.FindControl("RadioButtonList1"));
                DropDownList selqty = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString() + "&size=" + selsize.SelectedItem.ToString()+"&qty="+selqty.SelectedItem.ToString());
            }
        }

        protected void Button101_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/homepage.aspx");
        }
    }
}