using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO.back
{
    public partial class board_ctrl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            DetailsView1.PageIndex = GridView1.SelectedIndex;
            DetailsView1.Visible = true;
        }

        protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            if (e.CommandName == "return")
            {
                DetailsView1.Visible = false;
                GridView1.Visible = true;

            }
        }
    }
}