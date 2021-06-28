using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO.pay
{
    public partial class game : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Random x = new Random();
            int z = x.Next(3);

            switch (z)
            {
                case 0:
                    ImageButton1.ImageUrl = "~/pic/10OFF.jpg";
                    Session["off"] = "10";
                    break;
                case 1:
                    ImageButton1.ImageUrl = "~/pic/20OFF.jpg";
                    Session["off"] = "20";
                    break;
                case 2:
                    ImageButton1.ImageUrl = "~/pic/30OFF.jpg";
                    Session["off"] = "30";
                    break;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Random x = new Random();
            int z = x.Next(3);

            switch (z)
            {
                case 0:
                    ImageButton2.ImageUrl = "~/pic/10OFF.jpg";
                    Session["off"] = "10";
                    break;
                case 1:
                    ImageButton2.ImageUrl = "~/pic/20OFF.jpg";
                    Session["off"] = "20";
                    break;
                case 2:
                    ImageButton2.ImageUrl = "~/pic/30OFF.jpg";
                    Session["off"] = "30";
                    break;
            }

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Random x = new Random();
            int z = x.Next(3);

            switch (z)
            {
                case 0:
                    ImageButton3.ImageUrl = "~/pic/10OFF.jpg";
                    Session["off"] = "10";
                    break;
                case 1:
                    ImageButton3.ImageUrl = "~/pic/20OFF.jpg";
                    Session["off"] = "20";
                    break;
                case 2:
                    ImageButton3.ImageUrl = "~/pic/30OFF.jpg";
                    Session["off"] = "30";
                    break;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["pay"]="8";
            Response.Redirect("paypage.aspx");
        }
    }
}


       
