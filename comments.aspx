<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="comments.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>comments</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">

    <form id="form1" runat="server">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblLoggedin" runat="server"></asp:Label> <br />

            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
        
        <div class="row">
            <div class="col-md-6 col-md-offset-3">

                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

               <div class="form-group">
                            <asp:Label ID="lblComment" runat="server" Text="Please type your Comment:"></asp:Label>
                              <textarea class="form-control" rows="5" id="txtComment" runat="server"></textarea>
                               <br />
                            <asp:Button ID="btnComment" runat="server" Text="Submit" CssClass="btn btn-primary btn-lg" OnClick="btnComment_Click" />
               </div>
            </div>
        </div>
    </form>

</asp:Content>

