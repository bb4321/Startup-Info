<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String name=request.getParameter("id");      
   
    
		Statement st1 = connection.createStatement();
				int rs=st1.executeUpdate("delete from employee where email='"+name+"'");
				if(rs!=0){
					response.sendRedirect("employeedetails.jsp?msg=null");
					
				}
				else{
					response.sendRedirect("employeedetails.jsp?msg=failed");
				}
				
		
%>