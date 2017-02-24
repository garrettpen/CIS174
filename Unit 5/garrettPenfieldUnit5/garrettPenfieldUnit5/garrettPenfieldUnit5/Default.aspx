<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="garrettPenfieldUnit5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Royal Inn and Suites</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Main.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="submitButton" defaultfocus="arrivalDateBox">
        <div class="container">
            <div id="page-header">
                <h1 style="color: blue;">Royal Inn and Suites</h1>
                <div style="color: red; font-style: italic;">
                    Where you're always treated like royalty
                </div>
            </div>
            <h3 style="color: blue;">Reservation Request</h3>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </div>
        <div id="form-group">
            <h4>Request Data</h4>
            <div>
                Arrival Date<asp:RequiredFieldValidator ID="arrivalDateBoxValidator" runat="server" ErrorMessage="Arrival date is required"
                    ControlToValidate="arrivalDateBox" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="arrivalDateValidator" runat="server" ErrorMessage="Arrival date must be before departure date."
                    ControlToValidate="arrivalDateBox" ControlToCompare="departureDateBox" Display="Dynamic"
                    Operator="DataTypeCheck" Type="Date" ForeColor="red">*</asp:CompareValidator>
            </div>

            <div>
                <asp:TextBox ID="arrivalDateBox" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div>Departure Date</div>
            <div>
                <asp:TextBox ID="departureDateBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="departureDateBoxValidator" runat="server" ErrorMessage="Departure date is required"
                    ControlToValidate="departureDateBox" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="departureDateCompareValidator" runat="server" ErrorMessage="Departure date must be after arrival date"
                    ControlToValidate="departureDateBox" ForeColor="Red" ControlToCompare="arrivalDateBox" Display="Dynamic" Operator="GreaterThan"
                    Type="Date">*</asp:CompareValidator>
            </div>
            <div>Number of People</div>

            <div>
                <asp:DropDownList ID="peopleDropDown" runat="server" CssClass="form-control">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <div>
                    Bed Type
                    <asp:RadioButton ID="singleKingButton" runat="server" Text="King" GroupName="bedType" />
                    <asp:RadioButton ID="twoQueensButton" runat="server" Text="Two Queens" GroupName="bedType" />
                    <asp:RadioButton ID="singleQueenButton" runat="server" Text="Single Queen" GroupName="bedType" />
                </div>
            </div>

            <h3>Special Requests</h3>
            <div>
                <asp:TextBox ID="specialRequestsBox" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            </div>

            <h3>Contact Information</h3>
            <div>First Name</div>
            <asp:TextBox ID="firstNameBox" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="firstNameBoxValidator" runat="server" ErrorMessage="First name is required"
                ControlToValidate="firstNameBox" ForeColor="Red">*</asp:RequiredFieldValidator>

            <div>Last Name</div>
            <asp:TextBox ID="lastNameBox" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="lastNameBoxValidator" runat="server" ErrorMessage="Last name is required"
                ControlToValidate="lastNameBox" ForeColor="Red">*</asp:RequiredFieldValidator>

            <div>E-mail Address</div>
            <asp:TextBox ID="addressBox" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="addressBoxValidator" runat="server" ErrorMessage="Email address is required"
                ControlToValidate="addressBox" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="addressBoxExpressionValidator1" runat="server" ErrorMessage="Invalid Email"
                ControlToValidate="addressBox" ForeColor="Red" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

            <div>Telephone Number</div>
            <asp:TextBox ID="telephoneNumberBox" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="telephoneNumberBoxValidator" runat="server" ErrorMessage="Telephone Number is required"
                ControlToValidate="telephoneNumberBox" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="telephoneExpressionValidator" runat="server"
                ErrorMessage="Invalid phone number" ControlToValidate="telephoneNumberBox" ForeColor="red" Display="Dynamic" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>

            <div>Preferred Method of Contact</div>

            <asp:DropDownList ID="contactDropDown" runat="server" CssClass="form-control">
                <asp:ListItem>E-mail</asp:ListItem>
                <asp:ListItem>Telephone</asp:ListItem>
            </asp:DropDownList>
            <div>
                <asp:Button ID="submitButton" CssClass="btn btn-primary btn-space" runat="server" Text="Submit" OnClick="submitButton_Click" />
                <asp:Button ID="clearButton" CssClass="btn btn-primary btn-space" runat="server" Text="Clear" OnClick="clearButton_Click" BackColor="#33CC33" />
            </div>

            <div>
                <asp:Label ID="submitLabel1" runat="server" Text="Thank you for your Request." Visible="False" ForeColor="Green"></asp:Label>
            </div>
            <div>
                <asp:Label ID="submitLabel2" runat="server" EnableViewState="False" Text="We will get back to you within 24 hours." Visible="False" ForeColor="Green"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
