<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadFille.aspx.cs" Inherits="UploadFille" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload File</title>

</head>
<body>
    <form id="form1" runat="server" class="text-center container">
        <div class="auto-style1">
            <label> 
            <br />
            Upload File</label>
        </div>
        <div>
            <label>วัน</label>&nbsp;
            <asp:DropDownList ID="DropDownListDay" runat="server" DataTextField="Day" Width="85px">
            </asp:DropDownList>
            <label>เดีอน</label>&nbsp;
            <asp:DropDownList ID="DropDownListMonth" runat="server" DataTextField="Month" Width="77px">
            </asp:DropDownList>
            <label >ปี&nbsp;&nbsp;&nbsp; </label>
            <asp:DropDownList ID="DropDownListYear" runat="server" DataTextField="Year" Width="120px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
           
            <br />
           
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="nav-link" Width="330px" />
            &nbsp;
           
           
            <br />
           
           
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" BorderColor="White" CssClass="btn btn-primary" />
            &nbsp;
            &nbsp;
           
            <asp:Label ID="LabelUploaded" runat="server" CssClass="alert alert-success m-4" Text="เพิ่มข้อมูลสำเร็จแล้ว" Visible="False"></asp:Label>

        </div>
    </form>
</body>
</html>

