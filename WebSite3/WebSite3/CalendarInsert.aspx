<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CalendarInsert.aspx.cs" Inherits="CalendarInsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownListDay" runat="server">
</asp:DropDownList>
<asp:DropDownList ID="DropDownListMonth" runat="server">
</asp:DropDownList>
<asp:DropDownList ID="DropDownListYear" runat="server">
</asp:DropDownList>
<br />
<asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="279px"></asp:TextBox>
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="บันทึก" />
<asp:Label ID="LabelInserted" runat="server" ForeColor="#00CC00" Text="เสร็จแล้ว" Visible="False"></asp:Label>
</asp:Content>

