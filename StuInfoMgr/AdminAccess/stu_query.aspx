<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_query.aspx.cs" Inherits="AdminAccess_stu_query" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/widgets.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:TextBox ID="txt_stuID" runat="server" placeholder="输入学号" class="input_box"></asp:TextBox>
        <asp:TextBox ID="txt_stuName" runat="server" placeholder="或输入名字" class="input_box"></asp:TextBox>

        <asp:Button ID="btn_query" runat="server" Text="查询" onclick="btn_query_Click"  class="btn"/>
    </center>
        <asp:Label ID="lbl_infoTable" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
