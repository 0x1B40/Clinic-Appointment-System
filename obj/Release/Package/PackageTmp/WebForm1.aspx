<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HCIproject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 82px;
        }
        .auto-style3 {
            width: 82px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Bahrain Volunteers"></asp:Label>
        <p>
            Volunteering offers vital help to people in need, worthwhile causes, and the community, but the benefits can be even greater for you, the volunteer. The right match can help you to find friends, connect with the community, learn new skills, and even advance your career.</p>
        <p>
            &nbsp;</p>
        <p>
            PLEASE LOGIN OR REGISTER TO APPLY NOW</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="185px" BackColor="White" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="183px" BackColor="White"></asp:TextBox>
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="138px" />

                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" Width="138px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
