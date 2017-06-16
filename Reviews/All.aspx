<%@ Page Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="All.aspx.vb" Inherits="Reviews_All" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server" ItemType="PlanetWroxModel.Review">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ViewDetails.aspx?ReviewId=" + Item.Id.ToString() %>' Text='<%# Item.Title %>'></asp:HyperLink>
        </ItemTemplate>
        <SeparatorTemplate><br /></SeparatorTemplate>
    </asp:Repeater>
</asp:Content>
