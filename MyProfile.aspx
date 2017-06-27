<%@ Page Title="My Profile" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="MyProfile.aspx.vb" Inherits="MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>My Profile</h1>
    <p>The My Profile page allows you to make changes to your personal profile.</p>
    
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label1" runat="server" Text="First Name" AssociatedControlID="FirstName"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="FirstName" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="First Name Required" Display="Dynamic" ControlToValidate="FirstName"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label2" runat="server" Text="Last Name" AssociatedControlID="LastName"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="LastName" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="Last Name Required" Display="Dynamic" ControlToValidate="LastName"></asp:RequiredFieldValidator></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label3" runat="server" Text="Date Of Birth" AssociatedControlID="DateOfBirth"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="DateOfBirth" runat="server"></asp:TextBox></asp:TableCell>
            <asp:TableCell>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Date of birth required" ControlToValidate="DateOfBirth" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please Enter a Valid Date" Display="Dynamic" ControlToValidate="DateOfBirth" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="Label4" runat="server" Text="Biography"></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="Bio" runat="server" TextMode="MultiLine" Height="75px" Width="300px"></asp:TextBox></asp:TableCell>

        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" AssociatedControlID="PreferenceList" Text="Favorite genres"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBoxList ID="PreferenceList" runat="server" DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id"></asp:CheckBoxList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" EntitySetName="Genres" OrderBy="it.Name" Select="it.[Id], it.[Name]"></asp:EntityDataSource>
            </asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell></asp:TableCell>
            <asp:TableCell><asp:Button ID="SaveButton" runat="server" Text="Save Profile" /></asp:TableCell>

        </asp:TableRow>
    </asp:Table>
    
    <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

