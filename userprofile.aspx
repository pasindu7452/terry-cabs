<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>User profile</title>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form id="form1" runat="server">

    <div class="col-md-12 text-right">
        <asp:Label ID="lblLoggedin" runat="server"></asp:Label>   <br /> 
      
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
      
        <br />  
    </div>
         <br />        <br />                   
    
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

            
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="678px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            </div>

           
     </div>     
        
        <br />
        <br />

    <div class="row">
       <div class="col-md-8 col-md-offset-2">
           <div><a href="myaccount.aspx"><div class="col-md-3 box"> My Account<br /><span class="glyphicon glyphicon-user"></span></div></a></div>
           <div><a href="updateemail.aspx"><div class="col-md-3 box">Update Email<br /><span class="glyphicon glyphicon-envelope"></span></div></a></div>
           <div class="col-md-3 box">Update Password<br /><span class="glyphicon glyphicon-pencil"></span></div>
            <div class="col-md-3 box">Order Details<br /><span class=" glyphicon glyphicon-menu-hamburger"></span></div>  
       </div>

        <br />
        <br />

         <div class="col-md-8 col-md-offset-2">
            <div><a href="#"><div class="col-md-3 box">Delete Account<br /><span class="glyphicon glyphicon-remove"></span></div></a></div>
            <div><div class="col-md-3 box">Rent out your vehicle<br /><span class="glyphicon glyphicon-road"></span></div></div>
            <div><div class="col-md-3 box">Rent out your vehicle<br /><span class="glyphicon glyphicon-road"></span></div></div>
            <div><div class="col-md-3 box">Comments<br /><span class="glyphicon glyphicon-comment"></span></div></div>
       </div>
    </div>

            
     
    

    </form>
</asp:Content>


