<%@ Page Title="Edit Your Profile" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="EditProfilePage" Codebehind="EditProfilePage.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Edit Profile Page</h1>

    <div id="uxEditDiv">
        <asp:Label ID="uxNameLabel" AssociatedControlID="uxName" runat="server">Name: </asp:Label>
        <asp:TextBox ID="uxName" ValidationGroup="ProfileValidator" runat="server" />
        <asp:RequiredFieldValidator ID="uxNameValidator" ControlToValidate="uxName" Display="None" ErrorMessage="Name" ValidationGroup="ProfileValidator" runat="server" />

        <br />
        <br />

        <asp:Label ID="uxEmailLabel" AssociatedControlID="uxEmail" runat="server">Email: </asp:Label>
        <asp:TextBox ID="uxEmail" ValidationGroup="ProfileValidator" runat="server" />
        <asp:RequiredFieldValidator ID="uxEmailValidator" ControlToValidate="uxEmail" Display="None" ErrorMessage="Email" ValidationGroup="ProfileValidator" runat="server" />

        <br />
        <br />

        <asp:Label ID="uxUserTypeLabel" AssociatedControlID="uxUserType" runat="server">User Type: </asp:Label>
        <asp:DropDownList ID="uxUserType" ValidationGroup="ProfileValidator" runat="server" >
            <asp:ListItem Value="0">--Select--</asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Faculty</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="uxUserTypeValidator" ControlToValidate="uxUserType" Display="None" ErrorMessage="User Type" InitialValue="0" ValidationGroup="ProfileValidator" runat="server" />

        <br />
        <br />

        <asp:Label ID="uxHobbyLabel" AssociatedControlID="uxHobby" runat="server">Hobby: </asp:Label>
        <asp:TextBox ID="uxHobby" ValidationGroup="ProfileValidator" runat="server" />
        <asp:RequiredFieldValidator ID="uxHobbyValidator" ControlToValidate="uxHobby" Display="None" ErrorMessage="Hobby" ValidationGroup="ProfileValidator" runat="server" />

        <br />
        <br />

        <asp:Label ID="uxBandLabel" AssociatedControlID="uxBand" runat="server">Band: </asp:Label>
        <asp:TextBox ID="uxBand" ValdiationGroup="ProfileValidator" runat="server" />
        <asp:RequiredFieldValidator ID="uxBandValidator" ControlToValidate="uxBand" Display="None" ErrorMessage="Band" ValidationGroup="ProfileValidator" runat="server" />

        <br />
        <br />

        <asp:Label ID="uxBiographyLabel" AssociatedControlID="uxBiography" runat="server">Biography: </asp:Label>
        <br />
        <asp:TextBox ID="uxBiography" TextMode="MultiLine" ValidationGroup="ProfileValidator" runat="server" />
        <asp:RequiredFieldValidator ID="uxBiographyValidator" ControlToValidate="uxBiography" Display="None" ErrorMessage="Biography" ValidationGroup="ProfileValidator" runat="server" />

        <br />
        <br />

        <asp:Table GridLines="Both" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell><asp:Label ID="uxCoursePrefixLabel" AssociatedControlID="uxCoursePrefix" runat="server">Course Prefix</asp:Label></asp:TableHeaderCell>
                <asp:TableHeaderCell><asp:Label ID="uxCourseNumberLabel" AssociatedControlID="uxCourseNumber" runat="server">Course Number</asp:Label></asp:TableHeaderCell>
                <asp:TableHeaderCell><asp:Label ID="uxCourseDescriptionLabel" AssociatedControlID="uxCourseDescription" runat="server">Course Description</asp:Label></asp:TableHeaderCell>
            </asp:TableHeaderRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="uxCoursePrefix" ValidationGroup="ProfileValidator" runat="server" />
                    <asp:RequiredFieldValidator ID="uxCoursePrefixValidator" ControlToValidate="uxCoursePrefix" Display="None" ErrorMessage="Course Prefix" ValidationGroup="ProfileValidator" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="uxCourseNumber" ValidationGroup="ProfileValidator" runat="server" />
                    <asp:RequiredFieldValidator ID="uxCourseNumberValidator" ControlToValidate="uxCourseNumber" Display="None" ErrorMessage="Course Number" ValidationGroup="ProfileValidator" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="uxCourseDescription" ValidationGroup="ProfileValidator" runat="server" />
                    <asp:RequiredFieldValidator ID="uxCourseDescriptionValidator" ControlToValidate="uxCourseDescription" Display="None" ErrorMessage="Course Description" ValidationGroup="ProfileValidator" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <br />
        <br />

        <asp:Button ID="uxSaveButton" OnClick="uxSaveButton_Click" Text="Save" ValidationGroup="ProfileValidator" runat="server" />
    </div>

    <br />

    <div id="uxValidationErrorDiv">
        <asp:ValidationSummary ID="uxValSum" DisplayMode="BulletList" HeaderText="You must enter the following fields:" ValidationGroup="ProfileValidator" runat="server" />
    </div>
</asp:Content>

