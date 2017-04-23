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
    <script>alert('Company Added Successfully');</script>
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
          <li><a href="addcompany.jsp"><span>Add Company </span></a></li>
          <li><a href="startupdetails.jsp"><span>StartUp Details</span></a></li>
          <li><a href="studentdetails.jsp"><span>Student Details</span></a></li>
          <li><a href="employeedetails.jsp"><span>Employee Details </span></a></li>
		  <li><a href="search.jsp"><span>Search</span></a></li>
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
          <h2><span class="style1">Add Company </span><br />
          </h2>
          <p class="infopost"><a href="#" class="com style2">Company</a></p>
          <div class="clr"></div>
           <form action="companyadd.jsp" method="post" id="" enctype="multipart/form-data">
	  <table border="0" width="600">
	  <tr>
	  <td> <label for="name">Company Name(required)</label></td>
	  <td><input id="userid" name="userid" class="text" /></td>
	    
	  </tr>
	   <tr>
	  <td><label for="pass">Password (required)</label></td>
	  <td><input type="password" id="pass" name="pass" class="text" /></td>
	    
	  </tr>
	  <tr>
	  <td><label for="email">Email Address (required)</label></td>
	  <td><input id="email" name="email" class="text"/></td>
	  </tr>
	  
	   <tr>
	  <td><label for ="mobile">Mobile Number(required)</label></td>
	  <td><input id="mobile" name="mobile" class="text"/></td>
	  </tr>
	  
	   <tr>
	  <td><label for="mobile">Company Location</label></td>
	  <td><input id="mobile" name="address" class="text"></textarea></td>
	  </tr>
	  
	   <tr>
	  <td><label for="DOB">DOE (required)</label></td>
	  <td><input id="dob" name="dob" class="text"/></td>
	  </tr>
	  
	  <tr>
	  <td><label for="DOB">Field (required)</label></td>
	  <td><input id="dob" name="field" class="text"/></td>
	  </tr>
	  
	   <tr>
	  <td><label for="Pincode">Pincode</label></td>
	  <td><input id="pin" name="pin" class="text"/></td>
	  </tr>
	  
	   <tr>
	  <td><label for="location">Country(Location)</label></td>
	  <td>  <select id="loc" name="loc" class="text">
              	<option>India</option>
              	<option>China</option>
              	<option>Japan</option>
              	<option>United States</option>
              	<option>Australia</option>
              	</select>
	  </td>
						
	  </tr>
	 
	  
	  <tr>
	  <td><label for="Pic">Select Company Logo(required) </label></td>
	  <td><input type="file" id="pic" name="pic" class="text"/></td>
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
            <li><a href="adminhome.jsp">Home Page</a></li>
          <li><a href="addcompany.jsp">Add Company </a></li>
          <li><a href="startupdetails.jsp">StartUp Details</a></li>
          <li><a href="studentdetails.jsp">Student Details</a></li>
          <li><a href="employeedetails.jsp">Employee Details</a></li>
		  <li><a href="search.jsp">Search</a></li>
		  
        
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
