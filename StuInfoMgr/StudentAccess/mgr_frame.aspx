<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mgr_frame.aspx.cs" Inherits="mgr_frame" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" charset="utf-8"/>
    <title>管理器总框架组</title>
</head>
<frameset cols="15%,85%">
    <frame frameborder=0 src="mgr_frame_menu.aspx" name="frmleft" scrolling="no">
    <frame frameborder=0 src="mgr_frame_main.aspx" name="frmmain" scrolling="yes">
</frameset>
</html>
