using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAccess_stu_query : System.Web.UI.Page
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
            writeTable("TableHead");
            cdb.Open();
            cdb.exeCmd("select * from student");
            while (cdb.dbReader.Read())
            {
                writeTable("TableMain");
            }
            writeTable("TableEnd");
        }
        catch
        {
            lbl_infoTable.Text = "<hr><center><p>查询无结果</p></center>";
        }
        cdb.Close();
    }
    protected void btn_query_Click(object sender, EventArgs e)
    {
        lbl_infoTable.Text = "";
        queryFromStu(txt_stuID.Text,txt_stuName.Text);
    }

    protected void queryFromStu(String stuID, String stuName)
    {
        //Boolean result = false;     //标记是否有结果
        try
        {
            cdb.Open();
            if (stuID != "")
            {
                cdb.exeCmd("select top 100  * from student where stuID like " + stuID);
                //cdb.exeCmd("select top 100  * from student where stuName like '*" + stuName + "*'");
                writeTable("TableHead");
                while (cdb.dbReader.Read())
                    writeTable("TableMain");
                writeTable("TableEnd");
            }
            else if (stuName != "")
            {

                cdb.exeCmd("select top 100  * from student where stuName like '%" + stuName + "%'");
                writeTable("TableHead");
                while (cdb.dbReader.Read())
                    writeTable("TableMain");
                writeTable("TableEnd");
            }
            else if (stuID == "" && stuName == "")
            {
                writeTable("TableHead");
                cdb.exeCmd("select top 100 * from student");
                while (cdb.dbReader.Read())
                    writeTable("TableMain");
                writeTable("TableEnd");
            }
        }
        catch
        {
            lbl_infoTable.Text = "<hr><center><p>查询无结果</p></center>";
        }
        finally {
            cdb.Close();
        }
    }

    protected void writeTable(String mode)
    {
        switch (mode)
        {
            case "TableHead":
                {
                    lbl_infoTable.Text += "<hr>" + "<table width=600 border=1 bordercolor=#d8d8d8 align=center cellpadding=5 cellspacing=0 style=\"border-collapse:collapse\">"
                        + "<tr bgcolor=#eaeaea align=center><td>✏</td><td>✏</td><td>学号</td>" + "<td>姓名</td>" + "<td>性别</td>" + "<td>出生日期</td>" + "<td>住址</td>" + "<td>电话</td>" + "</tr>";
                }
                break;
            case "TableMain":
                {
                    lbl_infoTable.Text += "<tr>";
                    lbl_infoTable.Text += "<td><a href='stu_update.aspx?update=mod&stuID=" + cdb.dbReader["stuID"].ToString() + "' target=\"frmmain\">编辑</a></td>";
                    lbl_infoTable.Text += "<td><a href='stu_info.aspx?stuID=" + cdb.dbReader["stuID"].ToString() + "' target=\"frmmain\">详细</a></td>";
                    lbl_infoTable.Text += "<td>" + cdb.dbReader["stuID"].ToString() + "</td>";
                    lbl_infoTable.Text += "<td>" + cdb.dbReader["stuName"].ToString() + "</td>";
                    lbl_infoTable.Text += "<td>" + StuTools.Convert("sex", cdb.dbReader["sex"].ToString()) + "</td>";
                    DateTime dt = Convert.ToDateTime(cdb.dbReader["birthday"].ToString());
                    lbl_infoTable.Text += "<td>" + dt.ToShortDateString() + "</td>";
                    lbl_infoTable.Text += "<td>" + cdb.dbReader["home"].ToString() + "</td>";
                    lbl_infoTable.Text += "<td>" + cdb.dbReader["tel"].ToString() + "</td>";
                    lbl_infoTable.Text += "</tr>";
                }
                break;
            case "TableEnd":
                {
                    lbl_infoTable.Text += "</table>";
                }
                break;
            default:
                break;
        }
    }

}