<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录:学生信息管理系统</title>
    <link href="src/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="pic logo">
    <div class="logo_pic"></div>
    </div>
    <div class="login_body">
        <!-- <h1 style="font-family: 华文彩云">学生信息管理系统</h1> -->
        <asp:Label ID="lbl_loginMod" runat="server" ForeColor="Red"></asp:Label>
        <form id="form1" runat="server">
        <div class="row username">
        <asp:TextBox ID="txt_username" runat="server" class="input_box" type="text" name="username" placeholder="学号/用户名" autocomplete="on" autofocus></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="用户名不能为空" ControlToValidate="txt_username" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            
        <div class="row password">
            <asp:TextBox ID="txt_password" runat="server" class="input_box" type="password" 
                name="password" placeholder="密码" autocomplete="on" TextMode="Password"
                ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="密码不能为空" ControlToValidate="txt_password" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            
        <div class="row submit">
            <asp:Button id="btn_login" runat="server" class="submit_btn btn" Text="登录" 
                onclick="btn_login_Click" />
            </div>
        
        
        <div class="middle_line"></div>
        <div class="row etc">
            <asp:DropDownList ID="ddl_switchMode" runat="server" class="etc_btn btn" 
                onselectedindexchanged="ddl_switchMode_SelectedIndexChanged">
                <asp:ListItem Value="login_student">学生登录</asp:ListItem>
                <asp:ListItem Value="login_admin">管理员登录</asp:ListItem>
            </asp:DropDownList>
            </form>
            <!--<button id="reg_btn" class="etc_btn btn">注册帐号</button>-->
            
        </div>
       

        <div class="footer">
                <span><small>请使用支持HTML5的浏览器访问本页面</small> | 版权所有 &copy;2017 NCUPYH-15计网-学生信息管理系统小组</span>
        </div>

</body>
</html>
