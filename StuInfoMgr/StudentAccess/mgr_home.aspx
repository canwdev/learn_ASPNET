<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mgr_home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script>
        window.onload = resize;
        window.onresize = resize;
        function resize() {
            var height = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
            height = height-71;
            var mainArticle = document.getElementById("mainArticle");
            mainArticle.style.height = height + 'px';
        }
    </script>
    <title>学生信息管理系统</title>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
</head>
<body onload="resize()">
    <form id="form1" runat="server">
    <table align="center" class="container" cellspacing="0">
        <tr>
            <td class="header" bgcolor="#2196f3">
                <div class ="user_control">
                    <asp:Label ID="lbl_username" runat="server" Text="当前登录：XX"></asp:Label>
                <!--<asp:Button ID="btn_exit"  class="btn" runat="server" Text="退出" onclick="btn_exit_Click" />-->
                </div>
                <h2 style="font-family: "微软雅黑 Light","Microsoft YaHei";">学生信息管理系统</h2>
            </td>
        </tr>
    
        <tr>
            <td>
                <iframe src="mgr_frame.aspx" class="article" id="mainArticle">
                </iframe>
            </td>
        </tr>
        
        <tr>
            <td class="footer" bgcolor="#2196f3">
                <span><small>请使用支持HTML5的浏览器访问本页面</small> | 版权所有 &copy;2017 NCUPYH-15计网-学生信息管理系统小组</span>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
