using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace shopDEMO.product
{
    public partial class woman : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitem"];
            if (dt != null)
                Label1.Text = dt.Rows.Count.ToString();
            else
                Label1.Text = "0";
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "jump")
            {
                Response.Redirect("productSHOW.aspx?id=" + e.CommandArgument.ToString());
            }  //點選 商品跳
        }
    }
}