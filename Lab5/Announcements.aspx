<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcements.aspx.cs" Inherits="Lab5.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="uxAnnounceDataSource" ConnectionString="<%$ ConnectionStrings:SqlSecurityDB %>" SelectCommandType="Text" SelectCommand="SELECT ID, Title, DatePosted FROM dbo.Announcement;" runat="server" />

    <asp:Repeater ID="uxAnnounceRepeater" DataSourceID="uxAnnounceDataSource" runat="server">

        <HeaderTemplate>
            <table border="1">
                <tr>
                    <td><b>ID</b></td>
                    <td><b>Announcement Title</b></td>
                    <td><b>Date Posted</b></td>
                </tr>
        </HeaderTemplate>

        <ItemTemplate>
                <tr>
                    <td> <%# Eval("ID") %> </td>
                    <td>
                        <asp:HyperLink ID="uxRepeaterHyperlink" runat="server" NavigateUrl='<%# Eval("ID", "Announcement.aspx?ID={0}") %>' >
                         <%# Eval("Title") %> 
                        </asp:HyperLink>
                    </td>
                    <td> <%# Eval("DatePosted") %> </td>
                </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>

    <br />
    <br />

    <asp:LoginView ID="uxLoginView1" runat="server" >
        <AnonymousTemplate>
            Please log in to post announcements.
        </AnonymousTemplate>

        <LoggedInTemplate>
            
            <fieldset>
                <legend>Post Announcement</legend>

                <span>Enter the title of the announcement and the body of the information below and click "Submit"</span>

                <br />

                <asp:Label ID="uxAnnounceHeadLabel" AssociatedControlID="uxAnnounceHead" runat="server">Header:</asp:Label>
                <br />
                <asp:TextBox ID="uxAnnounceHead" MaxLength="250" runat="server" />
                <asp:RequiredFieldValidator ID="uxAnnouceHeadValidator" ControlToValidate="uxAnnounceHead" Display="Static" ErrorMessage="Header" runat="server">
                    *
                </asp:RequiredFieldValidator>

                <br />
                <br />

                <asp:Label ID="uxAnnounceBodyLabel" AssociatedControlID="uxAnnounceBody" runat="server">Body:</asp:Label>
                <br />
                <asp:TextBox ID="uxAnnounceBody" TextMode="MultiLine" runat="server" />
                <asp:RequiredFieldValidator ID="uxAnnouceBodyValidator" ControlToValidate="uxAnnounceBody" Display="Static" ErrorMessage="Body" runat="server">
                    *
                </asp:RequiredFieldValidator>

                <br />
                <br />

                <asp:Button ID="uxSubmitAnnounceButton" Text="Submit Announcement" OnClick="uxSubmitAnnounceButton_Click" runat="server" />

                <hr />

                <br />
                <br />

                <asp:ValidationSummary ID="uxAnnounceValidationSum" DisplayMode="BulletList" HeaderText="You must enter a value for the following fields:" Font-Names="Times New Roman" Font-Size="12" runat="server" />
            </fieldset>

        </LoggedInTemplate>
    </asp:LoginView>

</asp:Content>
