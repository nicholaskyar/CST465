<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Lab5.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Login MembershipProvider="SqlMembership" CreateUserText="Register" CreateUserUrl="~/Register.aspx" runat="server" />

</asp:Content>
