<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Lab5.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="uxSelectUsersDS" ConnectionString="<%$ ConnectionStrings:SqlSecurityDB %>" SelectCommandType="Text" SelectCommand="SELECT UserName FROM aspnet_Users" runat="server" />
    <asp:SqlDataSource ID="uxSelectRolesDS" ConnectionString="<%$ ConnectionStrings:SqlSecurityDB %>" SelectCommandType="Text" SelectCommand="SELECT RoleName FROM aspnet_Roles" runat="server" />

    <fieldset>
        <legend>Add Role</legend>
        <asp:Label ID="uxRoleTextBoxLabel" Text="Role Name:" AssociatedControlID="uxRoleTextBox" runat="server" />
        <asp:TextBox ID="uxRoleTextBox" runat="server" />
        <asp:Button ID="uxRoleCreateButton" OnClick="uxRoleCreateButton_Click" Text="Create Role" runat="server" />
    </fieldset>

    <fieldset>
        <legend>Role Membership</legend>

        <span>Select a user and a role from the following drop downs to add the chosen user to the chosen role.</span>

        <br />

        <asp:Label ID="uxUserDropDownLabel" AssociatedControlID="uxUserDropDown" runat="server">Users:</asp:Label>
        <asp:DropDownList ID="uxUserDropDown" DataSourceID="uxSelectUsersDS" DataTextField="UserName" DataValueField="UserName" runat="server" />

        <br />

        <asp:Label ID="uxRoleDropDownLabel" AssociatedControlID="uxRoleDropDown" runat="server">Roles:</asp:Label>
        <asp:DropDownList ID="uxRoleDropDown" DataSourceID="uxSelectRolesDS" DataTextField="RoleName" DataValueField="RoleName" runat="server" />

        <br />

        <asp:Button ID="uxRoleMemberAddButton" OnClick="uxRoleMemberAddButton_Click" Text="Add User to Role" runat="server" />
    </fieldset>
</asp:Content>
