<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About_us.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>About Us</title>
 <link href="custom_css/aboutus.css" rel="stylesheet" type="text/css" />
   
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="about">
    	<div class="container">
    		<div class="text">
    			<h2>About Us</h2>
    			<hr>
    			<p>"Welcome to the official site of Terry cabs. Terry Cabs is a cab service in Sri Lanka and aims to provide world-class taxi services at the most economical 
                price in Sri Lanka. We always try to be the hallmark for reliable, high quality service in your city that it operates
                in"</p>
			</div>

        <div class="col-md-6">
            <!-- begin panel group -->
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                
                <!-- panel 1 -->
                <div class="panel panel-default">
                    <!--wrap panel heading in span-->
                    <span class="side-tab" data-target="#tab1" data-toggle="tab" role="tab" aria-expanded="false">
                        <div class="panel-heading" role="tab" id="headingOne"data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <h4 class="panel-title">"Luxuryness & Resonable Price Range"</h4>
                        </div>
                    </span>
                    
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                        <!-- Tab content goes here -->
                        <p>As a major cab service providing company our expectation is give the customer what they expecting without make them pay unnessory money for fulfill their own desires.</p>
                        <p>Also provide the "RIDE OF THEIR LIFE" without making them uncomfertable or wasted their money </p>
                        </div>
                    </div>
                </div> 
                <!-- / panel 1 -->
                
                <!-- panel 2 -->
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab2" data-toggle="tab" role="tab" aria-expanded="false">
                        <div class="panel-heading" role="tab" id="headingTwo" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <h4 class="panel-title collapsed">"Safty" Always Come's First</h4>
                        </div>
                    </span>

                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                        <!-- Tab content goes here -->
                        <p>some text</p>
                        <p>some fucking text</p>
                        </div>
                    </div>
                </div>
                <!-- / panel 2 -->
                
                <!--  panel 3 -->
                <div class="panel panel-default">
                    <!--wrap panel heading in span to trigger image change as well as collapse -->
                    <span class="side-tab" data-target="#tab3" data-toggle="tab" role="tab" aria-expanded="false">
                        <div class="panel-heading" role="tab" id="headingThree"  class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            <h4 class="panel-title">Mordern day Facilities and Time saving</h4>
                        </div>
                    </span>

                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                          <div class="panel-body">
                          <!-- tab content goes here -->
                        <p>i dont give fuck</p>
                        <p> who fucking cares</p>
                          </div>
                        </div>
                      </div>
            	</div>
             </div> 
             
   	 		 <div class="col-md-6">
    			<div id="carousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
					<ol class="carousel-indicators">
			  			<li data-target="#carousel" data-slide-to="0" class="active"></li>
			    		<li data-target="#carousel" data-slide-to="1"></li>
			    		<li data-target="#carousel" data-slide-to="2"></li>
			    		<li data-target="#carousel" data-slide-to="3"></li>
			    		<li data-target="#carousel" data-slide-to="4"></li>
					</ol>
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
			    		<div class="item active">
			    			<img src="images/8.jpg" alt="First slide">
			    		</div>
			    		<div class="item">
			    			<img src="images/7.jpg" alt="Second slide">
			    		</div>
			    		<div class="item">
			    			<img src="images/6.jpg" alt="Third slide">
			    		</div>
			    		<div class="item">
			    			<img src="images/5.jpg" alt="Third slide">
			    		</div>
			    		<div class="item">
			    			<img src="images/9.jpg" alt="Third slide">
			    		</div>
					</div>
				</div>
			</div>
             
        </div>
    </div>
    
</asp:Content>












  
       
