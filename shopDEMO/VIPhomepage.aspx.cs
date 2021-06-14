using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO
{
    public partial class VIPhomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logined"] == null)
            {
                Response.Redirect("singin.aspx");
            }
            
             Label1.Text = "歡迎回來~" + Session["user"];
            
            

            
        }

        protected void Button2_Click(object sender, EventArgs e)  //登出
        {
            Session.RemoveAll();
            Response.Redirect("~/homepage.aspx");
        }


        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "jump")
            {
                Response.Redirect("mamberdata.aspx?id=" + Session["ID"].ToString());
            }  
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("board.aspx");
        }
    }
}