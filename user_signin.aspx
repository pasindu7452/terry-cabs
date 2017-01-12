
<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="user_signin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>User Signin</title>
    <link href="custom_css/signin_css.css" rel="stylesheet" />
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
                        <div class="form-group ">

                            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>

                            <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="email required" 
                            ForeColor="Red" SetFocusOnError="True">email required</asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="EmaiRegularExpressionValidator1" 
                            runat="server" ControlToValidate="txtEmail" Display="Dynamic" 
                            ErrorMessage="Invalid email format" ForeColor="Red" SetFocusOnError="True" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">invalid email format</asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">

                            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>

                            <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtPassword" Display="Dynamic" 
                            ErrorMessage="password required" ForeColor="Red" SetFocusOnError="True">password required</asp:RequiredFieldValidator>

                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" 
                            TextMode="Password"></asp:TextBox>
                        </div>
                    <center>
                    <asp:Button ID="btnSignin" runat="server" Text="Sign In" 
                    CssClass="btn btn-primary signinbutton" onclick="btnSignin_Click" /></center>
                    </div>
                </div>
            </form>

         
        <br /><br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br /><br /><br /><br />
        </div>
    </div>
</asp:Content>

