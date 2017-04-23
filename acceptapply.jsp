<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String name=request.getParameter("user");      
   
    
		Statement st1 = connection.createStatement();
				int rs=st1.executeUpdate("update apply set status='yes' where email='"+name+"'");
				if(rs!=0){
					response.sendRedirect("resumeview.jsp?msg=null");
					
				}
				else{
					response.sendRedirect("resumeview.jsp?msg=failed");
				}
				
		
%>