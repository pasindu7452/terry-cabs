<<<<<<< HEAD
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Home</title>
</asp:Content>

<asp:Content ID="Slider" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
   
        <div class="col-md-12 col-md-offset-0">
                
                <!-- carousel slider-->
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                     <!-- slider indicators -->
                    <ol class="carousel-indicators">
                         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol>

                     <!--images of the slider -->
                     <div class="carousel-inner" role="listbox">
                         <div class="item active">
                             <img src="images/1.jpg" alt="Chania"class="img-responsive" width="100%">
                             <div class="carousel-caption">
                                <h3>Chania</h3>
                                 <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                            </div>
                        </div>

                         <div class="item">
                             <img src="images/2.jpg" alt="Chania" class="img-responsive"  width="100%">
                             <div class="carousel-caption">
                                <h3>Chania</h3>
                                 <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                            </div>
                        </div>

                        <div class="item">
                             <img src="images/3.jpg" alt="Flower" class="img-responsive"  width="100%">
                            <div class="carousel-caption">
                                 <h3>Flowers</h3>
                                 <p>Beatiful flowers in Kolymbari, Crete.</p>
                             </div>
                         </div>

                        <div class="item">
                              <img src="images/4.jpg" alt="Flower"  class="img-responsive"  width="100%">
                             <div class="carousel-caption">
                                 <h3>Flowers</h3>
                                 <p>Beatiful flowers in Kolymbari, Crete.</p>
                            </div>
                        </div>
             </div>

            <!-- slider controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                 <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                 <span class="sr-only">Next</span>
            </a>
        </div>
       </div>   
        
        <!--paragraph after the slider-->
        <div class="col-md-6 col-md-offset-3">
            <br />
                <p>
                     "Welcome to the official site of Terry cabs. Terry Cabs is a cab service in Sri Lanka and aims to provide world-class taxi services at the most economical 
                price in Sri Lanka. We always try to be the hallmark for reliable, high quality service in your city that it operates
                in"
                </p>  
              
        </div>
                 


</asp:Content>



=======
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Terry Cabs - Home</title>
    <!--Styling-->
    <link href="custom_css/defaultpage_css.css" rel="stylesheet" type="text/css" />
    <!--End of Styling-->
</asp:Content>



<asp:Content ID="Carousel1" ContentPlaceHolderID="CarouselPlaceHolder" runat="server">

    <!--Carousel Slider-->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!--Slider Indicators-->
        <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <!--End of Slider Indicators-->

        <!--Slider Images-->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/1.jpg" alt="TerryCabsCoverPhoto"class="img-responsive" width="100%">
                    <div class="carousel-caption">
                        <h2>WELCOME</h2>
                    </div>
            </div>

            <div class="item">
                <img src="images/2.jpg" alt="WELCOME"  class="img-responsive"  width="100%">
                    <div class="carousel-caption">
                        <h2>CARS & VANS FOR RENT</h2>
                        <p>Rent a vehicle without a driver</p>
                    </div>
            </div>

            <div class="item">
                <img src="images/3.jpg" alt="Flower" class="img-responsive"  width="100%">
                    <div class="carousel-caption">
                        <h3>CARS & VANS FOR HIRE</h3>
                        <p>Rent a vehicle with a driver</p>
                    </div>
            </div>

            <div class="item">
                <img src="images/4.jpg" alt="Flower"  class="img-responsive"  width="100%">
                    <div class="carousel-caption">
                        <h3>WEDDING HIRES</h3>
                        <p>Luxurious Wedding Cars</p>
                    </div>
            </div>
        </div>
        <!--End of Slider Images-->

        <!--Slider Controls-->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!--End of Carousel Slider-->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody1" runat="server">
    <hr />
    <br />
    <div class="row defcontent">
        <div class="col-md-1 defleft"> 
        </div>
        <div class="col-md-6 defmid">
            <h3>TERRY CABS</h3>
            <h4>Official Website</h4>
            <br />
            <img alt="banner" src="images/taxibanner.jpg" height="auto" width="100%"/>
            <br />
            <p>
            <font size="4">
                <br />
                <b>Thank You For Visiting!</b>
                <br />
                <br />
                This is the Official Website of the Terry Cabs & Rent A Car. This website is hosted and maintained by the 
                Terry Cabs & Rent a Car.
                Goal of the Terry Cabs Official Website is to facilitate Terry Cabs customers with a Online Reservation System and to provide 
                the user with necessary information regarding our services, vehicles , packages and etc.
                You can register as a member user of Terry Cabs and reserve our services online instead of calling. 
                All vehicle and driver information is available for you to see for each resevation you make.
            </font>
            </p>

        </div>
        <div class="col-md-1 defright">
        </div>
        <div class="col-md-3 defmid">
           <h3>VEHICLES</h3> 
            <div class="row vehgridrow">
                <div class="col-sm-6 vehgrid">
                    <br /><img alt="car" src="images/veh1.jpg" height="120px" width="auto"/>
                </div>
                <div class="col-sm-6 vehgrid">
                    <h4 class="vehsetsethead">Cars</h4>
                    <h5 class="vehsetset">Luxurious Options</h5>
                    <h5 class="vehsetset">Budget Options</h5>
                    <h5 class="vehsetset">Without Driver</h5>
                </div>
            </div>
            <div class="row vehgridrow">
                <div class="col-sm-6 vehgrid">
                    <br /><img alt="van" src="images/veh2.jpg" height="120px" width="auto"/>
                </div>
                <div class="col-sm-6 vehgrid">
                    <h4 class="vehsetsethead">Vans</h4>
                    <h5 class="vehsetset">With or Without Driver</h5>
                    <h5 class="vehsetset">Luxurious Options</h5>
                    <h5 class="vehsetset">Budget Options</h5>
                    <h5 class="vehsetset">Long Or Short Distance</h5>
                </div>
            </div>
            <div class="row vehgridrow">
                <div class="col-sm-6 vehgrid">
                    <br /><img alt="bus" src="images/veh3.jpg" height="120px" width="auto"/>
                </div>
                <div class="col-sm-6 vehgrid">
                    <h4 class="vehsetsethead">Buses</h4>
                    <h5 class="vehsetset">Luxurious Options</h5>
                    <h5 class="vehsetset">With Driver</h5>
                    <h5 class="vehsetset">Budget Options</h5>
                    <h5 class="vehsetset">Long Or Short Distance</h5>
                </div>
            </div>
            
        </div>
        <div class="col-md-1 defright">
        </div>
    </div>
    <div class="row defcontent">
        <div class="col-md-1 defleft"> 
        </div>
        <div class="col-md-10 packset">
            <h3>Offers</h3>
            <div class="row"><center>
                <div class="col-sm-4 pckset">
                    <h4>CARS, VANS AND BUSES FOR RENT</h4>
                    <img alt="CarsVansBuses" src="images/pck1.jpg" width="300px" height="auto" />
                    <hr />
                    <h5>We can arrange a vehicle for you with driver or without driver. attractive packages available.</h5>
                </div>
                <div class="col-sm-4 pckset">
                    <h4>LUXURIOUS WEDDING CARS</h4>
                    <img alt="WeddingCars" src="images/pck2.jpg" width="300px" height="auto" />
                    <hr />
                    <h5>Vehicles could be inspected prior to the ceremony and chosen from are wide fleet for luxury cars</h5>
                </div>
                <div class="col-sm-4 pckset">
                    <h4>LONG DISTANCE TRAVEL</h4>
                    <img alt="LongDistance" src="images/pck3.jpg" width="300px" height="auto" />
                    <hr />
                    <h5>Special packages available for long travels. Please contact us for further information</h5>
                </div>
                </center>
            </div>
        </div>
        <div class="col-md-1 defright">
        </div>
    </div>
    
</asp:Content>
>>>>>>> 7a18260806e361c9075b8b4acb0927533c9f9a35
