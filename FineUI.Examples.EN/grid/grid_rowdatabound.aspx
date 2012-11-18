﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_rowdatabound.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_rowdatabound" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" Title="Table" PageSize="3" ShowBorder="true" ShowHeader="true"
        Width="800px" AutoHeight="true" runat="server" EnableCheckBoxSelect="True" DataKeyNames="Id,Name"
        OnRowCommand="Grid1_RowCommand" OnRowDataBound="Grid1_RowDataBound" EnableRowNumber="True">
        <Columns>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="Name" />
            <x:TemplateField Width="60px" HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="60px" DataField="EntranceYear" HeaderText="Entrance Year" />
            <x:CheckBoxField Width="60px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="At School" />
            <x:HyperLinkField HeaderText="Major" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" ExpandUnusedSpace="True" />
            <x:ImageField Width="60px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="Group"></x:ImageField>
            <x:LinkButtonField TextAlign="Center" ConfirmText="Are you sure you want to do this?" ConfirmTarget="Top"
                ColumnID="lbfAction1" Width="50px" CommandName="Action1" Text="Button" />
            <x:LinkButtonField TextAlign="Center" ConfirmText="Are you sure you want to do this?" Icon="Delete" ConfirmTarget="Top"
                ColumnID="lbfAction2" HeaderText="&nbsp;" Width="50px" CommandName="Action2" />
        </Columns>
    </x:Grid>
    <br />
    <x:Label ID="labResult" EncodeText="false" runat="server">
    </x:Label>
    <br />
    </form>
</body>
</html>
