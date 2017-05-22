<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stu_info.aspx.cs" Inherits="StudentAccess_stu_info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
                 
        .style2
        {
            width: 150px;
            height:40px;
            text-align:center;
            font-family:"微软雅黑";
          
           
        }
         table{border-right:1px solid #99ccff;border-bottom:1px solid #99ccff} 
        table td{border-left:1px solid #99ccff;border-top:1px solid #99ccff;} 

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <center>
        <table style="width: 600px; margin-top:200px">
            <tr>
                <td class="style2"bgcolor="#CCCCCC">
                    学号</td>
                <td class="style2" bgcolor="#CCCCCC">
                    <asp:Label ID="stuID" runat="server" Text="Label"></asp:Label>
                    </td>
                <td class="style2" bgcolor="#CCCCCC">
                    姓名</td>
                <td class="style2" bgcolor="#CCCCCC">
                    <asp:Label ID="stuName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style2">
                    出生年月</td>
                <td class="style2">
                    <asp:Label ID="birthday" runat="server" Text="Label"></asp:Label>
                    </td>
                <td class="style2">
                    性别</td>
                <td class="style2">
                    <asp:Label ID="sex" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style2" bgcolor="#CCCCCC">
                    家庭地址</td>
                <td class="style2" bgcolor="#CCCCCC">
                    <asp:Label ID="homeplace" runat="server" Text="Label"></asp:Label>
                    </td>
                <td class="style2" bgcolor="#CCCCCC">
                    电话</td>
                <td class="style2" bgcolor="#CCCCCC">
                    <asp:Label ID="tel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style2" >
                    系别</td>
                <td class="style2">
                    <asp:Label ID="specID" runat="server" Text="Label"></asp:Label>
                    </td>
                <td class="style2">
                    班级</td>
                <td class="style2">
                    <asp:Label ID="classID" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style2" bgcolor="#CCCCCC">
                    
                    课程号<td class="style2" bgcolor="#CCCCCC">
                    <asp:Label ID="lesID" runat="server" Text="Label"></asp:Label>
                    </td>
                <td class="style2" bgcolor="#CCCCCC">
                    备注</td>
                <td class="style2" bgcolor="#CCCCCC">
                    <asp:Label ID="etc" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>
           
        </table>
        </center>
    
    </div>
    </form>
</body>
</html>
