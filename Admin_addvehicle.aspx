<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_addvehicle.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Add Vehicle</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
    <form runat="server">
        <div class="row">
        <div class=" col-md-6 col-md-offset-1">
           
                
                <div class="panel panel-primary">
                    <div class="panel panel-heading">Add Vehicles</div> 

                    <div class="panel panel-body">

                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Label ID="lblMessage2" runat="server" ForeColor="#009900"></asp:Label>

                        <div class="form-group">
                            <asp:Label ID="lblType" runat="server" Text="Enter Type:"></asp:Label>
                            <asp:TextBox ID="txtType" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblBrand" runat="server" Text="Enter Brand:"></asp:Label>
                            <asp:TextBox ID="txtBrand" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblModel" runat="server" Text="Enter Model:"></asp:Label>
                            <asp:TextBox ID="txtModel" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblDetails" runat="server" Text="Enter Details:"></asp:Label>
                             <textarea class="form-control" rows="5" id="txtDetails" runat="server"></textarea>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblImage" runat="server" Text="Insert Image:"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server"  />
                        </div>

                        <asp:Button ID="btnAdd" runat="server" Text="Add"  CssClass="btn btn-primary" OnClick="btnAdd_Click"/>

                    </div>
                </div>

            </div>


            <div class="col-md-4">
                <div class="panel panel-primary">
                    <div class="panel-title">
                        <h3>Delete Vehicle</h3>
                    </div>
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
           
            
        <br /><br /> <br /><br />
         <br /><br /> <br /><br /> <br /><br /> <br /><br />
         <br /><br /> <br /><br /> <br /><br /> <br /><br />
         <br /><br /> <br /><br />
 </form>           

        
    
            
</asp:Content>

