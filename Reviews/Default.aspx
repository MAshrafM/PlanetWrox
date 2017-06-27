<%@ Page Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Reviews_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Repeater ID="GenreRepeater" runat="server">
        <HeaderTemplate>
            <p>Below you find a list with reviews for your favorite music genres.</p>
        </HeaderTemplate>
        <ItemTemplate>
            <h3><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Name") %>'></asp:Literal></h3>
            <asp:Repeater ID="ReviewRepeater" runat="server"  DataSource='<%# Eval("Reviews")%>' ItemType="PlanetWroxModel.Review">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Item.Title %>' NavigateUrl='<%# "ViewDetails.aspx?ReviewId=" + Item.Id.ToString() %>'>
                    </asp:HyperLink><br />
                </ItemTemplate>
            </asp:Repeater>
        </ItemTemplate>
    </asp:Repeater>
    <asp:PlaceHolder ID="NoRecords" runat="server" Visible="False">
        <p>Sorry, no reviews were found. You either didn't set your favorite genres
        or you may need to log in first. </p>
    </asp:PlaceHolder>
    <p>You can change your genre preferences <a href="~/MyProfile.aspx" runat="server">here</a>.</p>
</asp:Content>
