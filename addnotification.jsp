<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Startup Company Info</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 23px}
.style2 {
	font-size: 16px;
	color: #BAD24F;
}
.style3 {font-size: 16px}
-->
</style>
</head>
<%
        if (request.getParameter("msg") != null) {
    %>
    <script>alert('Notification Added	 Successfully');</script>
    <%            }
    %>

<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Startup Company Info<br />
        <small>A new start for a  buissness </small></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="adminhome.jsp"><span>Home Page</span></a></li>
         <li><a href="companyprofile.jsp"><span>Profile</span></a></li>
          <li><a href="resumeview.jsp"><span>Applied Resumes</span></a></li>
          
          <li><a href="addnotification.jsp"><span>Add Notifications </span></a></li>
		 <!-- <li><a href="search.jsp"><span>Search</span></a></li> -->
		  <li><a href="index.html"><span>Logout</span></a></li>
		  
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="312" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="312" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="312" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
             <h2><span class="style1">Add Notification</span><br />
          </h2>
          <p class="infopost"><a href="#" class="com style2">Notification</a></p>
          <div class="clr"></div>
           <form action="insertnotification.jsp" method="post" id="" >
	  <table border="0" width="600">
	  <tr>
	  <td> <label for="userid">Field </label></td>
	  <td><input id="userid" name="field" class="text" /></td>
	    
	  </tr>
	   
	  <tr>
	  <td><label for="email">Job Description <label></td>
	  <td><input id="email" name="job" class="text"/></td>
	  </tr>
	  
	   <tr>
	  <td><label for ="mobile">Email Id</label></td>
	  <td><input id="mobile" name="email" class="text"/></td>
	  </tr>
	  
	   <tr>
	  <td><label for="mobile">Location</label></td>
	  <td><input id="mobile" name="location" class="text"></textarea></td>
	  </tr>
	  
	   <tr>
	  <td><label for="DOB">Last Date</label></td>
	  <td><input id="dob" name="ldate" class="text"/></td>
	  </tr>
	  
	 
	  
	  
	  
	  
	   <tr>
	  <td></td>
	  <td><input type="submit" name="imageField" id="imageField"  class="LOGIN" /></td>
	    
	  </tr>
	  
	  </table>
	  </form></p>
          <div class="clr"></div>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.png" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li class="active"><a href="adminhome.jsp">Home Page</a></li>
         <li><a href="companyprofile.jsp">Profile</a></li>
          <li><a href="resumeview.jsp">Applied Resumes</a></li>
          
          <li><a href="addnotification.jsp">Add Notifications </a></li>
		 <!-- <li><a href="search.jsp"><span>Search</span></a></li> -->
		  <li><a href="index.html">Logout</a></li>
	
		  
        
          </ul>
        </div>
        <div class="gadget">
     <!--     <h2 class="star"><span>Sponsors</span></h2>
          <div class="clr"></div>
           <ul class="ex_menu">
            <li><a href="#">P2P Networks</a><br />
            </li>
            <li><a href="#">File Sharing System</a><br />
            </li>
            <li><a href="#">Proximity Awareness</a><br />
            </li>
            <li><a href="#">File Replication</a><br />
            </li>
            <li><a href="www.tmksinfotech.com">Bloom filter</a><br />
            </li>
            <li><a href="www.tmksinfotech.com"></a><br />
            </li>
          </ul>
		  -->
		   <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
     
        </div> 
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Startup Company Info</span></h2>
        <p>Startup founders often have a more casual or offbeat attitude in their dress, office space and marketing, as compared to traditional corporations. Startup founders in the 2010s may wear hoodies, sneakers and other casual clothes to business meetings. Some startups have recreational facilities in their offices, such as pool tables, ping pong tables and pinball machines, which are used to create an attractive, fun work environment, stimulate team development and team spirit, and encourage creativity. </p>
        
      </div>
      <div class="col c3">
        <h2><span>Awareness</span></h2>
        <p>      Startups usually need to form partnerships with other firms to enable their business model to operate. To become attractive to other businesses, startups need to align their internal features, such as management style and products with the market situation. In their 2013 study, Kask and Linton develop two ideal profiles, or also known as configurations or archetypes, for startups that are commercializing inventions.</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
