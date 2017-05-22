using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAccess_mgr_password_modify : System.Web.UI.Page
{
    CallDB cdb = new CallDB();
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断是否有权访问该页面
        if (Session["LoginKey"] == null || Session["LoginKey"].ToString() != PrivateKey.adminKey)
        {
            Response.Redirect("deny.html");
        }
        lbl_ok.Visible = false;
        lbl_error.Visible = false;
    }
    protected void btn_modify_Click(object sender, EventArgs e)
    {
        if (txt_new_password.Text == txt_password_repeat.Text)      //再次判断密码一致
            ModifyPassword(txt_origin_password.Text, txt_new_password.Text);    
        else
            CallJS.Alert("两次密码不一致。");
    }

    protected void ModifyPassword(String originPass, String newPass)
    {
        try
        {
            cdb.Open();
            cdb.exeCmd("select Password from login_admin where UserName = 'admin'");
            cdb.dbReader.Read();
            String originPassword = cdb.dbReader["Password"].ToString();
            cdb.Close();

            if (originPassword == originPass)       //判断原始密码是否一致
            {
                cdb.Open();
                cdb.exeCmd("update login_admin set [Password] = '" + newPass + "' where [UserName] = 'admin'");    //修改密码语句
                cdb.Close();

                cdb.Open();
                cdb.exeCmd("select Password from login_admin where UserName = 'admin'");
                cdb.dbReader.Read();
                String newPassword = cdb.dbReader["Password"].ToString();
                cdb.Close();

                if (newPassword == newPass)    //检查是否修改成功
                {
                    lbl_ok.Text = "密码修改成功！";
                    lbl_ok.Visible = true;
                }
                else
                {
                    throw  new Exception("密码修改失败！");
                }
            }
            else 
            {
                lbl_error.Text = "原始密码错误";
                lbl_error.Visible = true;
            }
       }
        catch (Exception e)
        {
            lbl_error.Text = "修改失败: "+e.Message;
            lbl_error.Visible = true;
        }
        finally
        {
            cdb.Close();
        }
    }
}