<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        性别：<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        地区：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="LinqDataSource1" DataTextField="province1" 
            DataValueField="province_id" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="province">
        </asp:LinqDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            DataSourceID="LinqDataSource2" DataTextField="city1" DataValueField="city1" 
            style="margin-bottom: 0px">
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
            ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="city" 
            Where="province_id == @province_id">
            <WhereParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="province_id" 
                    PropertyName="SelectedValue" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
        <br />
        爱好：<asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>跑步</asp:ListItem>
            <asp:ListItem>篮球</asp:ListItem>
            <asp:ListItem>唱歌</asp:ListItem>
            <asp:ListItem>绘画</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        备注：<asp:TextBox ID="TextBox3" runat="server" Height="141px" 
            TextMode="MultiLine" Width="226px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
    
    </div>
    </form>
</body>
</html>
