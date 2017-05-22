<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mgr_frame_menu.aspx.cs" Inherits="frame_menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" charset="utf-8"/>
    <title>左边栏选单框架内容</title>
    <link rel="stylesheet" href="css/main_menu.css">
</head>
<body bgcolor="#f2f2f2">
    <p>基本信息管理</p>
    <ul>
        <li><a href="daily.html" target="frmmain">首页</a></li>
        <li><a href="stu_query.aspx" target="frmmain">查询信息</a></li>
        <li><a href="stu_update.aspx?update=new" target="frmmain">新增信息</a></li>
        <li><a href="stu_update.aspx?update=mod" target="frmmain">修改信息</a></li>
		<!--<li><a href="error.html" target="frmmain">修改成绩</a></li>-->
    </ul>
    <p>账户控制</p>
    <ul>
    <form id="form1" runat="server">
            <li><a href="mgr_password_modify.aspx" target="frmmain">管理密码修改</a></li>
            <asp:Button ID="btn_exit" runat="server" onclick="btn_exit_Click"  OnClientClick="return confirm('确认退出吗？');" Text="退出系统" class="a_btn"/></li>
        </form>
    </ul>
</body>
</html>
