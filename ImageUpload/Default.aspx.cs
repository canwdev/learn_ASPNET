using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_upload_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("./upload/");   // 存放路径
        if (FileUpload1.HasFile)
        {
            string fname = FileUpload1.FileName;        // 获取文件名
            string fext = fname.Substring(fname.LastIndexOf("."));      // 获取文件格式

            if (fext == ".jpg" || fext == ".png" || fext == ".gif")
            {
                
                
                FileUpload1.SaveAs(path+fname);
                lbl_image_info.Text = fname + "  ->  " + path + fname + "  OK";
                Image1.ImageUrl = "./upload/" + fname;
            }
            else
            {
                Response.Write("<script language=javascript>alert('不支持的图像格式');</" + "script>");
            }
        }
        else
        {
            Response.Write("<script language=javascript>alert('null');</" + "script>");
        }
        
    }
}