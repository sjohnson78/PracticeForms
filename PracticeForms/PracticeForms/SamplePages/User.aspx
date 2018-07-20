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

    <%-- VALIDATION --%>
    <asp:RequiredFieldValidator ID="FirstNameRequiredField" 
        runat="server" 
        ErrorMessage="First name is required." 
        ControlToValidate="FirstName" 
        SetFocusOnError="true" 
        ForeColor="Firebrick"
        Display="None"></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="LastNameRequiredField" 
        runat="server" 
        ErrorMessage="Last name is required." 
        ControlToValidate="LastName" 
        SetFocusOnError="true" 
        ForeColor="Firebrick"
        Display="None"></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="UserNameRequiredField" 
        runat="server" 
        ErrorMessage="User name is required." 
        ControlToValidate="UserName" 
        SetFocusOnError="true" 
        ForeColor="Firebrick"
        Display="None"></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="EmailAddressRequiredField" 
        runat="server" 
        ErrorMessage="Email address is required." 
        ControlToValidate="EmailAddress" 
        SetFocusOnError="true" 
        ForeColor="Firebrick"
        Display="None"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="EmailAddressRegularExpression" 
        runat="server" 
        ErrorMessage="Email formatting incorrect, please use (xxxx@xxxx.xx)"
        ControlToValidate="EmailAddress" 
        SetFocusOnError="true" 
        ForeColor="Firebrick" 
        Display="None" 
        ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
        ></asp:RegularExpressionValidator>
    <%-- get this email validation expression from emailregex.com --%>


    <%-- the code below has a REGEX for phone numbers --%>

    <%--<asp:RegularExpressionValidator ID="EmailAddressRegularExpression" 
        runat="server" 
        ErrorMessage="ENTER A PHONE NUMBER"
        ControlToValidate="EmailAddress" 
        SetFocusOnError="true" 
        ForeColor="Firebrick" 
        Display="None" 
        ValidationExpression="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})$"
        ></asp:RegularExpressionValidator>--%>

    

    <asp:RequiredFieldValidator ID="ConfirmEmailRequiredField" 
        runat="server" 
        ErrorMessage="Confirm Email is required." 
        ControlToValidate="ConfirmEmail" 
        SetFocusOnError="true" 
        ForeColor="Firebrick"
        Display="None"></asp:RequiredFieldValidator>    
    <asp:RegularExpressionValidator ID="ConfirmEmailRegularExpression" 
        runat="server" 
        ErrorMessage="CONFIRMED Email formatting incorrect, please use (xxxx@xxxx.xx)"
        ControlToValidate="ConfirmEmail" 
        SetFocusOnError="true" 
        ForeColor="Firebrick" 
        Display="None" 
        ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
        ></asp:RegularExpressionValidator>
    <asp:CompareValidator ID="ConfirmEmailCompare"
        runat="server" 
        ErrorMessage="Email addresses must match" 
        ControlToValidate="ConfirmEmail" 
        SetFocusOnError="true" 
        ForeColor="Firebrick" 
        Display="None" 
        Operator="Equal" 
        ControlToCompare="EmailAddress"></asp:CompareValidator>

    <asp:RequiredFieldValidator ID="PasswordRequiredField" 
        runat="server" 
        ErrorMessage="Password is required." 
        ControlToValidate="Password" 
        SetFocusOnError="true" 
        ForeColor="Firebrick"
        Display="None"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="PasswordRegularExpression" 
        runat="server" 
        ErrorMessage="Password must be between 4 and 8 digits long and include at least one numeric digit."
        ControlToValidate="Password" 
        SetFocusOnError="true" 
        ForeColor="Firebrick" 
        Display="None" 
        ValidationExpression="^(?=.*\d)(?=.*[a-zA-Z]).{4,8}$"
        ></asp:RegularExpressionValidator>
    <%-- regex above is for password 48- characters containing one number --%>

    <asp:RequiredFieldValidator ID="ConfirmPasswordRequiredField" 
        runat="server" 
        ErrorMessage="Confirm Password is required." 
        ControlToValidate="ConfirmPassword" 
        SetFocusOnError="true" 
        ForeColor="Firebrick"
        Display="None"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="ConfirmPasswordRegularExpression" 
        runat="server" 
        ErrorMessage="CONFIRMED Password must be between 4 and 8 digits long and include at least one numeric digit."
        ControlToValidate="ConfirmPassword" 
        SetFocusOnError="true" 
        ForeColor="Firebrick" 
        Display="None" 
        ValidationExpression="^(?=.*\d)(?=.*[a-zA-Z]).{4,8}$"
        ></asp:RegularExpressionValidator>
    <asp:CompareValidator ID="ConfirmPasswordCompare"
        runat="server" 
        ErrorMessage="Passwords must match." 
        ControlToValidate="ConfirmPassword" 
        SetFocusOnError="true" 
        ForeColor="Firebrick" 
        Display="None" 
        Operator="Equal" 
        ControlToCompare="Password"></asp:CompareValidator>



    <div class="row">
        <asp:ValidationSummary ID="ValidationSummary1" 
        runat="server" 
        HeaderText="Correct the following concerns and resubmit:" 
        CssClass="alert alert-danger"/> 
    </div>

    <br />

    <%-- FORM --%>

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

        <asp:Label ID="Label4" runat="server" Text="Confirm Email" AssociatedControlID="ConfirmEmail"></asp:Label>
        <asp:TextBox ID="ConfirmEmail" runat="server" ToolTip="Confirm Email" MaxLength="100"></asp:TextBox>
                
        <asp:Label ID="Label6" runat="server" Text="Password" AssociatedControlID="Password"></asp:Label>
        <asp:TextBox ID="Password" runat="server" ToolTip="Password" MaxLength="50"></asp:TextBox>

        <asp:Label ID="Label7" runat="server" Text="Confirm Password" AssociatedControlID="ConfirmPassword"></asp:Label>
        <asp:TextBox ID="ConfirmPassword" runat="server" ToolTip="Confirm Password" MaxLength="50"></asp:TextBox>

        <%-- if you want the label on the left (with this CSS-Grid setup) use a label, otherwise you can just have text on the checkbox) --%>
        <%--<asp:Label ID="Label8" runat="server" Text="I agree to the terms of this site" AssociatedControlID="Terms"></asp:Label>--%>
        <asp:CheckBox ID="Terms" runat="server" Text="I agree to the terms of this site" />
        
        <%-- tip for buttons, after you drag the button from the toolbox and set the ID and Text, you can open design/split and double click the button
                this will automatically add an OnClick property here, as well as add a matching object in the aspx.cs  --%>

        <%-- need the P tag around the buttons to fix formatting, not sure how it works, ask Don --%>
        <p>
            <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
            <asp:Button ID="Clear" runat="server" Text="Clear" OnClick="Clear_Click" />
        </p>
        <%--use this label as a makeshift webgrid, to see if buttons are working--%>
        <asp:Label ID="Message" runat="server" Text="This text will change to a crazy long list of values from the text fields"></asp:Label>
    </div>
</asp:Content>
