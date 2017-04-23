<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String name=request.getParameter("userid");      
   	String pass=request.getParameter("pass");
    try{
			
			
			String utype="";
			if(name.equalsIgnoreCase("admin")&&pass.equalsIgnoreCase("admin")){
				
				
				response.sendRedirect("adminhome.jsp?msg=null");
				
			}
			else
			{
			response.sendRedirect("admin.html");
			}
		
	}
	catch(Exception e)
	{
		out.print(e.getMessage());
		e.printStackTrace();
	}
%>