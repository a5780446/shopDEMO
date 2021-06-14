using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO.back
{
    public partial class createProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // 圖片上傳

            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath(@"~\pic\" + FileUpload1.FileName));
                Label1.Text = FileUpload1.FileName;
                Label2.Text = "上傳成功";


            }
            else
            {
                Label2.Text = "上傳失敗";
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["memberConnectionString1"].ConnectionString;
            SqlConnection conn = new SqlConnection(s_data);
            //SqlConnection conn = new SqlConnection();
            //conn.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=member;Persist Security Info=True;User ID=TonyDu;Password=a5832463";
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into product(id,model,size,color,qty,price,image)values(@id,@model,@size,@color,@qty,@price,@image)", conn);
            cmd.Parameters.Add("@id", SqlDbType.NVarChar, 50).Value = TextBox1.Text;
            cmd.Parameters.Add("@model", SqlDbType.NVarChar, 50).Value = TextBox2.Text;
            cmd.Parameters.Add("@size", SqlDbType.NVarChar, 50).Value = TextBox3.Text;
            cmd.Parameters.Add("@color", SqlDbType.NVarChar, 50).Value = TextBox4.Text;
            cmd.Parameters.Add("@qty", SqlDbType.Int).Value = TextBox5.Text;
            cmd.Parameters.Add("@price", SqlDbType.Int).Value = TextBox6.Text;
            cmd.Parameters.Add("@image", SqlDbType.NVarChar,50).Value = @"~\pic\"+Label1.Text;
            //cmd.Parameters.Add("@[e-mail]", SqlDbType.NVarChar, 50).Value = TextBox5.Text;

            cmd.ExecuteNonQuery();
        }

        
    }
}