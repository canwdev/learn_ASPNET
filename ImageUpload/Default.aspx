<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="UploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btn_upload" runat="server" OnClick="btn_upload_Click" Text="上传图片至服务器的文件系统" />
        <br />
        <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
        <br />
        <asp:Label ID="lbl_image_info" runat="server" Text="..."></asp:Label>
    
    </div>
    </form>
</body>
</html>
