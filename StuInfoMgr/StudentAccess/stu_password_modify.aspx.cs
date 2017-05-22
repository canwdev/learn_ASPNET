using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.OleDb;

public partial class StudentAccess_stu_password_modify : System.Web.UI.Page
{

    CallDB cdb = new CallDB();
    protected void Page_Load(object sender, EventArgs e)
    {
       

        try
        {
            cdb.Open();
            cdb.exeCmd("select * from student where stuID=" + Session["UserName"]);


            if (cdb.dbReader.Read() != null)
            {

                stuName.Text = cdb.dbReader["stuName"].ToString();
                stuID.Text = cdb.dbReader["stuID"].ToString();
            }
            else
            {
                Response.Write("<script>alert('   ')</script>");
            }
            cdb.Close();

        }
        catch(Exception e1)
        {
            Response.Write("连接失败:"+e1.Message);
        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {

      cdb.Open();
       

        cdb.exeCmd("select * from login_student where stuID= " + Session["stuID"]);
        // Response.Write(cdb.dbReader["Password"].ToString());


        if (/*cdb.dbReader.Read() != null && */cdb.dbReader["Password"].ToString() == oldpw_TextBox1.Text)
        {
            cdb.Close();
           
                if (string.Equals(newpw_TextBox2.Text, again_TextBox3.Text) && again_TextBox3.Text != "")
                {
                    cdb.Open();
                    cdb.exeCmd("update login_student set [Password] = '" + again_TextBox3.Text + "' where  stuID = " + Session["stuID"]);

                    Response.Write("<script>alert('修改密码成功!')</script>");

                }
                else
                {

                    Response.Write("<script>alert('两次密码不一致')</script>");

                }

            

         
        }
        else
        { Response.Write("<script>alert('旧密码输入有误!')</script>"); }
        cdb.Close();


    }







    protected void Button1_Click(object sender, EventArgs e)
    {


        Response.Redirect("HomePage.aspx");

    }
}



   

   
