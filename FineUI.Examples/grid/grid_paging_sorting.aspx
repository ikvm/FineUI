﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_paging_sorting.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_paging_sorting" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="表格" AllowSorting="true" SortColumn="name" SortDirection="ASC"
        PageSize="5" ShowBorder="true" ShowHeader="true" AutoHeight="true" AllowPaging="true"
        runat="server" EnableCheckBoxSelect="True" Width="800px" DataKeyNames="Id,Name"
        OnPageIndexChange="Grid1_PageIndexChange" EnableRowNumber="True" OnSort="Grid1_Sort">
        <Columns>
            <x:BoundField Width="100px" ColumnID="name" SortField="Name" DataField="Name" DataFormatString="{0}"
                HeaderText="姓名" />
            <x:TemplateField Width="60px" SortField="Gender" HeaderText="性别">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" SortField="EntranceYear" DataField="EntranceYear" HeaderText="入学年份" />
            <x:CheckBoxField Width="60px" SortField="AtSchool" RenderAsStaticField="true" DataField="AtSchool"
                HeaderText="是否在校" />
            <x:HyperLinkField HeaderText="所学专业" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="分组"></x:ImageField>
        </Columns>
    </x:Grid>
    <br />
    <x:Button ID="Button1" runat="server" Text="选中了哪些行" OnClick="Button1_Click">
    </x:Button>
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    </form>
</body>
</html>