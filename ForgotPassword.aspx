<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Forgot password</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form id="form1" runat="server">
    <div class="col-md-6 col-md-offset-3 title_two">
      <div class="row">
        <div class="col-md-6 col-md-offset-3 title_two">
          <div class="panel panel-primary">
              <div class="panel-heading">Forgot Password</div>
              <div class="panel-body">
                  <asp:Label ID="lblEmail" runat="server" Text="Enter Your Email"></asp:Label>
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>              
              <asp:Button ID="Button1" runat="server" Text="Confirm" />
              </div>
          </div>
        </div>
   </div>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

