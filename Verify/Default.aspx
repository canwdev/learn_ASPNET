<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 75px;
        }
        .style2
        {
            width: 161px;
        }
        .style_vs1
        {
            color:Red;
            display: inline-block;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
        <div  style="padding: 10px; color: #0066FF; width:100%;">会员注册</div>
        <table width="590px" border="1" bordercolor="#9e9e9e" cellpadding="5" cellspacing="0" style="border-collapse:collapse">
            <tr>
                <td class="style1">
                    手机号</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="18900000000"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="请输入正确的手机号（11位）" 
                        ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{11}" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    E-mail</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="test@example.com"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="请输入正确的电子邮件格式" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    密码</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" placeholder="注意身后的眼睛"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    确认密码</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" placeholder="确认密码"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="密码不一致" ControlToCompare="TextBox3" 
                        ControlToValidate="TextBox4" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    生日</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="1970-1-1"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="请输入正确的日期（1990-1-1至2014-10-10）" 
                        MaximumValue="2014-10-10" MinimumValue="1990-1-1" Type="Date" 
                        Display="Dynamic"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    身份证号</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="00000000000000"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="请输入正确的身份证格式" 
                        ValidationExpression="\d{17}[\d|X]|\d{15}" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="注册" />
                    <asp:Button ID="Button2" runat="server" Text="取消" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" class="style_vs1" 
        Visible="False"/>
    </form>
  

    



</body>
</html>
