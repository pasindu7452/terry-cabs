<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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



