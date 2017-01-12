<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updatepassword.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Update password</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">

    <form id="form1" runat="server">
           <div class="col-md-12 text-right">
               <asp:Label ID="lblLoggedin" runat="server"></asp:Label>
               <br />
               <asp:Button ID="btnLogout" runat="server" Text="Log out" OnClick="btnLogout_Click" />
           </div>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-primary">
                    <div class="panel panel-heading">Update password</div>
                    <div class="panel panel-body">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        
                        <div class="form-group">
                            <asp:Label ID="lblOldpass" runat="server" Text="Enter old password:"></asp:Label>
                            <asp:TextBox ID="txtOldpass" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblNewpass" runat="server" Text="Enter new password:"></asp:Label>
                            <asp:TextBox ID="txtNewpass" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblConfirmpass" runat="server" Text="Confirm new passoword:"></asp:Label>
                            <asp:TextBox ID="txtConpass" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnUpdatepass" runat="server" Text="Update password" CssClass="btn btn-primary" OnClick="btnUpdatepass_Click" />
                    </div>
                    
                </div>
            </div>
        </div>
     </form>

</asp:Content>

