using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

public partial class AdminAccess_stu_update : System.Web.UI.Page
{
    String UpdateMode = "";
    CallDB cdb = new CallDB();
    String stuID, newStuID, stuName, sex, birthday, home, homeplace, tel, etc;
    Boolean QueryStringStuIDFlag = true;    //只有第一次传值时才使用该值的标记

    protected void Page_Load(object sender, EventArgs e)
    {
        //判断是否有权访问该页面
        if (Session["LoginKey"] == null || Session["LoginKey"].ToString() != PrivateKey.adminKey)
        {
            Response.Redirect("deny.html");
        }

        lbl_ok.Visible = false;
        lbl_error.Visible = false;
        txt_mod_stuID.Visible = false;
        btn_mod_query.Visible = false;
        btn_back.Visible = false;

        if (Request.QueryString["update"] == "new")
        {
            UpdateMode = "add";
            lbl_updateMode.Text = "新增信息";
            btn_update.Text = "添加";
            btn_delete.Visible = false;
        }
        else if (Request.QueryString["update"] == "mod")
        {
            UpdateMode = "mod";
            lbl_updateMode.Text = "修改信息";
            btn_update.Text = "修改";
            txt_mod_stuID.Visible = true;
            btn_mod_query.Visible = true;
            btn_back.Visible = true;
            if (QueryStringStuIDFlag && Request.QueryString["stuID"] != null)
            {
                QueryStringStuIDFlag = false;
                stuID = Request.QueryString["stuID"];
                txt_mod_stuID.Text = stuID;
                modStuSetInfo();
                
            }
        }
        
    }

    /// <summary>
    /// “更新”按钮点击事件
    /// </summary>
    protected void btn_update_Click(object sender, EventArgs e)
    {
        if (UpdateMode == "add")
        {
            addStudent();
        }
        else if (UpdateMode == "mod")
        {
            modifyStudent();
        }
        else
        {
            lbl_error.Text = "失败：模式错误";
        }
    }

    /// <summary>
    /// 添加学生信息
    /// </summary>
    protected void addStudent()
    {
        stuID = txt_stuID.Text;
        stuName = txt_stuName.Text;
        sex = rbl_sex.Text;
        birthday = txt_birthday.Text;
        home = txt_home.Text;
        homeplace = txt_homeplace.Text;
        tel = txt_tel.Text;
        etc = txt_etc.Text;

        try
        {
            cdb.Open();
            cdb.exeCmd("select [ID] from student where stuID = " + stuID);
            if (cdb.dbReader.Read())
            {
                lbl_error.Text = "添加失败：学号重复";
                lbl_error.Visible = true;
                cdb.Close();
            }
            else
            {
                cdb.Close();
                cdb.Open();

                // bug to repair!
                cdb.exeCmd( "insert into [student]([stuID],[stuName],[sex],[birthday],[home],[homeplace],[etc]) values(" + stuID + ",'" + stuName + "','" + sex + "','" + DateTime.Parse(birthday) + "','" + home + "','" + homeplace + "','" + etc + "')");
                cdb.Close();

                cdb.Open();
                cdb.exeCmd("select stuID from student where stuName = '"+stuName+"'");
                cdb.dbReader.Read();
                String newStuID = cdb.dbReader["stuID"].ToString();
                cdb.Close();

                
                /*if (newStuID == stuID)    //检查是否修改成功
                {
                    lbl_ok.Text = "添加成功！";
                    lbl_ok.Visible = true;
                }
                else
                {
                    throw new Exception("添加失败！");
                }*/
                lbl_ok.Text = "添加成功！";
                lbl_ok.Visible = true;
            }
            

            

        }
        catch(Exception e)
        {
            lbl_error.Text = "添加失败："+e.Message;
            lbl_error.Visible = true;
        }
            
        
        
    }

    /// <summary>
    /// 设置表单信息
    /// </summary>
    protected void modStuSetInfo()
    {
        /*if (stuID != "")
        {*/
            cdb.Open();
            cdb.exeCmd("select * from student where stuID = " + stuID);
            cdb.dbReader.Read();

            txt_stuID.Text = cdb.dbReader["stuID"].ToString();
            txt_stuName.Text = cdb.dbReader["stuName"].ToString();
            rbl_sex.Text = cdb.dbReader["sex"].ToString();
            DateTime dt = Convert.ToDateTime(cdb.dbReader["birthday"].ToString());
            txt_birthday.Text = dt.ToShortDateString();
            txt_home.Text = cdb.dbReader["home"].ToString();
            txt_homeplace.Text = cdb.dbReader["homeplace"].ToString();
            txt_tel.Text = cdb.dbReader["tel"].ToString();
            txt_etc.Text = cdb.dbReader["etc"].ToString();
            cdb.Close();

            newStuID = txt_stuID.Text;
            stuName = txt_stuName.Text;
            sex = rbl_sex.Text;
            birthday = txt_birthday.Text;
            home = txt_home.Text;
            homeplace = txt_homeplace.Text;
            tel = txt_tel.Text;
            etc = txt_etc.Text;
        /*}
        else
        {
            txt_stuID.Text = "";
            txt_stuName.Text = "";
            rbl_sex.Text = "";
            txt_birthday.Text = "";
            txt_home.Text = "";
            txt_homeplace.Text = "";
            txt_tel.Text = "";
            txt_etc.Text = "";
        }*/
    }

   /// <summary>
   /// 修改学生信息
   /// </summary>
    protected void modifyStudent()
    {
         try
         {
        
        stuID = txt_mod_stuID.Text;

        {
            cdb.Open();
            cdb.exeCmd("select stuName from student where stuID=" + stuID);

            cdb.Close();

            //CallJS.Alert(etc +" " + txt_etc.Text);
            newStuID = txt_stuID.Text;
            stuName = txt_stuName.Text;
            sex = rbl_sex.Text;
            birthday = txt_birthday.Text;
            home = txt_home.Text;
            homeplace = txt_homeplace.Text;
            tel = txt_tel.Text;
            etc = txt_etc.Text;

            cdb.Open();
            cdb.exeCmd("update [student] set stuID=" + newStuID + ", stuName='" + stuName + "',sex='" + sex + "', birthday='" + DateTime.Parse(birthday) + "', home='" + home + "', homeplace='" + homeplace + "', etc='" + etc + "' where StuID=" + stuID);
            cdb.Close();

            if (Request.QueryString["stuID"] != null)
            {
                //bug!
                //CallJS.Alert(stuID + " 修改成功");
                CallJS.self_location("stu_query.aspx");
            }
            else
            {
                lbl_ok.Text = "修改成功！";
                lbl_ok.Visible = true;

                stuID = newStuID;
                txt_mod_stuID.Text = stuID;

                txt_stuID.Text = "";
                txt_stuName.Text = "";
                rbl_sex.Text = "";
                txt_birthday.Text = "";
                txt_home.Text = "";
                txt_homeplace.Text = "";
                txt_tel.Text = "";
                txt_etc.Text = "";
            }



            }
         }
            catch (Exception e)
            {
                lbl_error.Text = "修改失败: " + e.Message;
                lbl_error.Visible = true;
            }
            finally
            {
                cdb.Close();
            }

    }

    /// <summary>
    /// 删除学生信息
    /// </summary>
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        try
        {

            cdb.Open();
            cdb.exeCmd("delete from student where StuID=" + stuID);
            cdb.Close();


            CallJS.Alert(stuID + " 删除成功");

            CallJS.self_location("stu_query.aspx");
        }
        catch(Exception e1)
        {
            lbl_error.Text = "删除失败: " + e1.Message;
            lbl_error.Visible = true;
        }
    }

    /// <summary>
    /// 查询
    /// </summary>
    protected void btn_mod_query_Click(object sender, EventArgs e)
    {
        try
        {
        stuID = txt_mod_stuID.Text;
        modStuSetInfo();

        }
        catch(Exception e2)
        {
            lbl_error.Text = e2.Message;
            lbl_error.Visible = true;
        }
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        CallJS.self_location("stu_query.aspx");
    }
}

