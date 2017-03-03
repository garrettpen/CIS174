<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="budgetTracker.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="content/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="content/custom.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div class="container">
            <div class="center">
               <div class="vert">

                <p>
                    <asp:Label ID="userNameLabel" CssClass="loginBox" runat="server" Text="User Name:"></asp:Label>
                    <asp:TextBox ID="userNameBox" runat="server"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="passwordLabel" CssClass="loginBox" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="passwordBox" runat="server" ></asp:TextBox>
                </p>

                <p>
                    <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" /></p>
                   </div>
            </div>
        </div>
    </form>
</body>
</html>
