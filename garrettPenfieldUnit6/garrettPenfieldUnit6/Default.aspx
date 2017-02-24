<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="garrettPenfieldUnit6.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
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
        <div>
            Departure Date<asp:RequiredFieldValidator ID="departureDateBoxValidator" runat="server" ErrorMessage="Departure date is required"
                ControlToValidate="departureDateBox" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="departureDateCompareValidator" runat="server" ErrorMessage="Departure date must be after arrival date"
                ControlToValidate="departureDateBox" ForeColor="Red" ControlToCompare="arrivalDateBox" Display="Dynamic" Operator="GreaterThan"
                Type="Date">*</asp:CompareValidator>
        </div>
        <div>
            <asp:TextBox ID="departureDateBox" runat="server" CssClass="form-control"></asp:TextBox>
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
        <div>
            First Name<asp:RequiredFieldValidator ID="firstNameBoxValidator" runat="server" ErrorMessage="First name is required"
                ControlToValidate="firstNameBox" ForeColor="Red">*</asp:RequiredFieldValidator>

        </div>
        <asp:TextBox ID="firstNameBox" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>

        <div>
            Last Name<asp:RequiredFieldValidator ID="lastNameBoxValidator" runat="server" ErrorMessage="Last name is required"
                ControlToValidate="lastNameBox" ForeColor="Red">*</asp:RequiredFieldValidator>

        </div>
        <asp:TextBox ID="lastNameBox" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>

        <div>
            E-mail Address<asp:RequiredFieldValidator ID="addressBoxValidator" runat="server" ErrorMessage="Email address is required"
                ControlToValidate="addressBox" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="addressBoxExpressionValidator1" runat="server" ErrorMessage="Invalid Email"
                ControlToValidate="addressBox" ForeColor="Red" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

        </div>
        <asp:TextBox ID="addressBox" runat="server" CssClass="form-control"></asp:TextBox>

        <div>
            Telephone Number<asp:RequiredFieldValidator ID="telephoneNumberBoxValidator" runat="server" ErrorMessage="Telephone Number is required"
                ControlToValidate="telephoneNumberBox" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="telephoneExpressionValidator" runat="server"
                ErrorMessage="Invalid phone number" ControlToValidate="telephoneNumberBox" ForeColor="red" Display="Dynamic" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>

        </div>
        <asp:TextBox ID="telephoneNumberBox" runat="server" CssClass="form-control"></asp:TextBox>

        <div>Preferred Method of Contact</div>

        <asp:DropDownList ID="contactDropDown" runat="server" CssClass="form-control">
            <asp:ListItem>E-mail</asp:ListItem>
            <asp:ListItem>Telephone</asp:ListItem>
        </asp:DropDownList>
        <div>
            <asp:Button ID="submitButton" CssClass="btn btn-primary btn-space" runat="server" Text="Submit" OnClick="submitButton_Click" />
            <asp:Button ID="clearButton" CssClass="btn btn-primary btn-space" runat="server" Text="Clear" OnClick="clearButton_Click" BackColor="#33CC33" />
        </div>
    </div>
</asp:Content>
