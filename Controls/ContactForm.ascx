<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ContactForm.ascx.vb" Inherits="Controls_ContactForm" %>

<script type="text/javascript">
    function validatePhoneNumbers(source, args) {
        var phoneNumber = document.getElementById('<%= PhoneHome.clientID %>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.clientID %>');
        if (phoneNumber.value != '' && phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }


</script>
<asp:Table ID="FormTable" runat="server">
    <asp:TableRow>
        <asp:TableCell ColumnSpan="3"><h1>Get in touch with us</h1><p>Use the form below to get in touch with us. Enter your name, email address and your phone number to reach us.</p></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>Name</asp:TableCell>
        <asp:TableCell><asp:TextBox ID="Name" runat="server"></asp:TextBox></asp:TableCell>
        <asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="Enter your name" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="Name"></asp:RequiredFieldValidator></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>Email</asp:TableCell>
        <asp:TableCell><asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox></asp:TableCell>
        <asp:TableCell>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter email address" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="EmailAddress"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid email address" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="EmailAddress" ValidateRequestMode="Inherit"></asp:RegularExpressionValidator>

        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>Confirm Email</asp:TableCell>
        <asp:TableCell><asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox></asp:TableCell>
        <asp:TableCell>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Confirm email address" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="ConfirmEmailAddress"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The Email address do not match" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress"></asp:CompareValidator>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>Phone home</asp:TableCell>
        <asp:TableCell><asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox></asp:TableCell>
        <asp:TableCell><asp:CustomValidator runat="server" ErrorMessage="umber" CssClass="ErrorMessage" Text="*" Display="Dynamic" ClientValidationFunction="validatePhoneNumber"></asp:CustomValidator></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>Phone business</asp:TableCell>
        <asp:TableCell><asp:TextBox ID="PhoneBusiness" runat="server"></asp:TextBox></asp:TableCell>
        <asp:TableCell></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>Comments</asp:TableCell>
        <asp:TableCell><asp:TextBox ID="Comments" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox></asp:TableCell>
        <asp:TableCell>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter a comment" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="Comments"></asp:RequiredFieldValidator>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell></asp:TableCell>
        <asp:TableCell><asp:Button ID="SendButton" runat="server" Text="Send" /></asp:TableCell>
        <asp:TableCell></asp:TableCell>

    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell ColumnSpan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" ShowMessageBox="False" ShowSummary="False" HeaderText="Please correct the following errors." />
        </asp:TableCell>
    </asp:TableRow>

</asp:Table>
<asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" />
