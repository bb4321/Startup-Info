<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

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
    <script>alert('Company Deleted Successfully');</script>
    <%            }
    %>

	<%
        if (request.getParameter("mssg") != null) {
    %>
    <script>alert('Company Accepted Successfully');</script>
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
		<p class="infopost"><a href="#" class="com style2">Start Up Details</a></p>
          <div class="clr"></div>
		  <br><br>
		
		<%
		Statement st1 = connection.createStatement();
				ResultSet rs = st1.executeQuery("select * from company");
		%>
         <table border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#162D3D">
  	   <tr>
   		 <td width="93"><div align="center" class="style8">Company Name </div></td>
    	 <td width="71"><div align="center" class="style8">Email Id </div></td>
         <td width="72"><div align="center" class="style8">Mobile</div></td>
		 <td width="72"><div align="center" class="style8">DOE</div></td>
         <td width="52"><div align="center" class="style8">Field</div></td>
		 
		 <td width="52"><div align="center" class="style8">Address</div></td>
		 <td width="52"><div align="center" class="style8">Action</div></td>
  </tr>
 
<%
while(rs.next()){
%>
<tr>
<td width="93"><div align="center" class="style8"><%=rs.getString(2)%></div></td>
    	 <td width="71"><div align="center" class="style8"><%=rs.getString(4)%></div></td>
         <td width="72"><div align="center" class="style8"><%=rs.getString(5)%></div></td>
         <td width="52"><div align="center" class="style8"><%=rs.getString(7)%></div></td>
		 <td width="52"><div align="center" class="style8"><%=rs.getString(8)%></div></td>
		 
		 <td width="52"><div align="center" class="style8"><%=rs.getString(6)%></div></td>
		 <td width="52"><div align="center" class="style8"><a href="acceptcompany.jsp?id=<%=rs.getString(4)%>">Accept</a>|<a href="deletecompany.jsp?id=<%=rs.getString(4)%>">Delete</a></div></td>
		 </tr>
		 <%
}
		 %>
  </table>
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
