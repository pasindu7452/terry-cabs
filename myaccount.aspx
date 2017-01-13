<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myaccount.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>My Account</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form id="form1" runat="server">
        <div class="row">
        <div class="col-md-3 text-right">
            <asp:Label ID="Label1" CssClass="UserInfotxt" runat="server"></asp:Label><br />
            <asp:Label ID="lblLoggedin" CssClass="UserInfo" runat="server"></asp:Label> <br />
            <br />
            <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-primary" OnClick="btnLogout_Click" Text="Sign Out" />
            <br /><br />
            <img alt="welcomeuser" src="images/useravatr.png"  width="100%" height="auto"/>
        </div>

        
            <div class="col-md-8 col-md-offset-1">
                <br />
                <h2 class="userinf">User Information</h2>
                <br />
                <br />
                <table class="table table-striped">
                    <tbody>
                        <tr>
                        <td>
                            <asp:Label ID="Fnamelbl" runat="server" Text="First Name"></asp:Label> 
                        </td>

                        <td>
                             <asp:Label ID="lblFname" runat="server" CssClass="userprofile"></asp:Label><br /><br />
                        </td>
                         
                    </tr>
                        
                    <tr>
                        <td>
                            <asp:Label ID="Lnamelbl" runat="server" Text="Last Name"></asp:Label> 
                        </td>

                        <td>
                            <asp:Label ID="lblLname" runat="server" CssClass="userprofile"></asp:Label><br /><br />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Contactlbl" runat="server" Text="Contact Number"></asp:Label> 
                        </td>

                        <td>
                            <asp:Label ID="lblContact" runat="server" CssClass="userprofile"></asp:Label><br /><br />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Addresslbl" runat="server" Text="Address"></asp:Label> 
                        </td>

                        <td>
                                <asp:Label ID="lblAddress" runat="server" CssClass="userprofile"></asp:Label><br /><br />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Emaillbl" runat="server" Text="Email"></asp:Label> 
                        </td>

                        <td>
                            <asp:Label ID="lblEmail" runat="server" CssClass="userprofile"></asp:Label><br /><br />
                        </td>
                    </tr>
                    </tbody>
                </table>
                
          
             
            </div>
        </div>
    </form>
</asp:Content>



