<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="HCIproject.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 85px;
            height: 192px;
        }
        .auto-style3 {
            width: 142px;
            height: 192px;
        }
        .auto-style4 {
            width: 73px;
            height: 192px;
        }
        .auto-style5 {
            width: 153px;
            height: 192px;
        }
        .auto-style8 {
            width: 56px;
            height: 192px;
        }
        .auto-style9 {
            width: 91px;
            height: 192px;
        }
        .auto-style11 {
            height: 192px;
        }
        .auto-style12 {
            width: 74px;
            height: 192px;
        }
        .auto-style13 {
            width: 75px;
            height: 192px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Account - Operator"></asp:Label>
        <p>
            Volunteers</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Operation</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="133px">
                        <asp:ListItem>patient screening</asp:ListItem>
                        <asp:ListItem>take samples</asp:ListItem>
                        <asp:ListItem>give phone advice</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">Location</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="133px">
                        <asp:ListItem>salmanya hospital</asp:ListItem>
                        <asp:ListItem>king hamad hospital</asp:ListItem>
                        <asp:ListItem>from home</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">Dates From:</td>
                <td class="auto-style5">
                    <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                    <asp:Localize ID="Localize2" runat="server"></asp:Localize>
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="151px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Date" Width="72px" />
                </td>
                <td class="auto-style8">Date to:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="151px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Date" Width="72px" />
                </td>
                <td class="auto-style11">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Filter" Width="79px" />
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style9"></td>
                <td class="auto-style5"></td>
                <td class="auto-style13"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style12"></td>
                <td class="auto-style11"></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="logout" Width="72px" />
    </form>
</body>
</html>
