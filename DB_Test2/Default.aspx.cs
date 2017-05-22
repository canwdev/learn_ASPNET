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
        BindDB();
        //EmptyTextBox();
    }

    protected void BindDB() 
    {
        //var data = from r in db.stu select r;
        var data = from r in db.stu select new {r.id, r.stu_xh, r.stu_name };
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        stu stu_info = new stu();   //stu是表的名字
        stu_info.stu_name = txt_stuName.Text;
        stu_info.stu_xh = txt_stuID.Text;
        db.stu.InsertOnSubmit(stu_info);
        db.SubmitChanges();
        BindDB();
        
        //EmptyTextBox(); 
    }
    protected void btn_modifys_Click(object sender, EventArgs e)
    {
        var results = from r in db.stu
                      where r.id == int.Parse(txt_id.Text)
                      select r;
        if (results != null)
        {
            foreach (stu r in results)
            {
                r.stu_name = txt_stuName.Text;
                r.stu_xh = txt_stuID.Text;
            }
            db.SubmitChanges();
            BindDB();
        }
        //EmptyTextBox();
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        var results = from r in db.stu
                      where r.id == int.Parse(txt_id.Text)
                      select r;
        db.stu.DeleteAllOnSubmit(results);
        db.SubmitChanges();
        BindDB();

        //EmptyTextBox();
    }

    protected void EmptyTextBox()
    {
        txt_stuID.Text = "";
        txt_stuName.Text = "";
        txt_id.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        db.StoredProcedure1(txt_stuID.Text, txt_stuName.Text);
        BindDB();
        //EmptyTextBox();
    }
}