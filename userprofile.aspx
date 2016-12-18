<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>User profile</title>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form id="form1" runat="server">

    <div class="col-md-12 text-right">
        <asp:Label ID="lblLoggedin" runat="server"></asp:Label>   <br />  <br />  
        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-primary" />
    </div>

         <br />        <br />                   
    
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

            

             <ul class="nav nav-tabs"  >
                  <li class="active"><a href="#Main" data-toggle="tab">User Info</a></li> 
            <li><a href="#Update" data-toggle="tab">Update password</a></li> 
            <li><a href="#Add" data-toggle="tab">Order History</a></li> 
        </ul>
        <div class="tab-content">
            <br /><br />
            <div class="tab-pane active" id="Main"> 
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

            <div class="tab-pane " id="Update">
                <div class="col-md-6">
                    <br />
                    <div class="panel panel-primary">
                        <div class="panel-heading">Update password</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <asp:Label ID="lblOldpw" runat="server" Text="Enter old password:"></asp:Label>
                                <asp:TextBox ID="txtOldpw" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblNewpw" runat="server" Text="Enter new password:"></asp:Label>
                                <asp:TextBox ID="txtNewpw" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <asp:Button ID="btnUpdatepw" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdatepw_Click" />
                            <asp:Label ID="lblResult" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>


            <div class="tab-pane" id="Add"> </div>
        </div>
    </div>
        </div>
    

    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>

