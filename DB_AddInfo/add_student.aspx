<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_student.aspx.cs" Inherits="mgr_user_add_student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

         <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="性别"></asp:Label></td>
            <td>
                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                           <asp:ListItem Value="male">男</asp:ListItem>
                           <asp:ListItem Value="female">女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="出生日期"></asp:Label></td>
            <td>
                <asp:TextBox ID="txt_date" runat="server" Enabled="True"></asp:TextBox>
                <asp:Button ID="btn_showcalendar" runat="server" onclick="btn_showcalendar_Click" 
                    Text="选择日期" />
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" 
                    onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="所在地"></asp:Label></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="beijing">北京</asp:ListItem>
                    <asp:ListItem Value="shanghai">上海</asp:ListItem>
                    <asp:ListItem Value="jiangxi">江西</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                        <asp:ListItem>请选择</asp:ListItem>
                    </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="兴趣爱好"></asp:Label></td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="运动" /><asp:CheckBox ID="CheckBox2" runat="server" Text="创作" /><asp:CheckBox
                        ID="CheckBox3" runat="server" Text="学习" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="备注"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="200px" Width="300px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="确认"></asp:Label></td>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="提交" 
                    onclick="btn_submit_Click" /></td>
        </tr>
    </table>
    
    </div>
    
    </form>
   
</body>
</html>
