<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmationPage.aspx.cs" Inherits="garrettPenfieldUnit5.ConfirmationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Royal Inn and Suites</title>
    <link href="Content/Main.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div id="page-header">
                <h1 style="color: blue;">Royal Inn and Suites</h1>
                <div style="color: red; font-style: italic;">Where you're always treated like royalty</div>
                <h3 style="color: blue;">Request Confirmation</h3>
                <h3>Please confirm your reservation request</h3>
            </div>
        </div>
        <div id="form-group">
            <div>
                First Name: 
                <asp:Label ID="firstName" runat="server"></asp:Label>
            </div>

            <div>
                Last Name: 
                <asp:Label ID="lastName" runat="server"></asp:Label>
            </div>

            <div>
                Email: 
                <asp:Label ID="email" runat="server"></asp:Label>
            </div>

            <div>
                Phone: 
                <asp:Label ID="phoneNumber" runat="server"></asp:Label>
            </div>

            <div>
                Preferred Method: 
                <asp:Label ID="preferredMethod" runat="server"></asp:Label>
            </div>

            <h3>Request Data</h3>

            <div>
                Arrival Date: 
                <asp:Label ID="arrivalDate" runat="server"></asp:Label>
            </div>

            <div>
                Departure Date: 
                <asp:Label ID="departureDate" runat="server"></asp:Label>
            </div>

            <div>
                No. of days: 
                <asp:Label ID="noOfDays" runat="server"></asp:Label>
            </div>

            <div>
                No. of people: 
                <asp:Label ID="noOfPeople" runat="server"></asp:Label>
            </div>

            <div>
                Bed Type: 
                <asp:Label ID="bedType" runat="server"></asp:Label>
            </div>

            <div>
                Special Requests: 
                <asp:Label ID="specialRequests" runat="server"></asp:Label>
            </div>

            <div>
                <asp:Button ID="submitRequestButton" CssClass="btn btn-primary btn-space" runat="server" Text="Submit Request" OnClick="submitRequestButton_Click" />
                <asp:Button ID="modifyRequestButton" CssClass="btn btn-primary btn-space" runat="server" PostBackUrl="~/Default.aspx" Text="Modify Request" BackColor="#33CC33" />
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
