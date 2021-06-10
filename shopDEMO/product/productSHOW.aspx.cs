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
           
             
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                //Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString());


                RadioButtonList selsize = (RadioButtonList)(e.Item.FindControl("RadioButtonList1"));
                Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString() + "&size=" + selsize.SelectedItem.ToString());
            }
        }
    }
}