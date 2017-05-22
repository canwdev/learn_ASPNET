using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public DataClassesDataContext db = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        stu data = new stu();
        data.stu_name = TextBox1.Text;
        data.stu_pass = TextBox2.Text;
        data.stu_sex = RadioButtonList1.SelectedValue;
        data.stu_city = DropDownList1.SelectedItem + "," + DropDownList2.SelectedValue;
        data.stu_hobby = CheckBoxList1.SelectedValue;   //!!!
        data.stu_etc = TextBox3.Text;
        db.stu.InsertOnSubmit(data);
        db.SubmitChanges();


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        /*DropDownList2.Items.Clear();
        var results = from r in db.city
                      where r.province_id == DropDownList1.SelectedValue.ToString()
                      select r;
        DropDownList2.DataSource = results;
        DropDownList2.DataBind();*/
    }
}