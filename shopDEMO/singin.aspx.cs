using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO
{
    public partial class singin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["logined"] != null && Session["logined"].ToString() == "1")
            {
                Response.Redirect("VIPhomepage.aspx");
            }
            else
            {
                if (TextBox1.Text != "" && TextBox2.Text != "")
                {
                    string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
                    SqlConnection conn = new SqlConnection(s_data);
                    string sqlcommand = "select * from VIPmember where id = '" + TextBox1.Text + "'"; //sql語法灌進去
                    SqlCommand cmd = new SqlCommand(sqlcommand, conn);
                    conn.Open();
                    SqlDataReader Reader = cmd.ExecuteReader();

                    if (Reader.HasRows)
                    {
                        if (Reader.Read())
                        {
                            //Label2.Text = Reader["pswd"].ToString();
                            if (Reader["pswd"].ToString() == TextBox2.Text)
                            {
                                Session["logined"] = "1";
                                Session["user"] = Reader["name"].ToString();
                                Session["ID"] = Reader["id"].ToString();
                                Response.Redirect("VIPhomepage.aspx");
                            }
                            else
                                Label1.Text = "密碼錯誤";
                        }
                        conn.Close();
                    }
                }
                else
                {
                    Label1.Text = "查無此帳號!";

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
    }
}