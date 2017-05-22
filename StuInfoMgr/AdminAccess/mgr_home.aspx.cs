using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        

        if (Session["LoginKey"] != null && Session["LoginKey"].ToString() == PrivateKey.adminKey)
        {
            lbl_username.Text = "当前登陆："+Session["UserName"];
        }
        else
        {
            Response.Redirect("../Login.aspx");
        }
    }

    /// <summary>
    /// 退出登录
    /// </summary>
    protected void btn_exit_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Session["LoginKey"] = null;
        Response.Redirect("../Login.aspx");
    }
}