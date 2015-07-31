<%@page import="mvc.MongoDatabaseInfo"%>
<%@page import="java.awt.Window"%>
<%@page import="mvc.CheckForConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subscription Form</title>
</head>
<body>
	<%@ page import="com.mongodb.MongoClient"%>
	<%
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		CheckForConnection mongoConnect = new CheckForConnection();
		MongoDatabaseInfo infoObject = new MongoDatabaseInfo();
		MongoClient mongo = null;

		if (!mongoConnect.isConnected()) {
			mongo = mongoConnect.makeConnection();

		} else {
			mongo = mongoConnect.getClient();
		}
		if (mongo == null) {
	%>
	<jsp:forward page="index.jsp">
		<jsp:param name="message" value="Issue with Server. Please retry." />
	</jsp:forward>
	<%
		} else {
			boolean isSuccess = infoObject.addToDatabase(firstName, lastName, gender, phone, email, mongoConnect,
					mongo);
			if (isSuccess) {
	%>
			<jsp:forward page="index.jsp">
				<jsp:param name="message" value="Subscription Successful!" />
			</jsp:forward>
	<%
		}
			else {
	%>
			<jsp:forward page="index.jsp">
				<jsp:param name="message" value="Issue with Server. Please retry." />
			</jsp:forward>
	<%
			}
		}
	%>
</body>
</html>