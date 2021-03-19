<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String userId=request.getParameter("userId");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String category=request.getParameter("category");
String address="";
String city="";
String state="";
String country="";

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into user5 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, gender);
ps.setString(4, email);
ps.setString(5, userId);
ps.setString(6, mobileNumber);
ps.setString(7, securityQuestion);
ps.setString(8, answer);
ps.setString(9, password);
ps.setString(10, category);
ps.setString(11, address);
ps.setString(12, city);
ps.setString(13, state);
ps.setString(14, country);
ps.executeUpdate();
response.sendRedirect("signup.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	}
%>