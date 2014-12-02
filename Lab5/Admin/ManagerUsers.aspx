<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ManagerUsers.aspx.cs" Inherits="Lab5.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <fieldset>
        <legend>Add Roles</legend>
        <asp:TextBox ID="uxRoleTextBox" runat="server" />
        <asp:Button ID="uxSubmitRoleButton" Text="Create Role" OnClick="uxSubmitRoleButton_Click" runat="server" />
        <asp:RequiredFieldValidator ID="uxRoleValidator" ControlToValidate="uxRoleTextBox" runat="server" />
    </fieldset>

</asp:Content>
