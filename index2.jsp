<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
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
        <li><a href="index2.jsp">HOME</a></li>
        <li><a href="forumAccount.jsp">FORUM</a></li>
		<li><a href="ChannelAccount.jsp">CHANNELS</a></li>
        
       <li> <%
    if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) {
%>
You are not logged in<br/>
<li><a href="login.jsp"><i class="fa fa-sign-in fa-2x"></i></a></li>
<%} else {
%>
<i class="fa fa-user fa-2x"> <%=session.getAttribute("uname")%></i></li>
<li><a href='logout.jsp'>&nbsp<i class="fa fa-power-off fa-2x"></i></a>
<%
    }
%></li>
      </ul>
	  
	  <!--SIDE NAVIGATION BAR-->
	  
      <ul class="side-nav" id="mobile-demo">
        <li><a href="index2.jsp">HOME</a></li>
        <li><a href="forumAccount.jsp">FORUM</a></li>
		<li><a href="ChannelAccount.jsp">CHANNELS</a></li>
		
        <li> <%
    if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) {
%>
You are not logged in<br/>
<a href="login.jsp">Please Login</a>
<%} else {
%>
<i class="fa fa-user"> <%=session.getAttribute("uname")%></i>
<a href='logout.jsp'>Log out</a>
<%
    }
%></li>
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


 <!--<div class="progress">
      <div class="indeterminate"></div>
  </div>-->

	<!--VIDEO-->
		<!--<div class="col-md-8">
		<video width="800" controls>
		  <source src="images/vid.mp4" type="video/mp4">
		  Your browser does not support HTML5 video.
		</video>
	 <iframe width="854" height="480" src="https://www.youtube.com/embed/ipc79xdc6qA" frameborder="0" allowfullscreen></iframe> -->
	
	<!--CAROUSEL-->
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8 z-depth-2" id="carousel">
				<div class="carousel carousel-slider" data-indicators="true">
					
					
						<iframe width="1050" height="350" src="https://www.youtube.com/embed/2oSmkU9iRR0" frameborder="0" style="border: 0 none transparent; width: 850px;" allowfullscreen></iframe>
						  <div class="carousel-caption" id="caption1">
							
							<p> <i class="fa fa-youtube-play"> </i> Live on October 12, 2017</p>
						  </div>
					
					
					
				</div>
			</div>
			
			<!--NEWS-->
			<div class="col-md-3" id="news1" style="margin-top:22px; width:370px;">
			<div class= "collection-header1 z-depth-2" style="height:400px;">
			<iframe src="https://www.ustream.tv/socialstream/23429625" style="border: 5px inset; color:#263238;  width:340px; margin-top:auto; "  webkitallowfullscreen allowfullscreen frameborder="no" width="600" height="400"></iframe>
		</div>
		</div>
		
		
		<!--TOP SORIES-->
		<div class="row">
			<div class="col-md-12">
					<div class="section">
						<h5><img src="images/top.jpg" height="70px"> Top Stories </h5>
						  <div class="divider"></div>
					</div>
			</div>
		
		</div>
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
						
		
			<div class="row">
				<%
	 //response.setIntHeader ("Refresh", 5);
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "sportsls";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "";
		  try {
				  Class.forName(driver).newInstance();
				  conn = DriverManager.getConnection(url + dbName, userName, password);
				  Statement st =conn.createStatement();			
				  
				  ResultSet rs = st.executeQuery("Select * from  tbl_topstories;");
				  
		 while (rs.next()){
		 %>
				<div class="col-md-3 portfolio-item">
					<a href="#">
						<iframe width="296" height="180" src="<%= rs.getString("urls")%>" frameborder="0" allowfullscreen></iframe>
						<h6><%= rs.getString("title")%><br></h6>	
					</a>
					
					<h6 class="small pull-left" ><i class="fa fa-eye"></i> views: <%= hitsCount%> | 2 hrs ago</h6>
			
			
				</div>
			 <%
			}
			conn.close();
				
	   } catch (Exception e) {
					e.printStackTrace();
					out.print("FIX YOUR DATABASE");
				}
		
		 finally{
		 }
		 %>	
			
			
			<!--Recommended-->
		<div class="row">
			<div class="col-md-12">
					<div class="section">
						<h5><img src="images/top.jpg" height="70px"> Recommended </h5>
						  <div class="divider"></div>
					</div>
			</div>
		
		</div>
	
		
			<div class="row">
			 
			 <%
			 try {
				  Class.forName(driver).newInstance();
				  conn = DriverManager.getConnection(url + dbName, userName, password);
				  Statement st =conn.createStatement();			
				  
				  ResultSet rs1 = st.executeQuery("Select * from  tbl_recomended;");
				  
		 while (rs1.next()){
		 %>
				<div class="col-md-3 portfolio-item">
					<a href="#">
						<iframe width="295" height="180" src="<%= rs1.getString("urls")%>" frameborder="0" allowfullscreen></iframe>
						<h6><%= rs1.getString("title")%></h6>	
					</a>
					<h6 class="small pull-left" ><i class="fa fa-eye"></i> 333k  | 2 hrs ago</h6>
			
			
				</div>
				<%
			}
			conn.close();
				
	   } catch (Exception e) {
					e.printStackTrace();
					out.print("FIX YOUR DATABASE");
				}
		
		 finally{
		 }
		 %>	
		
		
		</div>
			
			<!--Trending Videos-->
			
		<div class="row">
		
			<div class="col-md-12">
					<div class="section">
						<h5><img src="images/top.jpg" height="70px"> Trending Videos </h5>
						  <div class="divider"></div>
					</div>
			</div>
		
		</div>
	
		
			<div class="row">
			 <%
			 try {
				  Class.forName(driver).newInstance();
				  conn = DriverManager.getConnection(url + dbName, userName, password);
				  Statement st =conn.createStatement();			
				  
				  ResultSet rs2 = st.executeQuery("Select * from  tbl_trendingvid;");
				  
		 while (rs2.next()){
		 %>
				<div class="col-md-3 portfolio-item">
					<a href="#">
						<iframe width="295" height="180" src="<%= rs2.getString("urls")%>" frameborder="0" allowfullscreen></iframe>
						<h6><%= rs2.getString("title")%></h6>	
					</a>
					<h6 class="small pull-left" ><i class="fa fa-eye"></i> 333k  | 2 hrs ago</h6>
			
			
				</div>
				
		<%
			}
			conn.close();
				
	   } catch (Exception e) {
					e.printStackTrace();
					out.print("FIX YOUR DATABASE");
				}
		
		 finally{
		 }
		 %>	
				
		
				
			
 
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
		<%
			 try {
				  Class.forName(driver).newInstance();
				  conn = DriverManager.getConnection(url + dbName, userName, password);
				  Statement st =conn.createStatement();			
				  
				  ResultSet rs3 = st.executeQuery("Select * from  tbl_livevid;");
				  
		 while (rs3.next()){
		 %>
			
				<div class="col-md-3 portfolio-item">
					<a href="#">
						<iframe width="295" height="180" src="<%= rs3.getString("urls")%>" frameborder="0" allowfullscreen></iframe>
						<h6><%= rs3.getString("title")%></h6>	
					</a>
					
					<a href="#">
						<button type="button" class="btn btn-outline-danger" style="background-color: #CF202E;">Live now</button><br>	
					</a>	
				</div>
				
			<%
			}
			conn.close();
				
	   } catch (Exception e) {
					e.printStackTrace();
					out.print("FIX YOUR DATABASE");
				}
		
		 finally{
		 }
		 %>	
	
        
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