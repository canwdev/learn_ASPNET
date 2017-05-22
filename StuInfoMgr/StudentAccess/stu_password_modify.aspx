<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_password_modify.aspx.cs" Inherits="StudentAccess_stu_password_modify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/widgets.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 40px;
        }
        .style2
        {
            height: 40px;
            width: 105px;
        }
        table{border-right:1px solid #99ccff;border-bottom:1px solid #99ccff} 
        table td{border-left:1px solid #99ccff;border-top:1px solid #99ccff} 
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <center>
        <table style="width:400px; margin-top:200px;" frame="void">
            <tr>
                <td class="style2">
                    学号：</td>
                <td class="style1">
                    <asp:Label ID="stuID" runat="server" Text="Label"></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td class="style2">
                    用户名：</td>
                <td class="style1">
                    <asp:Label ID="stuName" runat="server" Text="Label"></asp:Label>
                </td>
               
            </tr>
             <tr>
                <td class="style2">
                    旧密码：</td>
                <td class="style1">
                    <asp:TextBox ID="oldpw_TextBox1" runat="server" class="input_box"></asp:TextBox>
                </td>
               
            </tr>
             <tr>
                <td class="style2">
                    新密码：</td>
                <td class="style1">
                    <asp:TextBox ID="newpw_TextBox2" runat="server" class="input_box"></asp:TextBox>
                </td>
               
            </tr>
             <tr>
                <td class="style2">
                    确认密码：</td>
                <td class="style1">
                    <asp:TextBox ID="again_TextBox3" runat="server" class="input_box"></asp:TextBox>
                </td>
               
            </tr>
           
        </table>
        
  
      <div style="width: 400px">
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="修改 " class="btn"/>
            <!--<asp:Button ID="Button1" runat="server" Text="退出 "  style="margin-right:50px;" 
                onclick="Button1_Click"/>-->
        </div>
        
    </center>
    </div>
    </form>
</body>
</html>
