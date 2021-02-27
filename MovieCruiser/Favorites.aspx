<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Favorites.aspx.cs" Inherits="MovieCruiser.Favorites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <h1>Favorites</h1>
    <br />
    <br />
    <asp:GridView ID="GridViewFav" runat="server" Width="995px" Height="191px" AutoGenerateColumns="false" CellPadding="3" GridLines="None" HorizontalAlign="Center">
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
            HeaderText="Action" ItemStyle-Width="150px" >


<ItemStyle Width="150px"></ItemStyle>
            </asp:HyperLinkField>


</Columns>
        <HeaderStyle HorizontalAlign="Left" />
    </asp:GridView>
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
