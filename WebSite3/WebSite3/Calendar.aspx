<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" NavigateUrl="~/UploadFille.aspx">Upload File</asp:HyperLink>
            <asp:Calendar ID="Calendar1" runat="server" CssClass="w-100 h-100" OnSelectionChanged="Calendar1_SelectionChanged">
            </asp:Calendar>
        </div>
    </form>
</body>
</html>

