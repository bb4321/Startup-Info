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
	String field=m.getParameter("field");     
   	String name=(String)session.getAttribute("user");
	
    try{
			
		Statement st1 = connection.createStatement();
				ResultSet rs = st1.executeQuery("select * from student where email='"+name+"'");
				
		Statement st2 = connection.createStatement();
				ResultSet rs2 = st2.executeQuery("select * from notification where cname='"+cname+"' and field='"+field+"'");
				PreparedStatement ps = connection.prepareStatement("insert into apply(cname,jobdes,field,name,email,phone,aresume,status) values(?,?,?,?,?,?,?,?)");
		
			System.out.println("select * from notification where cname='"+cname+"' and field='"+field+"'");
			System.out.println("select * from student where email='"+name+"'");
			String utype="";
			if(rs.next()){
				
				if(rs2.next()){
				ps.setString(1,cname);
			System.out.println("login session   d "+cname);
				ps.setString(2,rs2.getString(3));
				System.out.println("login session   d "+rs2.getString(3));
				ps.setString(3,rs2.getString(4));
				System.out.println("login session   f "+rs2.getString(4));
				ps.setString(4,rs.getString(2));
				System.out.println("login session   e "+rs.getString(2));
				ps.setString(5,name);
				System.out.println("login session   d "+name);
				ps.setString(6,rs.getString(5));
				System.out.println("login session   d "+rs.getString(5));
				ps.setString(7,fname);
				System.out.println("login session   fd "+fname);
				ps.setString(8,"not");
				System.out.println("insert into apply(cname,jobdes,field,name,email,phone,aresume,status) values(?,?,?,?,?,?,?,?)");
				ps.executeUpdate();
				System.out.println("login session   d "+name);
				response.sendRedirect("notificationdetails.jsp?msg=null");
				}
			}
			else
			{
			response.sendRedirect("notificationdetails.jsp?msg=failed");
			}
		
	}
	catch(Exception e)
	{
		out.print(e.getMessage());
		e.printStackTrace();
	}
%>