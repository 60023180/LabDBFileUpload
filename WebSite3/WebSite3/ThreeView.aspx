<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThreeView.aspx.cs" Inherits="ThreeView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" ShowLines="True">
    <Nodes>
        <asp:TreeNode Text="New Node" Value="New Node">
            <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
        <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
    </Nodes>
</asp:TreeView>
</asp:Content>

