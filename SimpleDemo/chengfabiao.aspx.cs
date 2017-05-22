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
        lbl_cfb.Text = print_cfb();
    }

    public string print_cfb()
    {
        string tmp = "";
        for (int i = 1; i <= 9; i++)
        {
            for (int j = 1; j <= i; j++)
            {
                tmp += i + "*" + j + "=" + i * j + "&nbsp";
            }
            tmp += "</br>";
        }
        return tmp;
    }
}