<%@page import="mvc.CheckForConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% System.out.println("111111111111111111111111111111111111");
  String firstName = request.getParameter("firstName");
  String lastName = request.getParameter("lastName");
  String sex = request.getParameter("sex");
  String phone = request.getParameter("phone");
  String email = request.getParameter("email");
  
  
  System.out.println("22222222222222222222222222222222");
  CheckForConnection mongoConnect= new CheckForConnection();
 // MongoClient mongo=null;
System.out.println("22222222222222222222222222222222");
  if(!mongoConnect.isConnected())
  {
	  System.out.println("3333333333333333333333333333333333");
	  mongoConnect.makeConnection();
  }
  //addToDatabase(firstName, lastName,sex,phone,email);

%>



</body>
</html>