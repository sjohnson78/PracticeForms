<%@ Page Title="User Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="PracticeForms.SamplePages.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="page-header">
        <h1>User Registration</h1>
    </div>
    
    <div class="row">
        <div class="col-md-offset-1 col-md-5">
            <p>
                Please fill in the form below and click submit. 
                After submitting the form, you will receive an email with a link to confirm your registration. 
                By clicking on that link, you will complete the registration process.
            </p>
        </div>
    </div>
    <br />
    <div class="grid-form">
        <%-- label: text is the text in the label, assiciatedcontrolID should be the id of the text box that the label is for--%>

        <%-- text box: ID is used to target this text box, ToolTip is what shows up if you hover the mouse over it, MaxLength is how many characters are allowed --%>


        <asp:Label ID="Label1" runat="server" Text="First Name" AssociatedControlID="FirstName"></asp:Label>
        <asp:TextBox ID="FirstName" runat="server" ToolTip="First Name" MaxLength="25"></asp:TextBox>

        <asp:Label ID="Label2" runat="server" Text="Last Name" AssociatedControlID="LastName"></asp:Label>
        <asp:TextBox ID="LastName" runat="server" ToolTip="Last Name" MaxLength="25"></asp:TextBox>

        <asp:Label ID="Label5" runat="server" Text="User Name" AssociatedControlID="UserName"></asp:Label>
        <asp:TextBox ID="UserName" runat="server" ToolTip="User Name" MaxLength="25"></asp:TextBox>

        <asp:Label ID="Label3" runat="server" Text="Email Address" AssociatedControlID="EmailAddress"></asp:Label>
        <asp:TextBox ID="EmailAddress" runat="server" ToolTip="Email Address" MaxLength="100"></asp:TextBox>

        <asp:Label ID="Label4" runat="server" Text="Confirm Email" AssociatedControlID="EmailConfirm"></asp:Label>
        <asp:TextBox ID="EmailConfirm" runat="server" ToolTip="Confirm Email" MaxLength="100"></asp:TextBox>
                
        <asp:Label ID="Label6" runat="server" Text="Password" AssociatedControlID="Password"></asp:Label>
        <asp:TextBox ID="Password" runat="server" ToolTip="Password" MaxLength="50"></asp:TextBox>

        <asp:Label ID="Label7" runat="server" Text="Confirm Password" AssociatedControlID="ConfirmPassword"></asp:Label>
        <asp:TextBox ID="ConfirmPassword" runat="server" ToolTip="Confirm Password" MaxLength="50"></asp:TextBox>

        <%-- if you want the label on the left (with this CSS-Grid setup) use a label, otherwise you can just have text on the checkbox) --%>
        <%--<asp:Label ID="Label8" runat="server" Text="I agree to the terms of this site" AssociatedControlID="Terms"></asp:Label>--%>
        <asp:CheckBox ID="Terms" runat="server" Text="I agree to the terms of this site" />
        
        <%-- tip for buttons, after you drag the button from the toolbox and set the ID and Text, you can open design/split and double click the button
                this will automatically add an OnClick property here, as well as add a matching object in the aspx.cs  --%>

        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />

        <asp:Button ID="Clear" runat="server" Text="Clear" OnClick="Clear_Click" />
    </div>
</asp:Content>
