<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rentout_request.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Rentout your vehicle</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
     <form id="form1" runat="server">
          <div class="col-md-12 text-right">
              <asp:Label ID="lblLoggedin" runat="server"></asp:Label><br />

              <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
          </div>

          <div class="row">
            <div class="col-md-6 col-md-offset-3">

                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                <asp:Label ID="lblMessage2" runat="server" ForeColor="#009900"></asp:Label>

                <br />

                <div class="form-group">
                    <asp:Label ID="lblType" runat="server" Text="Select vehicle type:"></asp:Label>
                <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control">
                    <asp:ListItem Value="-1">Select vehicle type</asp:ListItem>
                    <asp:ListItem>Car</asp:ListItem>
                    <asp:ListItem>Van</asp:ListItem>
                    <asp:ListItem>Bus</asp:ListItem>
                </asp:DropDownList>
                </div>
                

                <div class="form-group">
                    <asp:Label ID="lblBrand" runat="server" Text="Select brand"></asp:Label>
                    <asp:DropDownList ID="ddlBrand" runat="server" CssClass="form-control">
                        <asp:ListItem Value="-1">Select Brand</asp:ListItem>
                        <asp:ListItem>Toyota</asp:ListItem>
                        <asp:ListItem>Nissan</asp:ListItem>
                        <asp:ListItem>Mazda</asp:ListItem>
                        <asp:ListItem>Honda</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>


                <div class="form-group">
                    <asp:Label ID="lblModel" runat="server" Text="Enter model:"></asp:Label>
                    <asp:TextBox ID="txtModel" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblOther" runat="server" Text="Other details"></asp:Label>
                    <textarea class="form-control" rows="5" id="txtDetails" runat="server"></textarea>
                </div>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"  CssClass="btn btn-primary btn-lg" OnClick="btnSubmit_Click"/>
            </div>
         </div>
     </form>
</asp:Content>

