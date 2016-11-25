<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Contact Us</title>
    <link href="custom_css/Contactus.css?=v1" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">


     <!-- Contact us -->
    <div id="contact">
    	<div class="container-fluid">
    		<h2>Contact Us</h2>  
    		
            <p>We are looking fowerd to hear from you.</p>
    		<!--Contct us feed back form-->
            <div class="col-md-5">
                <form runat="server">

               
                <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
                <asp:RequiredFieldValidator ID="nameFieldValidator1" runat="server" ErrorMessage="*Name Field Cannot be EMPTY" ControlToValidate="Name" ValidationGroup="save" Display="Dynamic" ForeColor="Red">Name field cannot be empty</asp:RequiredFieldValidator>    
                 <asp:TextBox ID="Name" runat="server"  CssClass="form-control txtset"></asp:TextBox>   
                </div>

                    
                <div class="form-group">
            <asp:Label ID="lblEmail" runat="server" Text="Email :"></asp:Label>
            <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator1" runat="server" 
                ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*email required" 
                ForeColor="Red" SetFocusOnError="True">email required</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator1" 
                runat="server" ControlToValidate="txtEmail" Display="Dynamic" 
                ErrorMessage="invalid email address" ForeColor="Red" SetFocusOnError="True" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">invalid email address</asp:RegularExpressionValidator>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control txtset"></asp:TextBox>
           </div>

             <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Subject :"></asp:Label>
                        <asp:RequiredFieldValidator ID="subjectFieldValidator1" runat="server" ErrorMessage="*Subject field cannot be empty" ControlToValidate="subject" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="subject" runat="server" CssClass="form-control txtset "></asp:TextBox>
                    </div>  
                    
                    <div class="form-group">

                        <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label>
                        <asp:RequiredFieldValidator ID="descriptionFieldValidator1" runat="server" ErrorMessage="*Description field cannot be empty" ForeColor="red" ControlToValidate="description" ValidationGroup="save"></asp:RequiredFieldValidator>

                        <asp:TextBox ID="description" runat="server" CssClass="form-control txtset des1" TextMode="MultiLine" Rows="12"></asp:TextBox>
                    </div>  
                    
                    <div class="form-group">

                        <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn btn-primary" OnClick="Button1_Click"/>

                    </div>   

    			</form>
			  </div>
           	
            
            <!--contact us image-->
			<div class="col-md-6">
				
                <div class="image">
					
                    <img src="images/8.jpg" class="img-responsive">
				
                </div>
			<br />
            </div>
    	  
       
        <!--google map location of terry cabs-->
               
<!DOCTYPE html>
<html>
  <head>
    
     <link href="custom_css/Contactus.css?v=2" rel="stylesheet" type="text/css" />
  </head>
   
  <body>

      <div class="container-fluid">
      <div id="map"></div>
    
    <script type="text/javascript">
       

      function initMap() {
          var polgas = { lat: 6.7899358, lng: 79.9808143 };

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: polgas
        });

        var marker = new google.maps.Marker({
            position: polgas,
            map: map,
          title: 'Terry cabs'
          
        });
      }
        
    </script>
  <script type="text/javascript" async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAiyd5S9Ajg9soxwYECRUeTI-RryliYRP8&callback=initMap">
    </script>


      </div>
  </body>
</html>
 </div>    
</div>     

    
 
       <div id="r1">
        
            <div class="row">
           
            <div class="col-md-2">
                <p id="p1">adress branch no1</p>
                <p id="p1">adress line1</p>
                <p id="p1">adress line2</p>
                <p id="p1">adress  line3</p>
            </div>
             <div class="col-md-2">
                 <p id="p1">adress branch no2</p>
                 <p id="p1">adress line1</p>
                 <p id="p1">adress line2</p>
                 <p id="p1">adress line3</p>
                 
            </div>
                 <div class="col-md-2">
                 <p id="p1">adress branch no3</p>
                 <p id="p1">adress line1</p>
                 <p id="p1">adress line2</p>
                 <p id="p1">adress line3</p>
            </div>
           </div>




        </div>
        
    











</asp:Content>

