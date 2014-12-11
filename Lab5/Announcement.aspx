<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="Lab5.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>View Announcement</h1>

    <asp:SqlDataSource ID="uxAnnounceDataSource" ConnectionString="<%$ ConnectionStrings:SqlSecurityDB %>" SelectCommandType="Text" SelectCommand="SELECT Title, Body, DatePosted, UserName FROM dbo.Announcement JOIN dbo.aspnet_Users ON dbo.Announcement.UserId = dbo.aspnet_Users.UserId WHERE ID = @ID" runat="server">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="uxCommentDataSource" ConnectionString="<%$ ConnectionStrings:SqlSecurityDB %>" SelectCommandType="Text" SelectCommand="SELECT dbo.AnnouncementComment.DatePosted, Comment, UserName FROM dbo.AnnouncementComment JOIN dbo.Announcement ON dbo.AnnouncementComment.AnnouncementID = dbo.Announcement.ID JOIN dbo.aspnet_Users ON dbo.AnnouncementComment.UserId = dbo.aspnet_Users.UserId WHERE dbo.AnnouncementComment.AnnouncementID = @ID;" runat="server">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:FormView ID="uxAnnounceFormView" DataSourceID="uxAnnounceDataSource" runat="server">
        
        <ItemTemplate>
            <asp:Label ID="uxAnnounceTitleLabel" AssociatedControlID="uxAnnounceTitle" runat="server"><b>Title: </b></asp:Label>
            <asp:Literal ID="uxAnnounceTitle" Text='<%# Eval("Title") %>' runat="server" />

            <br />

            <asp:Label ID="uxAnnounceDateLabel" AssociatedControlID="uxAnnounceDate" runat="server"><b>Date Posted: </b></asp:Label>
            <asp:Literal ID="uxAnnounceDate" Text='<%# Eval("DatePosted") %>' runat="server" />

            <br />

            <asp:Label ID="uxAnnounceUserLabel" AssociatedControlID="uxAnnounceUser" runat="server"><b>Posted By: </b></asp:Label>
            <asp:Literal ID="uxAnnounceUser" Text='<%# Eval("UserName") %>' runat="server" />

            <br />
            <br />

            <asp:Label ID="uxAnnounceBodyLabel" AssociatedControlID="uxAnnounceBody" runat="server"><b>Body: </b></asp:Label>
            <br />
            <asp:TextBox ID="uxAnnounceBody" TextMode="MultiLine" ReadOnly="true" Text='<%# Eval("Body") %>' Width="500px" Height="400px" runat="server" />

        </ItemTemplate>

    </asp:FormView>

    <br />
    <hr />
    <br />
    <h2>Comments: </h2>
    <br />

    <asp:GridView ID="uxCommentGridView" DataSourceID="uxCommentDataSource" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="Posted By:" ItemStyle-Width="100px" />
            <asp:BoundField DataField="Comment" HeaderText="Comment:" ItemStyle-Width="550px" />
            <asp:BoundField DataField="DatePosted" HeaderText="Date Commented" ItemStyle-Width="175px" />    
        </Columns>
    </asp:GridView>

    <br />
    <hr />
    <br />

    <asp:LoginView ID="uxCommentLoginView" runat="server">
        <AnonymousTemplate>
            <h3>Please log in to post comments!</h3>
        </AnonymousTemplate>

        <LoggedInTemplate>
            <fieldset>
                <legend>Post a comment using the form below:</legend>

                <asp:Label ID="uxCommentLabel" AssociatedControlID="uxCommentBox" runat="server">Comment:</asp:Label>
                <br />

                <asp:TextBox ID="uxCommentBox" TextMode="MultiLine" runat="server" />
                <asp:RequiredFieldValidator ID="uxCommentBoxValidator" ControlToValidate="uxCommentBox" Display="Static" ErrorMessage="Comment" runat="server">
                    *
                </asp:RequiredFieldValidator>

                <br />
                <br />

                <asp:Button ID="uxSubmitCommentButton" Text="Submit Comment" OnClick="uxSubmitCommentButton_Click" runat="server" />

                <hr />

                <br />
                <br />

                <asp:ValidationSummary ID="uxCommentValidationSum" DisplayMode="BulletList" HeaderText="You must enter a value for the following fields:" Font-Names="Times New Roman" Font-Size="12" runat="server" />
            </fieldset>
        </LoggedInTemplate>
    </asp:LoginView>

    <br />
    <br />
    <br />


</asp:Content>
