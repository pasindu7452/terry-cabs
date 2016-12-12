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
        <div class="col-md-8 col-md-offset-2">
             <ul class="nav nav-tabs"  runat="server">
            <li class="active"><a href="#Main" data-toggle="tab"  runat="server">Main</a></li>
            <li><a href="#Update" data-toggle="tab">Update</a></li> 
            <li><a href="#Add" data-toggle="tab">Add profile picture</a></li> 
        </ul>
        <div class="tab-content">
            <div class="tab-pane" id="Main" >

                <br />

                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            



            <div class="tab-pane" id="Update"></div>
            <div class="tab-pane" id="Add"> </div>
        </div>
    </div>
        </div>
    

    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>

