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
              <li class="active"><a href="studenthome.jsp"><span>Home Page</span></a></li>
         <li><a href="studentprofile.jsp"><span>Profile</span></a></li>
          <li><a href="stviewstartup.jsp"><span>StartUp 	</span></a></li>
          
          <li><a href="notificationdetails.jsp"><span>Notification Details </span></a></li>
		  <li><a href="stsearch.jsp"><span>Search</span></a></li>
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
<form id="formsearch" name="formsearch" method="post" action="stsearchaction.jsp">
            <span>
            <input name="startup" class="editbox_search" id="editbox_search" maxlength="80" placeholder="Search StartUp" type="text" />
            </span>
            <input name="button_search" src="images/search.png" class="button_search" type="image" />
          </form>
		  <br><br><br><br><br>
		<%
		String name=request.getParameter("startup");
		Statement st1 = connection.createStatement();
				ResultSet rs = st1.executeQuery("select * from company where (status='yes') and( name like '"+name+"' or field='"+name+"' or addr='"+name+"')");
		%>
         <table border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#162D3D">
  	   <tr>
   		 <td width="93"><div align="center" class="style8">Company Name </div></td>
    	 <td width="71"><div align="center" class="style8">Email Id </div></td>
         <td width="72"><div align="center" class="style8">Mobile</div></td>
		 <td width="72"><div align="center" class="style8">DOE</div></td>
         <td width="52"><div align="center" class="style8">Field</div></td>
		 <td width="52"><div align="center" class="style8">Location</div></td>
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
		 <td width="52"><div align="center" class="style8"><%=rs.getString(10)%></div></td>
		 <td width="52"><div align="center" class="style8"><%=rs.getString(6)%></div></td>
		 <td width="52"><div align="center" class="style8"><a href="applyresume.jsp?id=<%=rs.getString(2)%>">Apply</a></div></td>
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
         
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
             <li><a href="studenthome.jsp">Home Page</a></li>
         <li><a href="studentprofile.jsp">Profile</a></li>
          <li><a href="stviewstartup.jsp">StartUp 	</a></li>
          
          <li><a href="notificationdetails.jsp">Notification Details </a></li>
		  <li><a href="stsearch.jsp">Search</a></li>
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
