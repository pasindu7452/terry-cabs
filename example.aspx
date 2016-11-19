<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="example.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br /><br /><br /><br />
<div class="col-md-6 col-md-offset-3"><br />
    <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="search" />
    <br /><br /><br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    CellSpacing="2" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        Width="341px">
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br /><br /><br /><br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br /><br /><br /><br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
    <br /><br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br /><br /><br /><br /><br /><br /><br />
</div>
</asp:Content>

