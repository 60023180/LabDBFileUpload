<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CalendarDetail.aspx.cs" Inherits="CalendarDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CalendarDetail</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="แสดงข้อมูล"></asp:Label>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="PicturePath" HeaderText="PicturePath" SortExpression="PicturePath" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UPPart2ConnectionString %>" SelectCommand="SELECT [Title], [Day], [Month], [Year], [PicturePath] FROM [Calendar] WHERE (([Day] = @Day) AND ([Month] = @Month) AND ([Year] = @Year))">
            <SelectParameters>
                <asp:QueryStringParameter Name="Day" QueryStringField="d" Type="Int32" />
                <asp:QueryStringParameter Name="Month" QueryStringField="m" Type="Int32" />
                <asp:QueryStringParameter Name="Year" QueryStringField="y" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
