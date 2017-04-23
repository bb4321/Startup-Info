<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String name=(String)session.getAttribute("cuser");      
   	String pass=request.getParameter("pass");
    try{
			
		Statement st1 = connection.createStatement();
				ResultSet rs = st1.executeQuery("select * from company where email='"+name+"'");
		PreparedStatement ps=connection.prepareStatement("insert into notification(cname,field,jobdes,email,location,lastdate) values(?,?,?,?,?,?)");
			
			String cname="";
			if(rs.next()){
				cname=rs.getString(2);
				ps.setString(1,cname);
				ps.setString(2,request.getParameter("field"));
				ps.setString(3,request.getParameter("job"));
				ps.setString(4,request.getParameter("email"));
				ps.setString(5,request.getParameter("location"));
				ps.setString(6,request.getParameter("ldate"));
				int res=ps.executeUpdate();
				if(res!=0)
					response.sendRedirect("addnotification.jsp?msg=null");
				else 
					response.sendRedirect("addnotification.jsp?msg=failed");
				
			}
			else
			{
			response.sendRedirect("addnotification.jsp?msg=failed");
			}
		
	}
	catch(Exception e)
	{
		out.print(e.getMessage	());
		e.printStackTrace();
	}
%>