<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>User profile</title>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form id="form1" runat="server">

    <div class="col-md-12 text-right">
        <asp:Label ID="lblLoggedin" runat="server"></asp:Label>
                  
    </div>

   
    
    <div class="row">
        <ul class="nav nav-tabs"  runat="server">
            <li class="active"><a href="#Main" data-toggle="tab"  runat="server">Main</a></li>
            <li><a href="#Update" data-toggle="tab">Update</a></li> 
            <li><a href="#Add" data-toggle="tab">Add profile picture</a></li> 
        </ul>
        <div class="tab-content"  runat="server">
            <div class="tab-pane" id="Main" >

                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
      
            </div>
            



            <div class="tab-pane" id="Update"></div>
            <div class="tab-pane" id="Add"> </div>
        </div>
    </div>

    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>

