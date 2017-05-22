<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TalkMain.aspx.cs" Inherits="TalkMain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET聊天小程序</title>
    <script>
        function scrollDown() {
            var div = document.getElementById("talkDiv");
            div.scrollTop = div.scrollHeight;
        }
    </script>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/TalkMain.css" rel="stylesheet" type="text/css" />
</head>
<body onload="scrollDown()">
    <form id="form1" runat="server" defaultbutton="btn_send">
    <div class="container">


        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>


        <div class="page-header">
        <span class="label label-default"><asp:Label ID="lbl_CurrentUserName" runat="server" Text="用户名"></asp:Label></span>
        </div>

        <div class="talkDiv form-control scrollbar1" id="talkDiv">
            <asp:Button ID="btn_exit" runat="server" Text="退出"  
            OnClientClick="return confirm('确认退出?');" onclick="btn_exit_Click" class="btn btn-default"/>

            <asp:Button ID="btn_clear" runat="server" Text="清空"  
            OnClientClick="return confirm('确认清空?');" onclick="btn_clear_Click" class="btn btn-danger"/><hr />
            
            
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lbl_TalkMain" runat="server"></asp:Label>
                    <asp:Timer ID="Timer1" runat="server" Interval="3000" ontick="Timer1_Tick">
                    </asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            
        </div>
        <div class="clo-lg-6">
            <div class="input-group">
                 <asp:TextBox runat="server" ID="txt_SendText" Width="350px" 
            ontextchanged="txt_SendText_TextChanged" class="form-control"></asp:TextBox>
                <span class="input-group-btn">
                    <asp:Button runat="server" Text="发送" ID="btn_send" onclick="btn_send_Click" 
            onclientclick="scrollDown()" class="btn btn-success"/>
                </span>
                
            </div>
               
            
            
        </div>

        
    </div>
    </form>

    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
