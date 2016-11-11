<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user_signup.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>User Signup</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-6 col-md-offset-3">
    <br />
        
        <h1><center>User Signup</center></h1>
        <div class="form-group">
            <asp:Label ID="lblFname" runat="server" Text=" First Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblLname" runat="server" Text="Last Name:"></asp:Label>
            <asp:TextBox ID="txtLname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblContact" runat="server" Text="Contact Number:"></asp:Label>
            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblReEmail" runat="server" Text="Re-enter Email:"></asp:Label>
            <asp:TextBox ID="txtReEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblPass" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group>
            <asp:Label ID="lblRePass" runat="server" Text="Re-enter Password:"></asp:Label>
            <asp:TextBox ID="txtRePass" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <br />

        <asp:Button ID="Signup" runat="server" Text="Sign Up" CssClass=" btn btn-primary" /> 

        <br /> <br />
    </div>

</asp:Content>

