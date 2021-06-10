using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shopDEMO
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int upcount = 0;
            string upname = null;
            string tmpname = null;
            string tmpsize = null;
            string tmptype = null;

            for(int i = 0; i < Request.Files.Count; i++)
            {
                HttpPostedFile upfile = Request.Files[i];
                if (upfile.FileName != "" & upfile.ContentLength > 0)
                {
                    upcount += 1;
                    upname = upfile.FileName.Substring(upfile.FileName.LastIndexOf(@"\") + 1);
                    upfile.SaveAs(Server.MapPath(@"~\pic\" + upname));

                    tmpname += "【" + upname + "】";
                    tmpsize += "【" + Math.Round((decimal)upfile.ContentLength / 1024, 2) + "KB】";
                    tmptype += "【" + upfile.ContentType + "】";
                }
                if (upcount == 0)
                {
                    Label1.Text = "上傳失敗";
                    Panel1.Visible = false;
                }
                else
                {
                    Label1.Text = "上傳成功";
                    Panel1.Visible = true;
                    count.Text = upcount.ToString();
                    name.Text = tmpname;
                    size.Text = tmpsize;
                    type.Text = tmptype;
                }
            }
        }
    }
}