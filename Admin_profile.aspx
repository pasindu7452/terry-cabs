<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_profile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Admin Profile</title>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form id="form1" runat="server">

    <div class="col-md-12 text-right">
        <asp:Label ID="Label1" runat="server" Text="you are loggedin as:"></asp:Label>
        <asp:Label ID="lblLoggedin" runat="server"></asp:Label>   <br /> 
      
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
      
        <br />  
    </div>
         <br />        <br />                   
  

    <div class="row">
       <div class="col-md-8 col-md-offset-2">
           <div><a href="Admin_addvehicle.aspx"><div class="col-md-3 box"> Add Vehicle<br /><span class="glyphicon glyphicon-plus"></span></div></a></div>
           <div><a href=""><div class="col-md-3 box"> View Users<br /><span class="glyphicon glyphicon-user"></span></div></a></div>
           <div><a href=""><div class="col-md-3 box">View comments<br /><span class="glyphicon glyphicon-comment"></span></div></a></div>
            <a href=""><div class="col-md-3 box">Rent out Proposal<br /><span class=" glyphicon glyphicon-briefcase"></span></div>  
       </div>

        <br />
        <br />

         <div class="col-md-8 col-md-offset-2">
            <div><a href=""><div class="col-md-3 box">Contact Form<br /><span class="glyphicon glyphicon-envelope"></span></div></a></div>
            <div><a href=""><div class="col-md-3 box">Reservations<br /><span class="glyphicon glyphicon-lock"></span></div></a></div>
           <%-- <div><div class="col-md-3 box">Rent out your vehicle<br /><span class="glyphicon glyphicon-road"></span></div></div>
            <div><a href=""><div class="col-md-3 box">Comments<br /><span class="glyphicon glyphicon-comment"></span></div></a></div>--%>
       </div>
    </div>

            
     
    

    </form>
</asp:Content>

