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
    <link href="Bootstrap/Site.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Bootstrap/bootstrap-theme.css" rel="stylesheet" />

</head>
<body>
    <div class="jumbotron">
        <form id="form1" runat="server">
            <div class="container">

                <div class="row">
                    <div class="col">Ali Al Saif</div>
                    <div class="col">20146976</div>
                </div>
                <div class="row">
                    <div class="col">Mohamed Alhalwachi</div>
                    <div class="col">20183668</div>
                </div>
                <div class="row">
                    <div class="col">Abdulaziz Mahfood</div>
                    <div class="col">20150445</div>
                </div>
                <div class="row">
                    <div class="col">Mohammed Abdulrazzak</div>
                    <div class="col">20151569</div>
                </div>

                <asp:Label ID="Label1" runat="server" Text="Bahrain Volunteers"></asp:Label>
                <p>
                    Volunteering offers vital help to people in need, worthwhile causes, 
            and the community, but the benefits can be even greater for you, the volunteer. 
            The right match can help you to find friends, connect with the community, 
            learn new skills, and even advance your career.
                </p>
                <p>
                    &nbsp;
                </p>
                <p>
                    PLEASE LOGIN OR REGISTER TO APPLY NOW
                </p>
                <div class="h-100 row align-items-center">
                    <div class="col">

                
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
                        </div>
                    </div>
            </div>
        </form>
    </div>
    <script src="Bootstrap/bootstrap.bundle.js"></script>
    <script src="Bootstrap/bootstrap.min.js"></script>
    <script src="Bootstrap/bootstrap.js"></script>
    <script src="Bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>
