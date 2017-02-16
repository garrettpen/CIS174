<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="budgetTracker.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Budget Tracker</title>
    <link rel="stylesheet" type="text/css" href="content/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="content/custom.css">
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/main.js"></script>
</head>
<div class="container">
    <div class="page-header">
        <h1>Budget Tracker</h1>
    </div>
<div>
    <form id="form1" runat="server">
    <div class="form-group">
    
        <asp:Label ID="salary" runat="server" Text="Please input monthly salary "></asp:Label>
        <asp:TextBox ID="salaryInput" class="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="saveSalaryButton" runat="server" class="btn btn-primary btn-space" OnClick="saveSalaryButton_Click" Text="Save salary" />
        <asp:Label ID="monthlySalaryLabel" runat="server" Text="$0.00"></asp:Label>
    
    </div>
    <div class="form-group">

        Please input name of monthly expense&nbsp;
        <asp:TextBox ID="expenseNameInput" class="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="expenseAmountLabel" runat="server" Text="Please enter amount of expense"></asp:Label>
        <asp:TextBox ID="expenseAmountInput" class="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="addExpenseButton" runat="server" class="btn btn-primary btn-space" Text="Add Expense" OnClick="addExpenseButton_Click" />

    </div>
        <table id="tableExpenses" class="table table-hover" runat="server">
            <tbody>
            </tbody>
        </table>
    </form>
</div>
</div>
</html>
