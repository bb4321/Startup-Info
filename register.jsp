<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>A Proximity-Aware Interest-Clustered P2P File Sharing System</title>
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
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">A Proximity<br />
        <small>Aware Interest-Clustered P2P File Sharing System</small></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="P2PWebServer.html"><span>P2P Web Server</span></a></li>
          <li><a href="RemoteUser.html"><span>Remote User </span></a></li>
          <li class="active"><a href="Register.jsp"><span>Remote User Register </span></a></li>
          <li><a href="about.html"><span>About Us </span></a></li>
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
          <h2><span class="style1">Remote User Registeration</span><br />
          </h2>
          <p class="infopost"><a href="#" class="com style2">User Register</a></p>
          <div class="clr"></div>
           <form action="insertdata1.jsp" method="post" id="" enctype="multipart/form-data">
	  <table border="0" width="600">
	  <tr>
	  <td> <label for="name">Name (required)</label></td>
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
	  <td><label for="address">Your Address</label></td>
	  <td><textarea id="address" name="address" rows="10" cols="20"></textarea></td>
	  </tr>
	  
	   <tr>
	  <td><label for="DOB">DOB (required)</label></td>
	  <td><input id="dob" name="dob" class="text"/></td>
	  </tr>
	  
	  <tr>
	  <td><label for="gender">Gender(required)</label></td>
	  <td><select id="s1" name="gender" class="text">
              	<option>Male</option>
              	<option>Female</option>
              	</select></td>
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
	  <td><label for="location">Interest</label></td>
	  <td><select id="int" name="int" >
						<option>---Select Interest Category---</option>
						<%
						try{
						Statement st=connection.createStatement();
						
						String strQ="SELECT interest FROM ap2p_cluster";
						ResultSet rs=st.executeQuery(strQ);
						while(rs.next())
						{
							String s=rs.getString(1);
						%>
						<option><%=s%></option>
						
						<%
						
						}
						%>
						</select>
						<%
						}catch(Exception e)
						{
							e.printStackTrace();
						}
						%>
	  </tr>
	  
	  <tr>
	  <td><label for="Pic">Select Profile Pic(required) </label></td>
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
            <li><a href="index.html">Home</a></li>
            <li><a href="P2PWebServer.html">P2P Web Server</a></li>
            <li><a href="RemoteUser.html">Remote User </a></li>
            <li><a href="Register.jsp">Remote User Registeration </a></li>
            <li><a href="about.html">About Us </a></li>
        
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sponsors</span></h2>
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
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="www.tmksinfotech.com"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="www.tmksinfotech.com"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="www.tmksinfotech.com"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="www.tmksinfotech.com"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="www.tmksinfotech.com"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="www.tmksinfotech.com"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Bloom Filter</span></h2>
        <p>In the FileName method, the information exchange between neighbors may introduce a high network overhead. Also, the total size of the exchanged messages increases exponentially as TTL increases. To constrain the overhead in the file information collection, we further propose a method called BloomFilter that uses the counting bloom filter technique to compress the exchanged messages. </p>
        
      </div>
      <div class="col c3">
        <h2><span>Proximity Awareness</span></h2>
        <p>        Techniques to exploit topology information in P2P overlay routing include geographic layout, proximity routing, and proximity-neighbor selection. Geographic layout method maps the overlay’s logical ID space to the physical network so that neighboring nodes in the ID space are also close in the physical network.</p>
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
