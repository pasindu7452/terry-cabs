<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_addvehicle.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Add Vehicle</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form runat="server">
        <div class="row">
        <div class=" col-md-6 col-md-offset-1">
            <div class="panel panel-primary col-md-7">
                <div class="panel-title">
                    <h3>Add Vehicle</h3>
                </div>
                <div class="panel-body">
             
              <div class="form-group">
                  
<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="Vehicle Name :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                
                </div>
              
                  <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Vehicle type :"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
              
                   </div> 
                 <div class="form-group">  
                <asp:Label ID="Label3" runat="server" Text="Vehicle Brand :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                  
                 </div>
                 <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Vehicle Model :"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                  
                     </div>
                 <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Vehicle Description :"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                     </div>

                     <div class="form-group">
                <asp:Label ID="Label9" runat="server" Text="Image:"></asp:Label>
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                    

                 <div >
                     <asp:Button ID="btnAdd" runat="server" Text="ADD" CssClass="btn-primary" OnClick="Button1_Click1" />
                 </div>

                
                   </div> 
                </div>>               

            </div>

            <div class="col-md-4">
                <div class="panel panel-primary">
                    <div class="panel-body">
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Vehicle ID :"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
                    

            <asp:Button ID="Button2" runat="server" Text="DELETE" CssClass="btn-primary" />
            
         </div> 
                    </div>
                </div>
            </div> 
           
            
        
        
 </form>           

        
    
            
</asp:Content>

