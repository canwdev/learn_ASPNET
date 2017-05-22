using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TalkMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["UserName"] != null && Request.Cookies["UserName"].Value != "")
        {
            lbl_CurrentUserName.Text = "欢迎登录："+Request.Cookies["UserName"].Value;
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        Application["message"] = Request.Cookies["UserName"].Value + "&nbsp&nbsp[" + DateTime.Now + "]<br/>"
            + txt_SendText.Text + "<br/><br/>";

        lbl_TalkMain.Text += Application["message"].ToString();

        txt_SendText.Text = "";
        txt_SendText.Focus();
    }

    protected void btn_clear_Click(object sender, EventArgs e)
    {
        lbl_TalkMain.Text = "";
        Application["message"] = "";
    }

    protected void btn_exit_Click(object sender, EventArgs e)
    {
        Response.Cookies["UserName"].Value = null;
        Response.Redirect("Login.aspx");
    }

    protected void txt_SendText_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        txt_SendText.Focus();
        if (lbl_TalkMain.Text.IndexOf(Application["message"].ToString()) < 0)
        {
            lbl_TalkMain.Text += Application["message"].ToString();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "new", "scrollDown()", true);
        }
    }
}