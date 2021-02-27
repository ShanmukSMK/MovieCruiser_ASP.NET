<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerMovieList.aspx.cs" Inherits="MovieCruiser.CustomerMovieList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <h1>Movies</h1>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" Width="959px" AutoGenerateColumns="false" CellPadding="3" CellSpacing="5" EnableTheming="True" GridLines="None" Height="401px" HorizontalAlign="Center" 
        >
        <Columns>
           
           <asp:BoundField HeaderText="MovieId" DataField="Id" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
            </asp:BoundField>
           <asp:BoundField HeaderText="Title" DataField="Title" ItemStyle-Width="200px" >
<ItemStyle Width="200px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Box Office" DataField="BoxOffice" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Active" DataField="Active" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Date of Launch" DataField="DateofLaunch" ItemStyle-Width="100px" >
<ItemStyle Width="100px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Genre" DataField="Genre" ItemStyle-Width="100px" >
<ItemStyle Width="100px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Has Teaser" DataField="HasTeaser" ItemStyle-Width="150px" >
      
          
<ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
      
          
                            <asp:HyperLinkField
            DataNavigateUrlFields="id" 
            DataNavigateUrlFormatString="~\Favorites.aspx?Id={0}"
            Text="Add To Favourites"
            HeaderText="Action" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
            </asp:HyperLinkField>
            </Columns>
        <HeaderStyle HorizontalAlign="Left" />
    </asp:GridView>
    &nbsp;</p><br />
    </p>
    

</asp:Content>

