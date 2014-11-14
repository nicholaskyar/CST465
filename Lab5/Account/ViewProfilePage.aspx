<%@ Page Title="View Your Profile" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="ViewProfilePage" Codebehind="ViewProfilePage.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>View Profile Page</h1>

    <span class="fieldTitle">Name: </span>
    <asp:Literal ID="uxNameLiteral" runat="server" />

    <br />
    <br />

    <span class="fieldTitle">User Type: </span>
    <asp:Literal ID="uxUserTypeLiteral" runat="server" />

    <br />
    <br />

    <span class="fieldTitle">Hobby: </span>
    <asp:Literal ID="uxHobbyLiteral" runat="server" />

    <br />
    <br />

    <span class="fieldTitle">Band: </span>
    <asp:Literal ID="uxBandLiteral" runat="server" />

    <br />
    <br />

    <span class="fieldTitle">Biography: </span>
    <br />
    <asp:Literal ID="uxBiographyLiteral" runat="server" />

    <br />
    <br />

    <span class="fieldTitle">Course Prefix: </span>
    <asp:Literal ID="uxCoursePrefixLiteral" runat="server" />

    <br />
    <br />

    <span class="fieldTitle">Course Number: </span>
    <asp:Literal ID="uxCourseNumberLiteral" runat="server" />

    <br />
    <br />

    <span class="fieldTitle">Course Description: </span>
    <asp:Literal ID="uxCourseDescriptionLiteral" runat="server" />

</asp:Content>

