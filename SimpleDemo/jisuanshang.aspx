<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jisuanshang.aspx.cs" Inherits="jisuanshang" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="计算两个数的商"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="计算" />
    
        <br />
        <br />
        <asp:Label ID="lbl_result" runat="server" Text="?"></asp:Label>
    
    </div>
    </form>
</body>
</html>
