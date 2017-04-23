<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String name=request.getParameter("userid");      
   	String pass=request.getParameter("pass");
    try{
			
		Statement st1 = connection.createStatement();
				ResultSet rs = st1.executeQuery("select * from employee where email='"+name+"' and pass='"+pass+"'");
		
			
			String utype="";
			if(rs.next()){
				
				session.setAttribute("user",name);
				System.out.println("login session "+name);
				response.sendRedirect("emviewstartup.jsp?msgg=null");
				
			}
			else
			{
			response.sendRedirect("emviewstartup.jsp?msg=failed");
			}
		
	}
	catch(Exception e)
	{
		out.print(e.getMessage());
		e.printStackTrace();
	}
%>