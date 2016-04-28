<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Edit user page</title>
</head>
<body>
	<h1>Edit user page</h1>
	<p>Here you can edit the existing user.</p>
	<p>${message}</p>
	<form:form method="POST" commandName="user"
		action="${pageContext.request.contextPath}/user/edit/${user.userID}.html">
		<table>
			<tbody>
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:input path="gender" /></td>
				</tr>
				<tr>
					<td>Address Line 01:</td>
					<td><form:input path="addressLine1" /></td>
				</tr>
				<tr>
					<td>Address Line 02:</td>
					<td><form:input path="addressLine2" /></td>
				</tr>
				<tr>
					<td>City:</td>
					<td><form:input path="city" /></td>
				</tr>
				<tr>
					<td>Mobile:</td>
					<td><form:input path="mobile" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Department:</td>
					<td><form:input path="department" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Edit" /></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</form:form>

	<p>
		<a href="${pageContext.request.contextPath}/index.html">Home page</a>
	</p>
</body>
</html>