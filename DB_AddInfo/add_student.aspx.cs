using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mgr_user_add_student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        switch (DropDownList1.SelectedValue.ToString())
        {
            case "beijing":
                DropDownList2.Items.Add("beijing1");
                DropDownList2.Items.Add("beijing2");
                break;
            case "shanghai":
                DropDownList2.Items.Add("shanghai1");
                DropDownList2.Items.Add("shanghai2");
                break;
            case "jiangxi":
                DropDownList2.Items.Add("九江");
                DropDownList2.Items.Add("南昌");
                break;
            default:
                break;
        }
    }
    protected void btn_showcalendar_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txt_date.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
        Calendar1.Visible = false;
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {

    }
}