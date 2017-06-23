<%@ Page Title="Login In to Planet Wrox" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h2>Login to PlanetWrox...</h2>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login ID="Login1" runat="server" CreateUserText="Sign Up for a New Account" CreateUserUrl="SignUp.aspx">
            </asp:Login>
        </AnonymousTemplate>
        <LoggedInTemplate>
            You are Already Logged In.
        </LoggedInTemplate>
    </asp:LoginView>
<p>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
</p>
</asp:Content>

