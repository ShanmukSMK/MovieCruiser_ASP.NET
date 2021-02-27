<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="FavoritesEmpty.aspx.cs" Inherits="MovieCruiser.FavoritesEmpty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <h1>&nbsp; Favorites</h1>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No items in favorites.Use &quot;Add to Favorites&quot; option in&nbsp;
    <asp:HyperLink ID="custMovieLink" runat="server" Font-Underline="True" ForeColor="#000099" NavigateUrl="~/CustomerMovieList.aspx">Movies</asp:HyperLink>
     <br />
    
    <br />
    <br />
    <br />
    <br />
    <br />


</asp:Content>

