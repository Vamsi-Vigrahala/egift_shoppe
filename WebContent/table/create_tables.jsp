<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
    Connection con=ConnectionProvider.getCon();
    Statement st = con.createStatement();
    String q1 = "create table user5(fname varchar(100),lname varchar(100),gender varchar(100),email varchar(100)primary key,userId int,mobileNumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),category varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
   // System.out.print(q1);
   // st.execute(q1);
    //System.out.print("Table created");
String q2="create table product3(id int,name varchar(500),category varchar(200),price int,active varchar(10))";
String q3="create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))";
String q4="create table feedback(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(10000),PRIMARY KEY(id))";
String q5="create table stock(id int,name varchar(500),category varchar(200),price int,active varchar(10))";
String q6="create table help(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(10000),PRIMARY KEY(id))";
System.out.print(q1);
System.out.print(q2);
System.out.print(q3);
System.out.print(q4);
System.out.println(q5);
System.out.println(q6);
//st.execute(q1);
//st.execute(q2);
//st.execute(q3);
//st.execute(q4);
//st.execute(q5);
st.execute(q6);
System.out.print("Table created");
con.close();
}
catch(Exception e)
{
    System.out.print(e);
    
}

 

%>