using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace shopDEMO
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Button1.Enabled = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != null)
            {
                string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
                SqlConnection conn = new SqlConnection(s_data);
                SqlCommand ck = new SqlCommand("select * from VIPmember where id='" + TextBox1.Text + "'", conn);
                conn.Open();
                SqlDataReader rd = ck.ExecuteReader();

                if (rd.HasRows)
                {
                    Label1.Text = "此帳號已被使用";
                }
                else
                {
                    Label1.Text = "可以使用此帳號!";
                    Button1.Enabled = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //SqlConnection conn = new SqlConnection();
            //conn.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=member;Persist Security Info=True;User ID=TonyDu;Password=a5832463";
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(s_data);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into VIPmember(id,pswd,ckpswd,name,tel,address,gender)values(@id,@pswd,@ckpswd,@name,@tel,@address,@gender)", conn);

            cmd.Parameters.Add("@id", SqlDbType.VarChar, 10).Value = TextBox1.Text;
            cmd.Parameters.Add("@pswd", SqlDbType.VarChar, 10).Value = TextBox2.Text;
            cmd.Parameters.Add("@ckpswd", SqlDbType.VarChar, 10).Value = TextBox3.Text;
            cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50).Value = TextBox4.Text;
            cmd.Parameters.Add("@tel", SqlDbType.NVarChar, 50).Value = TextBox5.Text;
            cmd.Parameters.Add("@address", SqlDbType.NVarChar, 50).Value = TextBox6.Text;
            cmd.Parameters.Add("@gender", SqlDbType.NVarChar, 50).Value = RadioButtonList1.SelectedValue;
            //cmd.Parameters.Add("@[e-mail]", SqlDbType.NVarChar, 50).Value = TextBox5.Text;

            cmd.ExecuteNonQuery();
            

            Response.Redirect("create suscc.aspx");

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        
    }
}