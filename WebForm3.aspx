<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="HCIproject.WebForm3" %>

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
        your application went through successfully.</p>
    <p>
        Thank you for applying. Your contribution is helping your country.</p>
    <p>
        Please wait for approval, check after few hours.</p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="logout" />
    </form>
    </body>
</html>
