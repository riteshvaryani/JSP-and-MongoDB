<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subscription</title>
</head>
<body>
<h1>Subscribe to our Newsletter!</h1>

	<form action="UserDetails.jsp" method="get">
		<table>
			<tr>
				<td>First Name: <input type="text" name="firstName" required></td>
				<td>Last Name: <input type="text" name="lastName" required></td>
			</tr>
			<tr></tr>
			<tr>
				<td>Gender: <input type="radio" checked name="gender" value="male">Male
					<input type="radio" name="gender" value="female">Female
				</td>
			</tr>
			<tr></tr>
			<tr>
				<td>Phone Number: <input type="number" name="phone"></td>
			</tr>
			<tr></tr>
			<tr>
				<td>Email-ID: <input type="text" name="email" required></td>
			</tr>
			<tr></tr>
			<tr>
				<td><input type="submit" value="Subscribe!"></td>
			</tr>
		</table>
	</form>
	<% String name=request.getParameter("message");
	out.println(name);
	%>
	
</body>
</html>