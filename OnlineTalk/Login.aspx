<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录：ASP.NET聊天小程序</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/TalkMain.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center><h1 style="line-height:200px;">ASP.NET聊天小程序</h1></center>
        <div class="input-group" style="width: 500px; margin:0px auto;">
                <asp:TextBox ID="txb_UserName" runat="server" class="form-control"></asp:TextBox>
                <span class="input-group-btn">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登录" class="btn btn-success"/>
                </span>
                
            </div>
        
        
    
    </div>
    </form>
</body>
</html>
