<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="user_signup.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>User Signup</title>
    <script type="text/javascript">
        function Conlength(source, args)
         {
             if (are.length == 10)
             {
                args.IsValid = true;
              }
            else
             {
                args.IsValid = false;
             }
        } 
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody1" Runat="Server">

    <div class="container">
        <form runat="server">
           <center><h1>User Signup</h1></center>
       
            <div class="form-group">
                <asp:Label ID="lblFname" runat="server" Text=" First Name:"></asp:Label>
                <asp:RequiredFieldValidator ID="FnameRequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" Display="Dynamic" 
                    ErrorMessage="first name required" ForeColor="Red" SetFocusOnError="True">first name required</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblLname" runat="server" Text="Last Name:"></asp:Label>
                <asp:RequiredFieldValidator ID="LnameRequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtLname" Display="Dynamic" 
                    ErrorMessage="last name required" ForeColor="Red" SetFocusOnError="True">last name required</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtLname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblContact" runat="server" Text="Contact Number:"></asp:Label>
                <asp:CustomValidator ID="contactCustomValidator1" runat="server" 
                    ClientValidationFunction="Conlength" ControlToValidate="txtContact" 
                    Display="Dynamic" ErrorMessage="contact number must contain 10 charactors" ForeColor="Red" 
                    onservervalidate="contactCustomValidator1_ServerValidate" 
                    SetFocusOnError="True" ValidateEmptyText="True">contact number must contain 10 charactors</asp:CustomValidator>
                <asp:RequiredFieldValidator ID="ContactRequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtContact" Display="Dynamic" 
                    ErrorMessage="contact number required" ForeColor="Red" SetFocusOnError="True">contact number required</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="ContactCompareValidator1" runat="server" 
                    ControlToValidate="txtContact" Display="Dynamic" 
                    ErrorMessage="contact number must contains only integers" ForeColor="Red" 
                    Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer">contact number must contains only integers</asp:CompareValidator>
                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                <asp:RequiredFieldValidator ID="AddressRequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtAddress" Display="Dynamic" 
                    ErrorMessage="address required" ForeColor="Red" SetFocusOnError="True">address required</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="email required" 
                    ForeColor="Red" SetFocusOnError="True">email required</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator1" 
                    runat="server" ControlToValidate="txtEmail" Display="Dynamic" 
                    ErrorMessage="invalid email address" ForeColor="Red" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">invalid email address</asp:RegularExpressionValidator>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblReEmail" runat="server" Text="Re-enter Email:"></asp:Label>
                <asp:RequiredFieldValidator ID="ReemailRequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtReEmail" Display="Dynamic" ErrorMessage="re-enter email" 
                    ForeColor="Red" SetFocusOnError="True">re-enter email</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="EmailCompareValidator1" runat="server" 
                    ControlToCompare="txtEmail" ControlToValidate="txtReEmail" Display="Dynamic" 
                    ErrorMessage="email does not match" ForeColor="Red" SetFocusOnError="True">email does not match</asp:CompareValidator>
                <asp:TextBox ID="txtReEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblPass" runat="server" Text="Password:"></asp:Label>
                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtPassword" Display="Dynamic" 
                    ErrorMessage="password required" ForeColor="Red" SetFocusOnError="True">password required</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" 
                    TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblRePass" runat="server" Text="Re-enter Password:"></asp:Label>
                <asp:RequiredFieldValidator ID="RepassRequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtRePass" Display="Dynamic" 
                    ErrorMessage="re-enter password" ForeColor="Red" SetFocusOnError="True">re-enter password</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="PasswordCompareValidator1" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtRePass" Display="Dynamic" 
                    ErrorMessage="password does not match" ForeColor="Red" SetFocusOnError="True">password does not match</asp:CompareValidator>
                <asp:TextBox ID="txtRePass" runat="server" CssClass="form-control" 
                    TextMode="Password"></asp:TextBox>
            </div>

           <asp:Label ID="messagelbl" runat="server"></asp:Label>
           <br />
     

            <asp:Button ID="Signup" runat="server" Text="Sign Up" 
               CssClass=" btn btn-primary" onclick="Signup_Click" /> 

       
        </form>
        <br /><br />
    </div>
   

</asp:Content>

