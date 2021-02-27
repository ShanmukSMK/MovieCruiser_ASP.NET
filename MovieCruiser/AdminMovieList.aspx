<%@ Page Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="AdminMovieList.aspx.cs" Inherits="MovieCruiser.AdminMovieList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <h1>Movies</h1>
        <br />
        <br />
        <br />
    
    <p>
      <asp:GridView ID="GridView1" runat="server" CellPadding="5" GridLines="None" Width="1092px" AutoGenerateColumns="False" CellSpacing="5" HorizontalAlign="Center">
          <%-- <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false">--%>
       <Columns>
           
           <asp:BoundField HeaderText="MovieId" DataField="Id" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
           </asp:BoundField>
           <asp:BoundField HeaderText="Title" DataField="Title" ItemStyle-Width="200px" >
<ItemStyle Width="200px"></ItemStyle>
           </asp:BoundField>
            <asp:BoundField HeaderText="BoxOffice" DataField="BoxOffice" ItemStyle-Width="150px" >
<ItemStyle Width="150px"></ItemStyle>
           </asp:BoundField>
            <asp:BoundField HeaderText="Active" DataField="Active" ItemStyle-Width="50px" >
<ItemStyle Width="50px"></ItemStyle>
           </asp:BoundField>
            <asp:BoundField HeaderText="DateofLaunch" DataField="DateofLaunch" ItemStyle-Width="100px" >
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
            DataNavigateUrlFormatString="~\EditMovie.aspx?Id={0}"
            Text="Edit"
            HeaderText="Action" ItemStyle-Width="150px" >

<ItemStyle Width="150px"></ItemStyle>
           </asp:HyperLinkField>

       </Columns>
          <HeaderStyle HorizontalAlign="Left" />
        </asp:GridView>
    </p><br />
    </p>
    <br />
    <br />
    <br />

</asp:Content>
