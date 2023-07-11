<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="HCIproject.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 27%;
        }
        .auto-style2 {
            width: 117px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Account Volunteer"></asp:Label>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" BackColor="Silver" BorderColor="Silver" BorderStyle="Solid" Text="You have not applied yet, please applied through the form below."></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Application form"></asp:Label>
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">CPR</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Speciality</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="161px">
                        <asp:ListItem>Engineer</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>Accountant</asp:ListItem>
                        <asp:ListItem>medicine</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Education</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" Width="100px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="logout" Width="100px" />
                </td>
            </tr>
        </table>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
