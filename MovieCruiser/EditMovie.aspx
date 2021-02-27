<%@ Page Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="MovieCruiser.EditMovie" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
       
        function titleValidate(sender, args)
        {
            if (args.Value.length < 3)
                args.IsValid = false;
            else
                args.IsValid = true;

        }

    </script>
    
    <br />
    <br />
    <h1>&nbsp;&nbsp; Edit Movie</h1>
    <br />
    &nbsp;
    Title<br />
    <asp:TextBox ID="txtTitle" runat="server" Width="907px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="Title required" Font-Bold="True" Font-Size="Small" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
    &nbsp;
    <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="titleValidate" ControlToValidate="txtTitle" Display="Dynamic" ErrorMessage="Title must contain min 3 characters" Font-Size="Small" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
    <br />
    <br />
    <br />

    <div>&nbsp;&nbsp; Gross&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Active&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; DateofLaunch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Genre</div>

    

    <br /><div>
    <asp:TextBox ID="txtGross" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGross" ErrorMessage="*required" Font-Bold="True" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioBtnYes" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="RadioBtnNo" runat="server" Text="No" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDate" ErrorMessage="*required" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownListGenre" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>SuperHero</asp:ListItem>
            <asp:ListItem>Science Fiction</asp:ListItem>
            <asp:ListItem>Romance</asp:ListItem>
            <asp:ListItem>Comedy</asp:ListItem>
            <asp:ListItem>Adventure</asp:ListItem>
            <asp:ListItem>Thriller</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
&nbsp;</div>
    <br />
&nbsp;
    <asp:CheckBox ID="chkHasTeaser" runat="server" Text="Has Teaser" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnSave" runat="server" BackColor="#0033CC" ForeColor="White" Height="53px" Text="Save" Width="96px" OnClick="btnSave_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    

</asp:Content>

