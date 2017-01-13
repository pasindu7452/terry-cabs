<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updateemail.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Update email</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">

    <form class="upemfrom" id="form1" runat="server">

         <div class="col-md-12 text-right">
             <asp:Label ID="lblLoggedin" runat="server"></asp:Label>
             <br />
             <asp:Button ID="btnLogout" runat="server" Text="Log out" OnClick="btnLogout_Click" />
         </div>

        <br />

        <div class="row">
            <br /><br /><br /><br />
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-primary">
                    <div class=" panel-heading">Update Email</div>
                    <div class="panel-body">

                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                        <br />

                        <asp:Label ID="lblNwemail" runat="server" Text="Enter new email :"></asp:Label>
                        <div class="form-group">
                            <asp:TextBox ID="txtNwemail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnUpdateemail" runat="server" Text="Update email" CssClass="btn btn-primary" OnClick="btnUpdateemail_Click" />
                    </div>
                    
                </div>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            </div>
            <br /><br /><br />
        </div>
     </form>

</asp:Content>



