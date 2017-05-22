<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Modify.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        姓名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        密码：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        性别：<asp:RadioButtonList ID="rblSex" runat="server" 
            RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        地区：<asp:DropDownList 
            ID="ddlProvince" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:DropDownList ID="ddlCity" runat="server" 
            style="margin-bottom: 0px">
            <asp:ListItem>[无]</asp:ListItem>
        </asp:DropDownList>
        <br />
        爱好：<asp:CheckBoxList ID="cblHobby" runat="server" 
            RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>测试1</asp:ListItem>
            <asp:ListItem>测试2</asp:ListItem>
            <asp:ListItem>测试3</asp:ListItem>
            <asp:ListItem>测试4</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        备注：<asp:TextBox ID="txtEtc" runat="server" Height="141px" 
            TextMode="MultiLine" Width="226px"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" onclick="Submit_Click" Text="提交" />
    
        <asp:Button ID="btnBack" runat="server" onclick="Button2_Click" 
            Text="查看或修改信息..." />
    
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#FF0066"></asp:Label>
    
    </div>
    </form>
</body>
</html>
