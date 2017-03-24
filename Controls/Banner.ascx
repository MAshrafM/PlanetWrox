<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Banner.ascx.vb" Inherits="Controls_Banner" %>
<asp:Panel ID="VerticalPanel" runat="server">
    <a href="~/" target="_blank" runat="server" id="VerticalLink" >
        <asp:Image ID="Image1" runat="server" AlternateText="This is a sample banner" ImageUrl="~/Images/Banner120x240.gif" />
    </a>
</asp:Panel>

<asp:Panel ID="HorizontalPanel" runat="server">
    <a href="~/" target="_blank" runat="server" id="HorizontalLink" >
        <asp:Image ID="Image2" runat="server" AlternateText="This is a sample banner" ImageUrl="~/Images/Banner486x60.gif" />
    </a>
</asp:Panel>

