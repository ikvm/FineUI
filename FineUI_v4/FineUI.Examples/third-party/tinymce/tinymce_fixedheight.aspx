﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tinymce_fixedheight.aspx.cs" ValidateRequest="false"
    Inherits="FineUI.Examples.aspnet.tinymce_fixedheight" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../../res/css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:ContentPanel ID="ContentPanel1" runat="server" BodyPadding="5px" Width="850px" Height="500px" EnableCollapse="true"
            ShowBorder="true" ShowHeader="true" Title="内容面板">
            <textarea id="Editor1" name="Editor1" style="width: 100%;">
                &lt;p&gt;
                FineUI（开源版）&lt;br&gt;
                基于 ExtJS 的开源 ASP.NET 控件库。&lt;br&gt;
                &lt;br&gt;
                FineUI的使命&lt;br&gt;
                创建 No JavaScript，No CSS，No UpdatePanel，No ViewState，No WebServices 的网站应用程序。&lt;br&gt;
                &lt;br&gt;
                支持的浏览器&lt;br&gt;
                IE 8.0+、Chrome、Firefox、Opera、Safari&lt;br&gt;
                &lt;br&gt;
                授权协议&lt;br&gt;
                Apache License 2.0 (Apache)&lt;br&gt;
                &lt;br&gt;
                相关链接&lt;br&gt;
                论坛：http://fineui.com/bbs/&lt;br&gt;
                示例：http://fineui.com/demo/&lt;br&gt;
                文档：http://fineui.com/doc/&lt;br&gt;
                下载：http://fineui.codeplex.com/
                &lt;/p&gt;
            </textarea>
        </f:ContentPanel>
        <br />
        <f:Button ID="Button2" runat="server" CssClass="marginr" Text="设置编辑器的值" OnClick="Button2_Click">
        </f:Button>
        <f:Button ID="Button1" runat="server" Text="获取编辑器的值" OnClick="Button1_Click">
        </f:Button>
    </form>
    <script type="text/javascript" src="../../res/js/jquery.min.js"></script>
    <script type="text/javascript" src="../res/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">

        var containerClientID = '<%= ContentPanel1.ClientID %>';

        F.ready(function () {

            tinymce.init({
                selector: '#Editor1',
                resize: false,
                width: '100%',
                height: 100,
                setup: function (editor) {
                    editor.on('load', function (e) {
                        // 重新设置编辑器高度
                        var containerHeight = $('#' + containerClientID).find('.x-panel-body').height();
                        
                        // （顶部菜单高度+工具条高度+状态栏高度） = 编辑器外部高度 - 编辑器IFrame高度
                        var editorIFrameEl = $('#Editor1_ifr');
                        var editorContainer = editorIFrameEl.parents('.mce-container-body');
                        var editorHeight = containerHeight - (editorContainer.height() - editorIFrameEl.outerHeight(true));
                        editorIFrameEl.outerHeight(editorHeight, true);
                    });
                }
            });

        });


        // FineUI Ajax提交之前，将编辑器的值同步到表单字段中(textarea)
        F.beforeAjax(function () {
            tinymce.editors['Editor1'].save();
        });


        // 更新编辑器内容
        function updateEditor(content) {
            var editor = tinymce.editors['Editor1'];
            editor.setContent(content);
        }
    </script>
</body>
</html>