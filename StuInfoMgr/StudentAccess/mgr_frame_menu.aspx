<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mgr_frame_menu.aspx.cs" Inherits="frame_menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" charset="utf-8"/>
    <title>左边栏选单框架内容</title>
    <link rel="stylesheet" href="css/main_menu.css">
</head>
<body bgcolor="#f2f2f2">
    <p>信息查询</p>
    <ul>
        <li><a href="stu_info.aspx" target="frmmain">学生基本信息</a></li>
		
    </ul>
    <p>账户控制</p>
    <ul>
    <li><a href="stu_password_modify.aspx" target="frmmain">密码修改</a></li>
    <form id="form1" runat="server">
            <asp:Button ID="btn_exit" runat="server" onclick="btn_exit_Click"  OnClientClick="return confirm('确认退出吗？');" Text="退出系统" class="a_btn"/></li>
        </form>
    </ul>
</body>
</html>
