using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jisuanshang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        float a = 0f, b = 0f, c = 0f;
        try
        {
            a = float.Parse(TextBox1.Text);
            b = float.Parse(TextBox2.Text);

            c = a / b;
            lbl_result.Text = c.ToString();
        }
        catch
        {
            lbl_result.Text = "输入有误。";
        }
    }
}