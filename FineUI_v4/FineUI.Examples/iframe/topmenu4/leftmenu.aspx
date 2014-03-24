﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leftmenu.aspx.cs" Inherits="FineUI.Examples.iframe.topmenu4.leftmenu" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="leftTree" runat="server"></f:PageManager>
        <f:Tree runat="server" ShowBorder="false" ShowHeader="false" EnableArrows="true"
            ID="leftTree">
        </f:Tree>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="./data/menuMail.xml"></asp:XmlDataSource>
    </form>
    <script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script>
        var leftTreeID = '<%= leftTree.ClientID %>';

        F.ready(function () {

            // 展开树的第一个节点，并选中第一个节点下的第一个子节点（在右侧IFrame中打开）
            var tree = F(leftTreeID);
            var treeFirstChild = tree.getRootNode().firstChild;

            // 展开第一个节点（如果想要展开全部节点，调用 tree.expandAll();）
            treeFirstChild.expand();


            // 初始化主框架中的树(或者Accordion+Tree)和选项卡互动，以及地址栏的更新
            parent.initTreeTabStrip(tree);

        });
    </script>
</body>
</html>
