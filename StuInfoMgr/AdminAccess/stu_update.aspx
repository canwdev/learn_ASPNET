<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_update.aspx.cs" Inherits="AdminAccess_stu_update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/stu_update.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 82px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="login_body">
        <center><big style="line-height: 50px;"><asp:Label ID="lbl_updateMode" runat="server" Text="学生信息更新模式(参数错误)"></asp:Label>
            <br />
            <asp:TextBox ID="txt_mod_stuID" runat="server" Visible="False" placeholder="查询学号"></asp:TextBox>
            <asp:Button id="btn_mod_query" runat="server" class="btn" Text="查询" 
                Visible="False" onclick="btn_mod_query_Click" CausesValidation="False" />
            </big></center>
        <div class="middle_line"></div>

        
        <table width="590px" border="0" align=center  cellpadding="5" cellspacing="0" class="main_table">
            <tr>
                <td class="style1">
                    学号
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="*" ControlToValidate="txt_stuID" Display="Dynamic" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="txt_stuID" runat="server" Width="240px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txt_stuID" ErrorMessage="学号长度10位" ForeColor="Red" 
                        ValidationExpression="\d{17}[\d|X]|\d{10}"></asp:RegularExpressionValidator>
                </td>
                
            </tr>
            <tr>
                <td class="style1">
                    姓名 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="*" ControlToValidate="txt_stuName" Display="Dynamic" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="txt_stuName" runat="server" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    性别 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="*" ControlToValidate="rbl_sex" Display="Dynamic" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RadioButtonList ID="rbl_sex" runat="server" 
                        RepeatDirection="Horizontal" CellPadding="0" CellSpacing="0" 
                        RepeatLayout="Flow" Width="240px">
                        <asp:ListItem Value="male">男</asp:ListItem>
                        <asp:ListItem Value="female">女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                  出生日期 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="*" ControlToValidate="txt_birthday" Display="Dynamic" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="txt_birthday" runat="server" Width="240px"  placeholder="格式：1990/01/01" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txt_birthday" ErrorMessage="日期格式错误" ForeColor="Red" 
                        ValidationExpression="^\d{4}/(0?\d|1?[012])/(0?\d|[12]\d|3[01])$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    住址</td>
                <td>
                    <asp:TextBox ID="txt_home" runat="server" Width="240px">_</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    籍贯</td>
                <td>
                    <asp:TextBox ID="txt_homeplace" runat="server" Width="240px">_</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    手机号</td>
                <td>
                    <asp:TextBox ID="txt_tel" runat="server" Width="240px">00000000001</asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txt_tel" ErrorMessage="手机号长度11位" ForeColor="Red" 
                        ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{11}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    备注</td>
                <td>
                    <asp:TextBox ID="txt_etc" runat="server" TextMode="MultiLine" Height="90px" 
                        Width="240px">_</asp:TextBox>
                </td>
            </tr>
        </table>
            <div class="middle_line"></div>

        <div class="row_submit">
            <asp:Button id="btn_update" runat="server" class="btn" Text="新增/修改" 
                onclick="btn_update_Click" />
            <asp:Button id="btn_delete" runat="server" class="btn" Text="删除" 
                onclick="btn_delete_Click"  
                OnClientClick="return confirm('确认删除学生全部信息吗？');" CausesValidation="False"/>
            <asp:Button id="btn_back" runat="server" class="btn" Text="返回" 
                Visible="False" CausesValidation="False" onclick="btn_back_Click" />
            <asp:Button id="btn_refresh" runat="server" class="btn" Text="刷新" 
                OnClientClick="location.reload(false);" CausesValidation="False"/>
                <br />
            <asp:Label ID="lbl_ok" runat="server" ForeColor="Green" Visible="False" style="line-height: 50px;"></asp:Label>
            <asp:Label ID="lbl_error" runat="server" ForeColor="Red" Visible="False" style="line-height: 50px;"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
