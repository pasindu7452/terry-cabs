
<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="user_signin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>User Sign</title>
    <link href="custom_css/signin_css.css?=v3" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody1" Runat="Server">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 signinbox">
            <!--Sign In Form-->
            <form runat="server">  
                <div class=" panel panel-primary">
                    <div class="panel-heading title">
                        <h1>User Signin</h1>
                    </div>

                    <div class="panel-body form_label">
                        <div id="loginform">
      
          <div class="block1">
              <div class="form1">
                  <!--top hedding-->
                  <h2>Hello,Sign In to Your Account</h2>
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
                     <asp:Button ID="Button1" runat="server" Text="Sign In"  CssClass="mybtn" OnClick="btnSignin_Click"/>
                     </div>
                  <div class="pwfor">
                      <asp:HyperLink ID="HyperLink1" CssClass="HyperLink1" runat="server">Forgot Your Email Or Password?</asp:HyperLink>
    </div>
                       
                   </div>
                  </div>
            

                 </div>
                </div>
                    </div>
                
            </form>
            

         
        <br /><br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        
        </div>
    </div>
</asp:Content>

