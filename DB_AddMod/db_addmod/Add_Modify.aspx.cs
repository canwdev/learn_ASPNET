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
        if (!this.IsPostBack)
        {
            BindProvinceList();
            if (Request.QueryString["id"] != null)
            {

                btnSubmit.Text = "修改";
                btnBack.Text = "取消";
                StuModifyInfoLoad();
            }
            else
            {

                btnSubmit.Text = "添加";
  
            }
        }
        
    }

    protected void Submit_Click(object sender, EventArgs e)
    {

        if (btnSubmit.Text == "添加")
        {
            StuAdd();
        }
        else if (btnSubmit.Text == "修改")
        {
            StuModify();
        }
        else
        {
            Label1.Text = "error";
        }
    }

    protected void StuAdd()
    {
        stu data = new stu();
        data.stu_name = txtName.Text;
        data.stu_pass = txtPassword.Text;
        data.stu_sex = rblSex.SelectedValue;
        data.stu_city = ddlProvince.SelectedItem + "," + ddlCity.SelectedValue;

        string hobby = "";
        foreach (ListItem r in cblHobby.Items)
        {
            if (r.Selected == true)
            {
                hobby += r.Value + ",";
            }
        }
        hobby = hobby.Substring(0, hobby.Length - 1);

        data.stu_hobby = hobby;
        data.stu_etc = txtEtc.Text;
        db.stu.InsertOnSubmit(data);
        db.SubmitChanges();
        //Response.Write("<script>alert('success!');location.href='Default.aspx'</script>");
        Response.Redirect("Default.aspx");
        
    }

    protected void StuModifyInfoLoad()
    {
        var result = from r in db.stu
                     where r.id == int.Parse(Request.QueryString["id"])
                     select r;
        if(result != null)
        {
            var rr = result.First();
            txtName.Text = rr.stu_name;
            txtPassword.TextMode = TextBoxMode.SingleLine;
            txtPassword.Text = rr.stu_pass;
            rblSex.SelectedValue = rr.stu_sex;

            string province = rr.stu_city;
            foreach (ListItem loc in ddlProvince.Items)
            {
                loc.Selected = false;
                if (province.IndexOf(loc.Text) >= 0) 
                {
                    loc.Selected = true;
                }
            }
            updateddlCity();

            string city = rr.stu_city;
            foreach (ListItem loc in ddlCity.Items)
            {
                loc.Selected = false;
                if (city.IndexOf(loc.Text) >= 0)
                {
                    loc.Selected = true;
                }
            }

            string hobbies = rr.stu_hobby;
            foreach (ListItem hobby in cblHobby.Items)
            {
                if (hobbies.IndexOf(hobby.Value) >= 0)
                {
                    hobby.Selected = true;
                }
            }

            txtEtc.Text = rr.stu_etc;

        }
    }
    protected void StuModify()
    {
        var result = from r in db.stu
                     where r.id == int.Parse(Request.QueryString["id"])
                     select r;

        if (result != null)
        {
            var rr = result.First();
            rr.stu_name = txtName.Text;
            rr.stu_pass = txtPassword.Text;
            rr.stu_sex = rblSex.SelectedValue;
            rr.stu_city = ddlProvince.SelectedItem + "," + ddlCity.SelectedValue;

            string hobby = "";
            foreach (ListItem r in cblHobby.Items)
            {
                if (r.Selected == true)
                {
                    hobby += r.Value + ",";
                }
            }
            hobby = hobby.Substring(0, hobby.Length - 1);

            rr.stu_hobby = hobby;
            rr.stu_etc = txtEtc.Text;

            db.SubmitChanges();
            Response.Redirect("Default.aspx");
            //Response.Write("<script>alert('Modify!');location.href='Default.aspx'</script>");
        }

    }

    protected void BindProvinceList()
    {
        
        var province = from r in db.province select r;
        ddlProvince.DataSource = province;
        ddlProvince.DataTextField = "province1";
        ddlProvince.DataValueField = "province_id";
        ddlProvince.DataBind();
        //ddlProvince.Items.Add("[请选择]");
        //ddlCity.Items.Add("[无]");
        //ddlProvince.Items.FindByText("[请选择]").Selected = true;
        updateddlCity();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //DropDownList2.Items.Clear();
        updateddlCity();
    }

    public void updateddlCity()
    {
        var results = from r in db.city
                      where r.province_id == ddlProvince.SelectedValue
                      select r;
        ddlCity.DataSource = results;
        ddlCity.DataTextField = "city1";
        ddlCity.DataValueField = "city1";
        ddlCity.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    
}