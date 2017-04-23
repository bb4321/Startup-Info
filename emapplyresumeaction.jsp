<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" import="java.util.*" %>  
<%  
MultipartRequest m = new MultipartRequest(request, "C:/files"); 

String fname=m.getFilesystemName("fname") ;

	
	
	
  
%>  
 
<%
   	String cname=m.getParameter("cname");      
   	String name=(String)session.getAttribute("user");
	
    try{
			
		Statement st1 = connection.createStatement();
				ResultSet rs = st1.executeQuery("select * from employee where email='"+name+"'");
				
		Statement st2 = connection.createStatement();
				ResultSet rs2 = st2.executeQuery("select * from company where name='"+cname+"'");
				PreparedStatement ps = connection.prepareStatement("insert into resume(cname,jobdes,name,email,phone,aresume,status) values(?,?,?,?,?,?,?)");
		
			
			String utype="";
			if(rs.next()){
				
				
				ps.setString(1,cname);
				ps.setString(2,"none");
				ps.setString(3,rs.getString(2));
				ps.setString(4,name);
				ps.setString(5,rs.getString(5));
				ps.setString(6,fname);
				ps.setString(7,"not");
				ps.executeUpdate();
				System.out.println("login session "+name);
				response.sendRedirect("emviewstartup.jsp?msg=null");
				
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