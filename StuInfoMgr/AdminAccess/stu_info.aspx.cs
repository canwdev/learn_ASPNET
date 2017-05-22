using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.OleDb;

public partial class StudentAccess_info_select : System.Web.UI.Page
{
    CallDB cdb = new CallDB();
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断是否有权访问该页面
        if (Session["LoginKey"] == null || Session["LoginKey"].ToString() != PrivateKey.adminKey)
        {
            Response.Redirect("deny.html");
        }

        try
        {
            cdb.Open();
            cdb.exeCmd("select * from student where stuID=" + Request.QueryString["stuID"]);

            //dbReader.Read()用于读取，如果没有UserName的值，不继续执行判断密码是否正确

            if (cdb.dbReader.Read())
            {
                stuName.Text = cdb.dbReader["stuName"].ToString();
                stuID.Text = cdb.dbReader["stuID"].ToString();
                birthday.Text = Convert.ToDateTime(cdb.dbReader["birthday"]).ToString("yyyy-MM-dd");
                sex.Text = StuTools.Convert("sex",cdb.dbReader["sex"].ToString());
                homeplace.Text = cdb.dbReader["homeplace"].ToString();
                tel.Text = cdb.dbReader["tel"].ToString();
                classID.Text = cdb.dbReader["classID"].ToString();
                specID.Text = cdb.dbReader["specID"].ToString();
                lesID.Text = cdb.dbReader["lesID"].ToString();
                etc.Text = cdb.dbReader["etc"].ToString();
                cdb.Close();      //关闭数据库
                //CallJS.Alert("登陆成功！");



            }
            else
            {
                cdb.Close();
                Response.Write("连接失败");

            }
        }
        catch
        {
            Response.Write("连接失败");
        }



    }
}