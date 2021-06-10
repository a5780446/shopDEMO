using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logined"] == null)
            {
                Label1.Text = "0";
            }
            else
            {
                Label1.Text = Session["logined"].ToString();
                Response.Redirect("VIPhomepage.aspx");
            }
            
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("backsingin.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("board.aspx");
        }
    }
}