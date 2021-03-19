<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.* "%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/updateStock-style.css">
<title>Update Stock</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Stocks are updated Successfully!</h3>
<%} %>

<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Stock is unAvailable so cannot update </h3>
<%} %>
<%
int id=1;
try
{
Connection con = ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from stock");
while(rs.next())
{
id=rs.getInt(1);
id=id+1;
}
}
catch(Exception e)
{}
%>
<form action="updateStockAction.jsp" method="post">
<h3 style="color: yellow;">Stock ID:<%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
<h3>Enter Name</h3>
<input class="input-style" type="text" name="name" placeholder="Enter Name" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
<input class="input-style" type="text" name="category" placeholder="Enter Category" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
<input class="input-style" type="number" name="price" placeholder="Enter Price" required>
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
<select class="input-style" name="active">
<option value="Available">Stock is Available</option>
<option value="unAvailable">Stock is unAvailable</option>
</select>
<hr>
</div>
<button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
<br><br><br>
</form>

</body>
</html>