<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vehicles.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>vehicles</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CarouselPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
     <form id="form1" runat="server">
         <div class="row">

             <div class="col-md-6 col-md-offset-3">
                 <asp:Label ID="lblChoose" runat="server" Text="Choose vehicle by type:"></asp:Label>
                 <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control"></asp:TextBox>  <br /> 
                  <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
             <br /><br />

                 <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false" Width="656px" >
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
                                <Columns>
                                    <asp:TemplateField HeaderText="id">
                                         <ItemTemplate>
                                             <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>

                                    <asp:TemplateField HeaderText="type">
                                         <ItemTemplate>
                                             <asp:Label ID="lblType" runat="server" Text='<%#Eval("type") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>

                                    <asp:TemplateField HeaderText="brand">
                                         <ItemTemplate>
                                             <asp:Label ID="lblBrand" runat="server" Text='<%#Eval("brand") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>

                                    <asp:TemplateField HeaderText="model">
                                         <ItemTemplate>
                                             <asp:Label ID="lblModel" runat="server" Text='<%#Eval("model") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>

                                    <asp:TemplateField HeaderText="details">
                                         <ItemTemplate>
                                             <asp:Label ID="lblDetails" runat="server" Text='<%#Eval("details") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>


                                     <asp:TemplateField HeaderText="image">
                                         <ItemTemplate>
                                             <asp:Image ID="image" runat="server" ImageUrl='<%#Eval("img") %>' Height="150px" Width="200px" />
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                 <asp:GridView ID="GridView2" runat="server" CellPadding="4" GridLines="None" AutoGenerateColumns="False" ForeColor="#333333" Width="735px">
                     <AlternatingRowStyle BackColor="White" />
                     <EditRowStyle BackColor="#2461BF" />
                     <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#EFF3FB" />
                     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#F5F7FB" />
                     <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                     <SortedDescendingCellStyle BackColor="#E9EBEF" />
                     <SortedDescendingHeaderStyle BackColor="#4870BE" />

                       <Columns>
                                    <asp:TemplateField HeaderText="id">
                                         <ItemTemplate>
                                             <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>

                                    <asp:TemplateField HeaderText="type">
                                         <ItemTemplate>
                                             <asp:Label ID="lblType" runat="server" Text='<%#Eval("type") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>

                                    <asp:TemplateField HeaderText="brand">
                                         <ItemTemplate>
                                             <asp:Label ID="lblBrand" runat="server" Text='<%#Eval("brand") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>

                                    <asp:TemplateField HeaderText="model">
                                         <ItemTemplate>
                                             <asp:Label ID="lblModel" runat="server" Text='<%#Eval("model") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>

                                    <asp:TemplateField HeaderText="details">
                                         <ItemTemplate>
                                             <asp:Label ID="lblDetails" runat="server" Text='<%#Eval("details") %>'></asp:Label>
                                         </ItemTemplate>
                                     </asp:TemplateField>


                                     <asp:TemplateField HeaderText="image">
                                         <ItemTemplate>
                                             <asp:Image ID="image" runat="server" ImageUrl='<%#Eval("img") %>' Height="150px" Width="200px" />
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                </Columns>
                 </asp:GridView>
             </div>

         </div>
     </form>
</asp:Content>

