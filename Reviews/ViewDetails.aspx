<%@ Page Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="ViewDetails.aspx.vb" Inherits="Reviews_ViewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <h1><asp:Label ID="TitleLabel" runat="server"></asp:Label></h1>
  <asp:Label CssClass="Summary" ID="SummaryLabel" runat="server"></asp:Label>
  <asp:Label ID="BodyLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

