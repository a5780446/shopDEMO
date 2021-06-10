﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO
{
    public partial class baord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            DetailsView1.Visible = false;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            GridView1.Visible = false;
            Button1.Visible = false;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=member;Persist Security Info=True;User ID=TonyDu;Password=a5832463";
            conn.Open();

            if(Session["logined"] != null)
            {
                SqlCommand cmd = new SqlCommand("insert into board(id,name,head,conten)values(@id,@name,@head,@conten)", conn);
                cmd.Parameters.Add("@id", SqlDbType.NVarChar, 50).Value = Session["ID"].ToString();
                cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@head", SqlDbType.NVarChar, 50).Value = TextBox2.Text;
                cmd.Parameters.Add("@conten", SqlDbType.NVarChar, 50).Value = TextBox3.Text;
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into board(id,name,head,conten)values(@id,@name,@head,@conten)", conn);
                cmd.Parameters.Add("@id", SqlDbType.NVarChar, 50).Value = "非會員";
                cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@head", SqlDbType.NVarChar, 50).Value = TextBox2.Text;
                cmd.Parameters.Add("@conten", SqlDbType.NVarChar, 50).Value = TextBox3.Text;
                cmd.ExecuteNonQuery();
            }

            
            Response.Redirect("board.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("board.aspx");
        }

        protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            if (e.CommandName == "return")
            {
                DetailsView1.Visible = false;
                GridView1.Visible = true;
                Button1.Visible = true;
                
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button1.Visible = false;
            GridView1.Visible = false;
            DetailsView1.PageIndex = GridView1.SelectedIndex;
            DetailsView1.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}