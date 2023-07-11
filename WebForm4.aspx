<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="HCIproject.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Bootstrap/Site.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Account Volunteer"></asp:Label>
        </div>
        <p>
            Your Schedule</p>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="logout" />
    </form>
</body>
</html>
