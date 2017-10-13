<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
		<%
		session.setAttribute("incorrectLog","false");
		%>
	<title>Live Stream Sports Tv</title>
	<meta name = "viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
	<link rel="stylesheet" href="css/bs/css/bootstrap.css">
	<link rel="stylesheet" href="css/bs/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href = "font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="materialize/css/materialize.css">
	<link rel="stylesheet" type="text/css" href="materialize/css/materialize.min.css">
	<link rel="stylesheet" type="text/css" href="materializeicon.css">

	<link	rel="stylesheet" href="css/style.css">

	<script type="text/javascript" src="css/bs/css/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/angular.min.js"></script>
	<script src="materialize/js/materialize.min.js"></script>
	<script type="text/javascript" src="js/myJquery.js"></script>

	<link rel="icon" type="image/png" href="images/live.png">

</head>



<body>


	<!--NAVIGATION BAR-->
	
  <nav class="blue-grey darken-4">
    <div class="nav-wrapper">
      <a href="index.jsp"><img src="images/lvlogo.png" id="logo1"></a>
      <a href="#" data-activates="mobile-demo" class="button-collapse">
      <i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="index.jsp">HOME</a></li>
        <li><a href="forum.jsp">FORUM</a></li>
		<li><a href="Channel.jsp">CHANNELS</a></li>
        <li><a href="registration.jsp" class="waves-effect waves-light btn" style="background-color: #CF202E;">REGISTER</a></li>
		<li><a href="login.jsp" class="waves-effect waves-light btn" style="background-color: #CF202E;">SIGN IN</a></li>
        
      </ul>
	  
	  <!--SIDE NAVIGATION BAR-->
	  
      <ul class="side-nav" id="mobile-demo">
        <li><a href="index.jsp">HOME</a></li>
        <li><a href="forum.jsp">FORUM</a></li>
		<li><a href="channels.jsp">CHANNELS</a></li>
		<li><a href="registration.jsp" class="waves-effect waves-light btn" style="background-color: #CF202E;">REGISTER</a></li>
		<li><a href="login.jsp" class="waves-effect waves-light btn" style="background-color: #CF202E;">SIGN IN</a></li>
      </ul>
    </div>
  </nav>


<script type="text/javascript">
  $(document).ready(function(){
     $(".button-collapse").sideNav();
	   $('.carousel').carousel({dist:0});
        window.setInterval(function(){$('.carousel').carousel('next')},3000)
        
	  
 });
</script>

	
	<!--CAROUSEL-->
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8 z-depth-2" id="carousel">
				<div class="carousel carousel-slider" data-indicators="true">
					
					<div class="carousel-item">
						<img src="images/s1.jpg" class="responsive-img" id="">
						  <div class="carousel-caption" id="caption1">
							<h6><a href="registration.jsp">The lowdown on all of the changes to the NBA All-Star</a></h6>
							<p> <i class="fa fa-youtube-play"> </i> Live on October 10, 2017</p>
						  </div>
					</div>
					
					<div class="carousel-item">
						<img src="images/s2.jpg" id="">
							 <div class="carousel-caption">
								<h6><a href="#">Floyd Mayweather and Conor McGregor - Full Fight</a></h6>
								<p> <i class="fa fa-youtube-play"> </i> Live on October 12, 2017</p>
						  </div>
					</div>
					
					<div class="carousel-item">
						<img src="images/s3.jpg" id="">
							 <div class="carousel-caption">
								<h6><a href="#">Crown Group Australian BADMINTON
								PEN 2017</a></h6>
								<p> <i class="fa fa-youtube-play"> </i> Live on November 12, 2017</p>
						  </div>
					</div>
					
					<div class="carousel-item">
						<img src="images/s4.jpg" id="">
							 <div class="carousel-caption">
								<h6><a href="#">Cleveland Cavaliers vs Golden State Warriors Game 1 Full Game
								</a></h6>
								<p> <i class="fa fa-youtube-play"> </i> 4 Months Ago <i class="fa fa-eye"></i> 222k views</p>
						  </div>
					</div>
					
					<div class="carousel-item">
						<img src="images/s5.png" id="">
							 <div class="carousel-caption">
								<h6><a href="#">Live Stream NBA Playoffs 2017 <br>
								from inside the arena</a></h6>
								<p> <i class="fa fa-youtube-play"> </i> Live on October 12, 2017</p>
						  </div>
					</div>
				</div>
			</div>
			
			<!--NEWS-->
			<div class="col-md-3" id="news" style="margin-top:15px; width:370px; font-size:17px;" >
			
				<div class= "collection-header z-depth-2" style="background-color: #CF202E; padding: .5em; margin-top: .5em;">
					<h5 style="color: #ffffff;"><i class="fa fa-newspaper-o"></i> LATEST NEWS</h5>
				</div>
				<ul class="collection z-depth-2" style="overflow-y:scroll; overflow-x:hidden; height:337px; margin: 0;" >
					
					<li><a href="#" class="collection-item pull-left">
						 <div id="left"> <img src = "images/qwe.jpg" style="height:60px; width:100px;"></div>
						<div><span><p class="small">Hong Kong Masters 2017: Neil Robertson beats O'Sullivan in final</p></span>
						<p class="small pull-left" ><span class="fa fa-clock-o"></span> October 12, 2017</p></div></a>
						<div class="divider"></div>
					</li>
					
					
					<li><a href="#" class="collection-item pull-left">
						 <div id="left"> <img src = "images/qweqwe.jpg" style="height:60px; width:100px;"></div>
						<div><span><p class="small">F1 2017 - Make Verstappen World Champion #2 - Chinese Grand Prix</p></span>
						<p class="small pull-left" ><span class="fa fa-clock-o"></span> October 12, 2017</p></div></a>
						<div class="divider"></div>
					</li>
					
					<li><a href="#" class="collection-item pull-left">
						 <div id="left"> <img src = "images/qweqweqwe.jpg"style="height:60px; width:100px;"></div>
						<div><span><p class="small">Minnesota Timberwolves vs LA Lakers - Full Game Highlights</p></span>
						<p class="small pull-left" ><span class="fa fa-clock-o"></span> October 12, 2017</p></div></a>
						<div class="divider"></div>
					</li>
					
					<li><a href="#" class="collection-item pull-left">
						 <div id="left"> <img src = "images/qweqweqweqwe.jpg" style="height:60px; width:100px;"></div>
						<div><span><p class="small">LIVE-Aris vs Stelmet Zielona Gora-Basketball Champions League 2017-18</p></span>
						<p class="small pull-left" ><span class="fa fa-clock-o"></span> October 12, 2017</p></div></a>
						<div class="divider"></div>
					</li>
					
					<li><a href="#" class="collection-item pull-left">	
						 <div id="left"> <img src = "images/qweqweqweqweqwe.jpg" style="height:60px; width:100px;"></div>
						<div><span><p class="small">UWCL BAYERN MUNICH V CHELSEA LADIES(2ND LEG)</p></span>
						<p class="small pull-left" ><span class="fa fa-clock-o"></span> October 12, 2017</p></div></a>
						<div class="divider"></div>
					</li>
					
					<li><a href="#" class="collection-item pull-left">
						 <div id="left"> <img src = "images/qweqweqweqweqweqwe.jpg" style="height:60px; width:100px;"></div>
						<div><span><p class="small">Live 2017 CFP National Championship: Alabama Vs Clemson LiveStream</p></span>
						<p class="small pull-left" ><span class="fa fa-clock-o"></span> October 12, 2017</p></div></a>
						<div class="divider"></div>
					</li>
				</ul>
			</div>
		</div>
		
		
		<!--TOP SORIES-->
		<div class="row">
			<div class="col-md-12">
					<div class="section">
						<h5><img src="images/top.jpg" height="70px"> Top Stories</h5>
						  <div class="divider"></div>
					</div>
			</div>
		
		</div>
	
		
			<div class="row">
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/Top1.PNG" style="height:180px; width:290px;">
						<h6>The lowdown on all of the changes <br> to the NBA All-Star Game</h6>	
					</a>
					
					 <%
						 Integer hitsCount = (Integer)application.getAttribute("hitCounter");
						 if( hitsCount ==null || hitsCount == 0 ) {
							/* First visit */
							hitsCount = 1;
						 } else {
							/* return visit */
							hitsCount += 1;
						 }
						 application.setAttribute("hitCounter", hitsCount);
					  %>
						<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%> | 2 hrs ago</h6>
			
			
				</div>
				
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/Top2.PNG" style="height:180px; width:290px;">
						<h6>Top 10 Horrific Sports Injuries in the <br> boxing sports</h6>
					</a>
					
			
					<h6 class="small pull-left" ><i class="fa fa-eye"></i>  views: <%= hitsCount%>  | 9 hrs ago</h6>
		
				</div>
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/Top3.PNG" style="height:180px; width:290px;">
						<h6>Why Patriot's Tom Brady Is The Greatest Bargain In The NFL</h6>
					</a>
						<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%>  | 2 hrs ago</h6> <br>
				
				</div>
				<div class="col-md-3 portfolio-item">
					<a href="#">
						
						<img class="img-responsive z-depth-2" src="images/g1.gif" alt="">
						
					</a>
			</div>
			
			<!--HIGHLIGHTS-->
		<div class="row">
			<div class="col-md-12">
					<div class="section">
						<h5><img src="images/top.jpg" height="70px"> Highlights </h5>
						  <div class="divider"></div>
					</div>
			</div>
		
		</div>
	
		
			<div class="row">
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/High1.PNG" style="height:180px; width:290px;">
						<h6>Boston Celtics vs Philadelphia Sixers - Full Game Highlights | <br> 2017 NBA Preseason</h6>	
					</a>
					<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%>  | 2 hrs ago</h6>
			
			
				</div>
				
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/High2.PNG" style="height:180px; width:290px;">
						<h6> Highlights: TNT vs. Ginebra |  <br> |PBA Governor’s Cup 2017|</h6>
					</a>
			
					<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%>  | 1 week ago</h6>
		
				</div>
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/High3.PNG" style="height:180px; width:290px;">
						<h6>Minnesota Timberwolves vs Golden State Warriors - Full Game Highlights |<br> NBA Preseason</h6>
					</a>
						<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%>  | 2 hrs ago</h6> <br>
				
				</div>
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/High4.PNG" style="height:180px; width:290px;">
						<h6>Shanghai Sharks vs Houston Rockets - Full Game Highlights |<br>2017 NBA Preseason</h6>
					</a>
					<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%>  | 2 hrs ago</h6> <br>	
				
				</div>
		</div>
			
			<!--Popular Videos-->
		<div class="row">
			<div class="col-md-12">
					<div class="section">
						<h5><img src="images/top.jpg" height="70px"> Popular Videos </h5>
						  <div class="divider"></div>
					</div>
			</div>
		
		</div>
	
		
			<div class="row">
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/Pop1.PNG" style="height:180px; width:290px;">
						<h6>Minnesota Timberwolves vs LA <br> Lakers - Full Game Highlights</h6>	
					</a>
					<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%>  | 2 hrs ago</h6>
			
			
				</div>
				
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/Pop2.PNG" style="height:180px; width:290px;">
						<h6> Highlights: San Miguel vs. Ginebra | <br> | PBA Governors Cup 2017</h6>
					</a>
			
					<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%>  | 2 hrs ago</h6>
		
				</div>
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/Pop3.PNG" style="height:180px; width:290px;">
						<h6>Why Patriot's Tom Brady Is The Greatest Bargain In The NFL</h6>
					</a>
						<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%>  | 2 hrs ago</h6> <br>
				
				</div>
				<div class="col-md-3 portfolio-item">
					<a href="#">
						<img class="img-responsive z-depth-2" src="images/ads.jpg" alt="">
					</a>
			</div>
			
        
</div>

				<!--LIVE Videos-->
		<div class="row">
			<div class="col-md-12">
					<div class="section">
						<h5><img src="images/live2.jpg" height="70px"> LIVE </h5>
						  <div class="divider"></div>
					</div>
			</div>
		
		</div>
	
		
			<div class="row">
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/Live1.PNG" style="height:180px; width:290px;">
						<h6>UWCL BAYERN MUNICH V CHELSEA LADIES <br>(2ND LEG)</h6>	
					</a>
					
					<a href="#">
						<button type="button" class="btn btn-outline-danger" style="background-color: #CF202E;">Live now</button><br>	
					</a>	
				</div>
				
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/Live2.PNG" style="height:180px; width:290px;">
						<h6>LIVEðŸ”´ - Aris v Stelmet Zielona Gora - Press Conference - Basketball Champions League 2017-18</h6>
					</a>
					<a href="#">
						<button type="button" class="btn btn-outline-danger" style="background-color: #CF202E;">Live now</button><br>	
					</a>
		
				</div>
				<div class="col-md-3 portfolio-item">
					<a href="registration.jsp">
						<img src="images/Live3.PNG" style="height:180px; width:290px;">
						<h6>TSM vs FW - TSM vs WE - SKT vs C9 - SKT vs AHQ | 2017 World Championship: Group Stage</h6>
					</a>
						<a href="#">
						<button type="button" class="btn btn-outline-danger" style="background-color: #CF202E;">Live now</button><br>	
					</a>
				
				</div>
				<div class="col-md-3 portfolio-item">
					<a href="#">
						<img class="img-responsive z-depth-2" src="images/giphy.gif" alt="">
					</a>
			</div>
			
        
</div>
</div>
</div>






 
  

<br>
<br>
<br>
<br><br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
 <footer class="page-footer blue-grey darken-4">
          <div class="container ">
            <div class="row">
              <div class="col l6 s12 ">
                <h6 class="white-text">
                	<div class="logo1">
						<img src="images/lvlogo.png" id="logo1">
					</div>
					<b>Live streaming with multiple sports</b></h6>
                <p class="grey-text text-lighten-4"> Designated trademarks and brands are the property of their respective owners.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Contact & Location</h5>
                <ul>
                  <li><i class="fa fa-home"></i>  48 Bencoolen St. E.Rodriguez Sr. Ave., Quezon City</a></li>
                  <li><i class="fa fa-phone"></i>  +63 6388 2233</li>
				  <li><i class="fa fa-globe"></i>  Visit our site on:</li>
                   <li><a href=""><i class="fa fa-globe"></i> livestreamsports.com</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright #e0e0e0 grey lighten-2">
            <div class="container">
           <center> <span class="black-text text-darken-2">© 2017 All Rights Reserved</span> </center>
            </div>
          </div>
        </footer>




</body>
</html>