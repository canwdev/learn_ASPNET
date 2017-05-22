<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mgr_password_modify.aspx.cs" Inherits="AdminAccess_mgr_password_modify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/mgr_password_modify.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="login_body">
            <h3>管理员密码修改</h3>
         <div class="row password">
            <asp:TextBox ID="txt_origin_password" runat="server" class="input_box" type="password" 
                name="password" placeholder="原始密码" autocomplete="on"
                ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="密码不能为空" ControlToValidate="txt_origin_password" 
                 Display="Dynamic"></asp:RequiredFieldValidator>
        </div>

         <div class="row password">
            <asp:TextBox ID="txt_new_password" runat="server" class="input_box" type="password" 
                name="password" placeholder="新密码" autocomplete="on"
                ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="密码不能为空" ControlToValidate="txt_new_password" 
                 Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
            
        <div class="row password">
            <asp:TextBox ID="txt_password_repeat" runat="server" class="input_box" type="password" 
                name="password" placeholder="确认密码" autocomplete="on"
                ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="密码不能为空" ControlToValidate="txt_password_repeat" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txt_password_repeat" ControlToValidate="txt_new_password" 
                ErrorMessage="&amp;nbsp密码不一致&amp;nbsp  " Display="Dynamic"></asp:CompareValidator>
        </div>

            <div class="middle_line"></div>

        <div class="row submit">
            <asp:Button id="btn_modify" runat="server" class="submit_btn btn" Text="修改" 
                onclick="btn_modify_Click" />
                <br />
            <asp:Label ID="lbl_ok" runat="server" ForeColor="Green" Visible="False"></asp:Label>
            <asp:Label ID="lbl_error" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
