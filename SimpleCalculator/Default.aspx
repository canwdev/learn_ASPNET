<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>计算器</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="calc_body">
    
        <asp:TextBox ID="TextBoxIO" runat="server" class="input_box"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="1" onclick="Number_Click" class="btn_number"/>
        <asp:Button ID="Button2" runat="server" Text="2" onclick="Number_Click" class="btn_number" />
        <asp:Button ID="Button3" runat="server" Text="3" onclick="Number_Click" class="btn_number" />
        <br />
        <asp:Button ID="Button4" runat="server" Text="4" onclick="Number_Click" class="btn_number" 
            Width="21px" />
        <asp:Button ID="Button5" runat="server" Text="5" onclick="Number_Click" class="btn_number" />
        <asp:Button ID="Button6" runat="server" Text="6" onclick="Number_Click" class="btn_number" />
        <br />
        <asp:Button ID="Button7" runat="server" Text="7" onclick="Number_Click" class="btn_number" />
        <asp:Button ID="Button8" runat="server" Text="8" onclick="Number_Click" class="btn_number" />
        <asp:Button ID="Button9" runat="server" Text="9" onclick="Number_Click" class="btn_number" />
        <br />
        <asp:Button ID="Button0" runat="server" Text="0" onclick="Number_Click" class="btn_number" />
        <asp:Button ID="ButtonPlus" runat="server" Text="+" 
            onclick="ButtonPlus_Click"  class="btn_number"/>
        <asp:Button ID="ButtonMinus" runat="server" Text="-" 
            onclick="ButtonMinus_Click"  class="btn_number"/>
        <br />
        <asp:Button ID="ButtonCalc" runat="server" Text="=" 
            onclick="ButtonCalc_Click"  class="btn_number"/>
        <asp:Button ID="ButtonAC" runat="server" Text="AC" onclick="ButtonAC_Click"  class="btn_number"/>
    </div>
    </form>
</body>
</html>
