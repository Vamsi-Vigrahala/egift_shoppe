<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String subject=request.getParameter("subject");
String body=request.getParameter("body");
try
{
Connection con=ConnectionProvider.getCon();
PreparedStatement ps=con.prepareStatement("insert into help(email,subject,body) values(?,?,?)");
ps.setString(1,email);
ps.setString(2,subject);
ps.setString(3,body);
ps.executeUpdate();
response.sendRedirect("helpDesk.jsp?msg=valid");
}
catch(Exception e)
{
System.out.println(e);
response.sendRedirect("helpDesk.jsp?msg=invalid");
}
%>