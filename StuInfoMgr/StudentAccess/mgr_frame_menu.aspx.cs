using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frame_menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断是否有权访问该页面
        if (Session["LoginKey"] == null || Session["LoginKey"].ToString() != PrivateKey.studentKey)
        {
            Response.Redirect("deny.html");
        }
    }
    /// <summary>
    /// 退出登录
    /// </summary>
    protected void btn_exit_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Session["LoginKey"] = null;
        string js = @"<Script language='JavaScript'>
               top.location.reload(); </Script>";
        HttpContext.Current.Response.Write(js);

    }
}