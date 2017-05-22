using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.OleDb;

public partial class Login : System.Web.UI.Page
{
    String strConn;             //连接字符串：包含版本和连接路径等
    OleDbConnection dbConn;     //声明一个OleDbCommand对象

    protected void Page_Load(object sender, EventArgs e)
    {
        //载入时判断cookie记录了选择的哪个模式(有错误)
        /*if (Request.Cookies["ddl_switchMode"] != null)
        {
            switch (Request.Cookies["ddl_switchMode"].Value) 
            {
                case "login_student":
                    ddl_switchMode.SelectedIndex = 0;
                    break;
                case "login_admin":
                    ddl_switchMode.SelectedIndex = 1;
                    break;
            }
        }*/
        

        strConn = WebConfigurationManager.ConnectionStrings["Access"].ConnectionString; ;                                //数据库存放路径
        strConn = strConn.Replace("{0}", Server.MapPath(WebConfigurationManager.AppSettings["AccessPath"].ToString()));     //数据库存放路径
        dbConn = new OleDbConnection(strConn);      //创建数据库连接
    }

    protected void goLogin(String mode)
    {
        String username = txt_username.Text;    //用户名和密码
        String password = txt_password.Text;
        String sqlCmd = "";
        OleDbDataReader dbReader = null;
        OleDbCommand exeCmd = null;

        if (mode == "login_student") 
        {
            sqlCmd = "select Password from " + mode + " where stuID= " + username;     //sql语句
        }
        else if (mode == "login_admin")
        {
            sqlCmd = "select Password from " + mode + " where UserName= '" + username + "' ";     //sql语句
        }
        else
        {
            return;
        }

        try
        {
            exeCmd = new OleDbCommand(sqlCmd, dbConn);
            exeCmd.Connection.Open();                //打开数据库
            dbReader = exeCmd.ExecuteReader();  //数据库阅读器
        
        

            //dbReader.Read()用于读取，如果没有UserName的值，不继续执行判断密码是否正确
            if (dbReader.Read() && password == dbReader["Password"].ToString())
            {
                exeCmd.Connection.Close();      //关闭数据库
                //CallJS.Alert("登录成功！");
                lbl_loginMod.Text = "登录成功！";
                if (mode == "login_student")
                {
                    Session["UserName"] = txt_username.Text;             //登陆用户名
                    Session.Timeout = 1440;
                    Session["LoginKey"] = PrivateKey.studentKey;       //这个是登录密钥，暂时固定，以后可以随机生成来提升安全性
                    Session.Timeout = 1440;
                    Response.Redirect("./StudentAccess/mgr_home.aspx");

                }
                else if (mode == "login_admin")
                {
                    Session["UserName"] = txt_username.Text.Trim();
                    Session.Timeout = 1440;
                    Session["LoginKey"] = PrivateKey.adminKey;
                    Session.Timeout = 1440;
                    Response.Redirect("./AdminAccess/mgr_home.aspx");

                }
            
            }
            else
            {
                exeCmd.Connection.Close();
                lbl_loginMod.Text = "用户名或密码错误";
                //CallJS.Alert("用户名或密码错误");
            }
        }
        catch
        {
            //TODO:判断输入的是学号（整数）还是用户名（字符串）。
            lbl_loginMod.Text = "学生登录需要输入学号";
        }

    }

    /// <summary>
    /// 登录按钮事件
    /// </summary>
    protected void btn_login_Click(object sender, EventArgs e)
    {
        //判断是学生登录还是管理员
        switch (ddl_switchMode.SelectedValue.ToString())
        {
            case "login_student":
                goLogin("login_student");
                break;
            case "login_admin":
                goLogin("login_admin");
                break;
            default:
                lbl_loginMod.Text = "不能登录";
                break;
        }
    }

    /// <summary>
    /// 切换登录模式
    /// </summary>
    protected void ddl_switchMode_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ddl_switchMode.SelectedValue.ToString())
        {
            case "login_student":
                //Response.Cookies["ddl_switchMode"].Value = "login_student";
                break;
            case "login_admin": 
                //Response.Cookies["ddl_switchMode"].Value = "login_admin";
                break;
            default:
                lbl_loginMod.Text = "不能登录";
                break;
        }
    }

}