﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        if (Login1.UserName == "admin" && Login1.Password == "admin")
        {
            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
        }
        else
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "new", "alert('帐号密码错误')", true);
        }

    }
}