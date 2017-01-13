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

              <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
          </div>

         <div class="row">
              <div class="col-md-6 col-md-offset-3">
                  <h1>
                      Are you sure you want to delete your account?
                  </h1>
                  <p>
                      After you performing this action,you will be no longer interact with the system and your records will be deleted form database.
                      Thank you you for staying with us.Good luck and hope to see you again!<br /><br />
                      After you perform this action system will send you an email to confirm that you have successfully deleted your account.So please check your email.
                  </p>
              </div>
         </div>

          <div class="row">
              <div class="col-md-6 col-md-offset-3">
                 <div class="panel panel-primary">
                     <div class="panel-heading">Delete account</div>
                    <div class="panel-body">

                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Label ID="lblMessage2" runat="server" ForeColor="#009900"></asp:Label>

                        <div class="form-group">
                            <asp:Label ID="lblPass" runat="server" Text="Enter your password:"></asp:Label>
                            <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div><br />
                        <asp:Button ID="btnSub" runat="server" Text="Submit"  CssClass="btn btn-primary" OnClick="btnSub_Click"/>
                    </div>
                 </div>
                </div>
              
          </div>
         <br /><br /><br /><br /><br />
     </form>
</asp:Content>

