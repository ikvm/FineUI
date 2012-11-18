﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree_sitemap.aspx.cs" Inherits="FineUI.Examples.tree.databind.tree_sitemap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Tree ID="Tree1" Width="500px" ShowHeader="true" Title="Tree Control (Bind to SiteMap)" runat="server">
        <Mappings>
            <x:XmlAttributeMapping From="url" To="NavigateUrl" />
            <x:XmlAttributeMapping From="title" To="Text" />
            <x:XmlAttributeMapping From="description" To="ToolTip" />
        </Mappings>
    </x:Tree>
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/tree/databind/Web.sitemap">
    </asp:XmlDataSource>
    </form>
</body>
</html>
