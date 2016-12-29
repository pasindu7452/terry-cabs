<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>My Account</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form id="form1" runat="server">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblLoggedin" runat="server" Text="Label"></asp:Label>
            <br />

            <asp:Button ID="btnLogout" runat="server" Text="Log Out" OnClick="btnLogout_Click" />

        </div>

        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                
            <asp:Label ID="Fnamelbl" runat="server" Text="First Name:"></asp:Label>  <asp:Label ID="lblFname" runat="server"></asp:Label><br />
            <asp:Label ID="Lnamelbl" runat="server" Text="Last Name:"></asp:Label>   <asp:Label ID="lblLname" runat="server"></asp:Label> <br />
            <asp:Label ID="Contactlbl" runat="server" Text="Contact Number:"></asp:Label> <asp:Label ID="lblContact" runat="server"></asp:Label> <br />
            <asp:Label ID="Addresslbl" runat="server" Text="Address:"></asp:Label>  <asp:Label ID="lblAddress" runat="server"></asp:Label><br />
            <asp:Label ID="Emaillbl" runat="server" Text="Email:"></asp:Label>  <asp:Label ID="lblEmail" runat="server"></asp:Label><br />
            </div>
        </div>
    </form>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

