using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO.pay
{
    public partial class finish : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["logined"] !=null)
            {
                Label1.Text = Session["user"] + "  交易完成 , 感謝您的購買!".ToString();
                Label2.Text = Session["order"].ToString();
                Session.Remove("buyitem");
            }
            else
            {
                Label1.Text =  "交易完成 , 感謝您的購買!";
                Label2.Text = Session["order"].ToString();
                Session.RemoveAll();
            }
            

           
        }
    }
}