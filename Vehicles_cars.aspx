<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Vehicles_cars.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <div class="container">
    <form id="form1" runat="server">
        <center><asp:Label ID="Label1" runat="server"  Font-Overline="True" Font-Underline="True" style="font-family: Impact; font-size: xx-large " Text="Cars" ></asp:Label></center>
        
               
          
                <div class="row">
                    <div class="col-lg-3">                     
                                <asp:Label ID="Label4" runat="server" Text="Car Name"></asp:Label><br />
                                <asp:Image ID="Image1" runat="server" Height="225px" Width="241px" /><br />
                                <asp:Label ID="Label2" runat="server" Text="car desc"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList1" runat="server" name="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Pacakages</asp:ListItem>
                                    <asp:ListItem>with driver</asp:ListItem>
                                    <asp:ListItem>without driver</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button2" runat="server" Text="Submit" />
                     </div>

                         <div class="col-lg-3">                     
                                <asp:Label ID="Label3" runat="server" Text="Car Name"></asp:Label><br />
                                <asp:Image ID="Image2" runat="server" Height="225px" Width="241px" /><br />
                                <asp:Label ID="Label5" runat="server" Text="car desc"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList2" runat="server" name="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Pacakages</asp:ListItem>
                                    <asp:ListItem>with driver</asp:ListItem>
                                    <asp:ListItem>without driver</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" Text="Submit" />
                     </div>
                         <div class="col-lg-3">                     
                                <asp:Label ID="Label6" runat="server" Text="Car Name"></asp:Label><br />
                                <asp:Image ID="Image3" runat="server" Height="225px" Width="241px" /><br />
                                <asp:Label ID="Label7" runat="server" Text="car desc"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList3" runat="server" name="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Pacakages</asp:ListItem>
                                    <asp:ListItem>with driver</asp:ListItem>
                                    <asp:ListItem>without driver</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button3" runat="server" Text="Submit" />
                     </div>
                    <div class="col-lg-3">                     
                                <asp:Label ID="Label8" runat="server" Text="Car Name"></asp:Label><br />
                                <asp:Image ID="Image4" runat="server" Height="225px" Width="241px" /><br />
                                <asp:Label ID="Label9" runat="server" Text="car desc"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList4" runat="server" name="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Pacakages</asp:ListItem>
                                    <asp:ListItem>with driver</asp:ListItem>
                                    <asp:ListItem>without driver</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button4" runat="server" Text="Submit" />
                     </div>
                       
                </div>
        <div class="row">
            <div class="col-lg-3">                     
                                <asp:Label ID="Label10" runat="server" Text="Car Name"></asp:Label><br />
                                <asp:Image ID="Image5" runat="server" Height="225px" Width="241px" /><br />
                                <asp:Label ID="Label11" runat="server" Text="car desc"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList5" runat="server" name="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Pacakages</asp:ListItem>
                                    <asp:ListItem>with driver</asp:ListItem>
                                    <asp:ListItem>without driver</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button5" runat="server" Text="Submit" />
                     </div>
            <div class="col-lg-3">                     
                                <asp:Label ID="Label12" runat="server" Text="Car Name"></asp:Label><br />
                                <asp:Image ID="Image6" runat="server" Height="225px" Width="241px" /><br />
                                <asp:Label ID="Label13" runat="server" Text="car desc"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList6" runat="server" name="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Pacakages</asp:ListItem>
                                    <asp:ListItem>with driver</asp:ListItem>
                                    <asp:ListItem>without driver</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button6" runat="server" Text="Submit" />
                     </div>
            <div class="col-lg-3">                     
                                <asp:Label ID="Label14" runat="server" Text="Car Name"></asp:Label><br />
                                <asp:Image ID="Image7" runat="server" Height="225px" Width="241px" /><br />
                                <asp:Label ID="Label15" runat="server" Text="car desc"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList7" runat="server" name="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Pacakages</asp:ListItem>
                                    <asp:ListItem>with driver</asp:ListItem>
                                    <asp:ListItem>without driver</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button7" runat="server" Text="Submit" />
                     </div>
            <div class="col-lg-3">                     
                                <asp:Label ID="Label16" runat="server" Text="Car Name"></asp:Label><br />
                                <asp:Image ID="Image8" runat="server" Height="225px" Width="241px" /><br />
                                <asp:Label ID="Label17" runat="server" Text="car desc"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList8" runat="server" name="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Pacakages</asp:ListItem>
                                    <asp:ListItem>with driver</asp:ListItem>
                                    <asp:ListItem>without driver</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="Button8" runat="server" Text="Submit" />
                     </div>
        </div>
                    
            
               
    </form>
        </div>
</asp:Content>

