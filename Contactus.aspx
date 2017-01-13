<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Contact Us</title>
    
     <link href="custom_css/Contactus.css?v=3" rel="stylesheet" type="text/css" />
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageBody1" Runat="Server">


    <!-- Contact us -->
    <div class="container-fluid">
        <!--Contct us feed back form-->
        <div class="col-md-5 col-md-offset-1">
            <div class=" panel panel-primary">
                <div class="panel-heading">
                    <h2>C<small class="headline">ONTACT US</small></h2>
                    <br />
                    <p class="headlinepara">We are looking forward to hear from you.</p>
                </div>
                <div class="panel-body form_label panel1">
                    <form class="contactform" runat="server">
                        <!--Name-->
                        <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
                        <asp:RequiredFieldValidator ID="nameFieldValidator1" runat="server" ErrorMessage="*Name Field Cannot be EMPTY" ControlToValidate="Name" 
                        ValidationGroup="save" Display="Dynamic" ForeColor="Red">Name field cannot be empty</asp:RequiredFieldValidator>    
                        <asp:TextBox ID="Name" runat="server"  CssClass="form-control txtset"></asp:TextBox>   
                        </div>

                        <!--Email--> 
                        <div class="form-group">
                        <asp:Label ID="em" runat="server" Text="Email :"></asp:Label>
                        <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*email required" 
                        ForeColor="Red" SetFocusOnError="True">email required</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator1" 
                        runat="server" ControlToValidate="txtEmail" Display="Dynamic" 
                        ErrorMessage="invalid email address" ForeColor="Red" SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">invalid email address</asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control txtset"></asp:TextBox>
                        </div>

                        <!--Subject-->
                        <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Subject :"></asp:Label>
                        <asp:RequiredFieldValidator ID="subjectFieldValidator1" runat="server" ErrorMessage="*Subject field cannot be empty" 
                        ControlToValidate="subject" ForeColor="Red" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="subject" runat="server" CssClass="form-control txtset "></asp:TextBox>
                        </div>
                    
                      
                        <!--Description--> 
                        <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label>
                        <asp:RequiredFieldValidator ID="descriptionFieldValidator1" runat="server" ErrorMessage="*Description field cannot be empty" 
                        ForeColor="red" ControlToValidate="description" ValidationGroup="save"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="description" runat="server" CssClass="form-control txtset des1" TextMode="MultiLine" Rows="12"></asp:TextBox>
                        </div>
                        <!--submit button-->
                        <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn btn-primary" OnClick="Button1_Click"/>
                        </div>   
                    </form>
                </div>
            </div>
        </div>

        <!--contact us image-->
        <div class="col-md-5 col-md-offset-0">
            <img alt="carcallimage" src="images/8.jpg" class="img-responsive img11" width="100%" height="auto"/>
            <br/>
            <!--google map location of terry cabs-->
            <%--<div class="container-fluid">--%>
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
                <script type="text/javascript"
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAiyd5S9Ajg9soxwYECRUeTI-RryliYRP8&callback=initMap">
                </script>
            <%--</div>--%>
        </div>
    </div>
                    
    <div id="r1">  
        <div class="row">
            <div class="col-md-2 col-md-offset-2 coladd">
                <h4>Main Branch</h4>
                <br/>
                <p id="p1">NO 234,</p>
                <p id="p1">Kandewatte Road,</p>
                <p id="p1">Polgasowita.</p>
                <p id="p1">Mobile:+94 775691234</p>
                <p id="p1">Hotline:+9411 4871871</p>
            </div>
            <div class="col-md-2 col-md-offset-2 coladd">
                <h4>Kegalle Branch</h4>
                <br />
                <p id="p1">NO 23/3,</p>
                <p id="p1">New Town,</p>
                <p id="p1">Kegalle.</p>
                <p id="p1">Mobile:+94 778563124</p>
                <p id="p1">Genaral:+94 355326987</p>    
            </div>
            <div class="col-md-2 col-md-offset-2 coladd">
                <h4>Paliyagoda Branch</h4>
                <br />
                <p id="p1">NO 890/3,</p>
                <p id="p1">Kandy Road,</p>
                <p id="p1">Paliyagoda,</p>
                <p id="p1">Mobile:+94 778965231</p>
                <p id="p1">Genaral:+94 112864789</p>
            </div>
        </div>
    </div>
</asp:Content>

