<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="dbTest.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="margin-top:50px;">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" 
            CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="☞" ShowSelectButton="True" />
                
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="stu_xh" HeaderText="学号" 
                    SortExpression="stu_xh" />
                <asp:BoundField DataField="stu_name" HeaderText="姓名" 
                    SortExpression="stu_name" />
                <asp:BoundField DataField="stu_class" HeaderText="班级" 
                    SortExpression="stu_class" />
                <asp:BoundField DataField="st_cj" HeaderText="成绩" SortExpression="st_cj" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" EditText="✎" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" DeleteText="☠"/>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" 
            SelectCommand="SELECT * FROM [stu]" ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [stu] WHERE [id] = @original_id AND (([stu_xh] = @original_stu_xh) OR ([stu_xh] IS NULL AND @original_stu_xh IS NULL)) AND (([stu_name] = @original_stu_name) OR ([stu_name] IS NULL AND @original_stu_name IS NULL)) AND (([stu_class] = @original_stu_class) OR ([stu_class] IS NULL AND @original_stu_class IS NULL)) AND (([st_cj] = @original_st_cj) OR ([st_cj] IS NULL AND @original_st_cj IS NULL))" 
            InsertCommand="INSERT INTO [stu] ([stu_xh], [stu_name], [stu_class], [st_cj]) VALUES (@stu_xh, @stu_name, @stu_class, @st_cj)" 
            OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [stu] SET [stu_xh] = @stu_xh, [stu_name] = @stu_name, [stu_class] = @stu_class, [st_cj] = @st_cj WHERE [id] = @original_id AND (([stu_xh] = @original_stu_xh) OR ([stu_xh] IS NULL AND @original_stu_xh IS NULL)) AND (([stu_name] = @original_stu_name) OR ([stu_name] IS NULL AND @original_stu_name IS NULL)) AND (([stu_class] = @original_stu_class) OR ([stu_class] IS NULL AND @original_stu_class IS NULL)) AND (([st_cj] = @original_st_cj) OR ([st_cj] IS NULL AND @original_st_cj IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_stu_xh" Type="String" />
                <asp:Parameter Name="original_stu_name" Type="String" />
                <asp:Parameter Name="original_stu_class" Type="String" />
                <asp:Parameter Name="original_st_cj" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="stu_xh" Type="String" />
                <asp:Parameter Name="stu_name" Type="String" />
                <asp:Parameter Name="stu_class" Type="String" />
                <asp:Parameter Name="st_cj" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="stu_xh" Type="String" />
                <asp:Parameter Name="stu_name" Type="String" />
                <asp:Parameter Name="stu_class" Type="String" />
                <asp:Parameter Name="st_cj" Type="Double" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_stu_xh" Type="String" />
                <asp:Parameter Name="original_stu_name" Type="String" />
                <asp:Parameter Name="original_stu_class" Type="String" />
                <asp:Parameter Name="original_st_cj" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
