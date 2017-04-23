<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String name=request.getParameter("id");      
   
    
		Statement st1 = connection.createStatement();
				int rs=st1.executeUpdate("update company set status='yes' where email='"+name+"'");
				if(rs!=0){
					response.sendRedirect("startupdetails.jsp?mssg=null");
					
				}
				else{
					response.sendRedirect("startupdetails.jsp?msg=failed");
				}
				
		
%>