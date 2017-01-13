<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="delete_account.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Delete account</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
     <form id="form1" runat="server">

          <div class="col-md-12 text-right">
              
            <asp:Label ID="lblLoggedin" runat="server"></asp:Label>
              <br />

              <asp:Button ID="btnLogout" runat="server" Text="Logout" />
          </div>

         <div class="row">
              <div class="col-md-6 col-md-offset-3">
                  <h1>
                      Are you sure you want to delete your account?
                  </h1>
                  <p>
                      After you performing this action,you will be no longer interact with the system and your records will be deleted form database.
                      Thank you you for staying with us.Good luck and hope to see you again!
                  </p>
              </div>
         </div>
     </form>
</asp:Content>

