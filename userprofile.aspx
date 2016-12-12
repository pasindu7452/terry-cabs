<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>User profile</title>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form id="form1" runat="server">

    <div class="col-md-12 text-right">
        <asp:Label ID="lblLoggedin" runat="server" Text="You are logged in as:"></asp:Label>
    </div>

   
    
    <div class="row">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#Main" data-toggle="tab">Main</a></li>
            <li><a href="#Update" data-toggle="tab">Update</a></li> 
            <li><a href="#Add" data-toggle="tab">Add profile picture</a></li> 
        </ul>
        <div class="tab-content">
            <div class="tab-pane" id="#Main"> </div>
            <div class="tab-pane" id="#Update"> </div>
            <div class="tab-pane" id="#Add"> </div>
        </div>
    </div>

    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>

