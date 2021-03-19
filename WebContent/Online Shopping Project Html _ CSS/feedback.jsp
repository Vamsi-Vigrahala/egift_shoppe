<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Feedback</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Feedback <i class='fas fa-comment-alt'></i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>
<form action="feedbackAction.jsp" method="post">
<input class="input-style" name="subject" type="text" placeholder="subject" required>
<hr>
<textarea class="input-style" name="body" placeholder="Enter your Message" required></textarea>
<hr>
<center><p>Rate this Product Now.</p></center>
<center><input type="radio" name="rating" value="1" class="star">
<input type="radio" name="rating" value="2" class="star">
<input type="radio" name="rating" value="3" class="star">
<input type="radio" name="rating" value="4" class="star">
<input type="radio" name="rating" value="5" class="star"></center>
<button class="button" type="submit">Send <i class="far fa-arrow-alt-circle-right"></i></button>
</form>
<br><br><br>
</body>
</html>