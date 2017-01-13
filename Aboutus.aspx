<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>About Us</title>
    <!--Styling-->
    <link href="custom_css/aboutus.css" rel="stylesheet" type="text/css" />
    <!--End of Styling-->
 </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody1" Runat="Server">
    <div id="about">
            <div class="row">
                <div class="col-lg-1">
                </div>

                <div class="col-md-6 defmid">
                    <div class="text">
                        <h2 class="abthead">A<small class="abtus">BOUT US</small></h2>
                        <hr/>
                        <p>
                            "Welcome to the official site of Terry cabs. Terry Cabs is a cab service in Sri Lanka which aims to provide world-class luxurious taxi services at the most economical 
                            prices in Sri Lanka. We always try to be the hallmark for reliable, high quality service in your city that it operates in"
                        </p>
                        <br /><br />
                        <img alt="AboutUsCover" src="images/aboutuscover.png" / width="100%" height="auto"/>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <h3>Vehicles</h3>  
                        <hr /><br />
                        <p>
                            With our fleet of luxurious vehicles from respected European and Japanese manufacturers, we can be help you accomplish 
                            any kind of vehicle need for any kinda of occasion.
                        </p>
                        <img alt="VehicleCover" src="images/vehcov.png" / width="100%" height="auto"/>
                        <br /><br /><br /><br />
                        <h3>Services</h3>
                        <hr /><br />
                        <p>
                            We are capble of providing taxi services all around the Western Province and rent you the luxurious vehicle you want with affordable 
                            package which we can guarantee will suit your need. For weddding hire we have separete fleet of luxuary sedans and limousines.  
                        </p>
                        <img alt="ServiceCover" src="images/servcov.png" / width="100%" height="auto"/>

	                </div>
                </div>

                <div class="col-md-4 defmid">
                    <!--Mini Caraousel-->
                    <div id="carousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators" style="visibility:hidden">
                            <li data-target="#carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel" data-slide-to="1"></li>
                            <li data-target="#carousel" data-slide-to="2"></li>
                            <li data-target="#carousel" data-slide-to="3"></li>
                            <li data-target="#carousel" data-slide-to="4"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="images/5.jpg" alt="First slide"/>
                            </div>

                            <div class="item">
                                <img src="images/6.jpg" alt="Second slide"/>
                            </div>

                            <div class="item">
                                <img src="images/7.jpg" alt="Third slide"/>
                            </div>

                            <div class="item">
                                <img src="images/8.jpg" alt="Third slide"/>
                            </div>

                            <div class="item">
                                <img src="images/9.jpg" alt="Third slide"/>
                            </div>
                        </div>
                    </div>

                    <br /><br />

                    <!-- begin panel group -->
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                
                        <!-- panel 1 -->
                        <div class="panel panel-default">
                            <!--wrap panel heading in span-->
                            <span class="side-tab" data-target="#tab1" data-toggle="tab" role="tab" aria-expanded="false">
                                <div class="panel-heading" role="tab" id="headingOne"data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <h4 class="panel-title">"Luxury & Resonable Prices"</h4>
                                </div>
                            </span>
                    
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <!-- Tab content goes here -->
                                    <p>As a major cab service providing company our expectation is give the customer what they are really expecting from us without making 
                                        them pay unnecessary extra money to fulfill their need.</p>
                                    <p>Also we are happy to provide our customers the best service with comfort, safety and the satisfaction of knowing that their money is not wasted. 
                                        All our vehicles are luxurious and modern. Our packages are very economical and service we provide is worth the price you pay with your earning of 
                                        hardwork.
                                    </p>
                                </div>
                            </div>
                        </div> 
                        <!--End of panel 1-->
                
                        <!-- panel 2 -->
                        <div class="panel panel-default">
                            <!--wrap panel heading in span to trigger image change as well as collapse -->
                            <span class="side-tab" data-target="#tab2" data-toggle="tab" role="tab" aria-expanded="false">
                                <div class="panel-heading" role="tab" id="headingTwo" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    <h4 class="panel-title collapsed">"Safety" Always Comes First</h4>
                                </div>
                            </span>

                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <!-- Tab content goes here -->
                                    <p>Since it is our duty to give you the best service for the money you paid, we will consider "Safety Of You" as our primary priority.</p>
                                    <p>So No Worries! It will be a smooth ride. All our vehicles are modern and they are in their great shapes and equiped with ABS technologies, Driver and passangers airbags 
                                        High quality seatbelts and all the safety features. No faults and well maintained. Our Drivers, they are very skilled and good people dedicate to the duty.</p>
                                </div>
                            </div>
                        </div>
                        <!-- / panel 2 -->
                
                        <!--  panel 3 -->
                        <div class="panel panel-default">
                            <!--wrap panel heading in span to trigger image change as well as collapse -->
                            <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                                <div class="panel-heading" role="tab" id="headingThree"  class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    <h4 class="panel-title">Mordern Day Facilities</h4>
                                </div>
                            </span>

                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <!-- tab content goes here -->
                                    <p>Customers always expect the comfort and the luxury of modern facilities in a cab. </p>
                                    <p>As we are so passionate about giving the customer what they expect, Our all vehicles have Air Conditioning and
                                        other climate control features and all vehicles have GPS facilities, DVD players with Touch screens, Surround 
                                        sound systems, comfortable seats. Most of our vehicles have automatic gear shifting but for the people with passion 
                                        of driving we have manual gear shifting vehicle too.

                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--End of panel 3-->
                    </div>
                    <br />
                    <img alt="terryAbtimg" src="images/terryAbt.png" / width="100%" height="auto"/>
                </div>
                <div class="col-md-1">
                </div>

            </div>
            <br />
    </div>
    
</asp:Content>












  
       
