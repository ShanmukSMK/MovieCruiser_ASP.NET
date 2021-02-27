<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="RemoveFavorites.aspx.cs" Inherits="MovieCruiser.FavoritesNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <h1>&nbsp; Favorites</h1>
    <div style="color:forestgreen"><center> Movie Removed from favorites successfully</center>
    </div>
    <br />
    <br />
    <asp:GridView ID="GridViewRemoveFav" runat="server" Width="995px" Height="191px" AutoGenerateColumns="false" CellPadding="3" GridLines="None" HorizontalAlign="Center">
        <Columns>
        <asp:BoundField HeaderText="Title" DataField="Title" ItemStyle-Width="200px" >
<ItemStyle Width="200px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="BoxOffice" DataField="BoxOffice" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
         <asp:BoundField HeaderText="Genre" DataField="Genre" ItemStyle-Width="100px" >
<ItemStyle Width="100px"></ItemStyle>
            </asp:BoundField>
             <asp:HyperLinkField
            DataNavigateUrlFields="id"
            DataNavigateUrlFormatString="~\RemoveFavorites.aspx?Id={0}"
            Text="Delete"
             ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
            </asp:HyperLinkField>
</Columns>
        <HeaderStyle HorizontalAlign="Left" />
      </asp:GridView>
    <br />



    </asp:Content>