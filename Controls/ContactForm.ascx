<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ContactForm.ascx.vb" Inherits="Controls_ContactForm" %>

<asp:Table ID="Table1" runat="server">
    <asp:TableRow>
        <asp:TableCell ColumnSpan="3"><h1>Get in touch with us</h1><p>Use the form below to get in touch with us. Enter your name, email address and your phone number to reach us.</p></asp:TableCell></asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>Name</asp:TableCell>
        <asp:TableCell><asp:TextBox ID="Name" runat="server"></asp:TextBox></asp:TableCell>
        <asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="Enter your name" Text="*" ControlToValidate="Name"></asp:RequiredFieldValidator></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow><asp:TableCell></asp:TableCell><asp:TableCell></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell></asp:TableCell><asp:TableCell></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell></asp:TableCell><asp:TableCell></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell></asp:TableCell><asp:TableCell></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell></asp:TableCell><asp:TableCell>
        <asp:Button ID="SendButton" runat="server" Text="Send" /></asp:TableCell><asp:TableCell></asp:TableCell></asp:TableRow>
</asp:Table>

