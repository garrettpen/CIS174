<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="confirmationPage.aspx.cs" Inherits="garrettPenfieldUnit6.confirmationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
