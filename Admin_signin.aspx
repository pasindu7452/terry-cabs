<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_signin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Admin SignIn</title>
     <link href="custom_css/Admin_signin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">
     
  <div class="row">
   <div class="col-md-5 col-md-offset-3">
     <form runat="server">
        <div class="panel panel-primary">
            <div class="panel-heading title">
                <br />
                        <p>A<small>DMIN SIGNIN</small></p>
            </div>
            <div class="panel-body">
            <div class="block1">
                <div class="form1">
                    <!--top hedding-->
                        <h2>Hello Admin,Sign In to Your Account</h2>
                            <!--signin form-->
                            <div class="form-group"> 
                            <!--email-->
                            <asp:Label CssClass="mylb1" ID="Label1" runat="server" Text="Email :"></asp:Label>

                               <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="email required" 
                                ForeColor="Red" SetFocusOnError="True">email required</asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="EmaiRegularExpressionValidator1" 
                                runat="server" ControlToValidate="txtEmail" Display="Dynamic" 
                                ErrorMessage="invalid email format" ForeColor="Red" SetFocusOnError="True" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">invalid email format</asp:RegularExpressionValidator>

                                <asp:TextBox ID="txtEmail" runat="server" CssClass="mysty"></asp:TextBox>

                                 </div>
                                 <div class="form-group"> 
                                  <!--password-->
                                  <asp:Label CssClass="mylb1"  ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                  
                                  <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="password required" ForeColor="Red" SetFocusOnError="True">password required</asp:RequiredFieldValidator>
                   
                                 <asp:TextBox ID="txtPassword" runat="server" CssClass="mysty" TextMode="Password"></asp:TextBox>
                                 <asp:Button ID="Button1" runat="server" Text="Sign In"  CssClass="mybtn" OnClick="Button1_Click"/>
                                 </div>
                                 <div class="pwfor">
                                </div>
                       
                                </div>

                               </div>
                               </div>
                               </div>
                    </form>

                 </div>
               </div>


</asp:Content>


      
      