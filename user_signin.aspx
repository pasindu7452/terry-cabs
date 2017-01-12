
<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="user_signin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>User Sign</title>
    <link href="custom_css/signin_css.css?=v3" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody1" Runat="Server">
    <div class="row">
    <br /><br />
        <div class="col-md-5 col-md-offset-1 signinbox">
            <!--Sign In Form-->
            <form runat="server">  
                <div class=" panel panel-primary">
                    <div class="panel-heading title">
                        <br />
                        <p>U<small>SER SIGNIN</small></p>
                    </div>
                    <div class="panel-body form_label">
                        <!--top hedding-->
                        <h3>Hello,Sign In to Your Account</h3>
                        <br />
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
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Sign In"  CssClass="mybtn" OnClick="btnSignin_Click"/>
                        </div>
                        <div class="pwfor">
                            <asp:HyperLink ID="HyperLink1" CssClass="HyperLink1" runat="server">Forgot Your Email Or Password?</asp:HyperLink>
                        </div>
                    </div>
                </div>    
            </form>
            <br /><br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    <div class="col-md-4 col-md-offset-1 signinbox">
    <img alt="signinimage" src="images/signiinimage.png" width="100%" height="80%"/>
    </div>
    </div>
</asp:Content>

