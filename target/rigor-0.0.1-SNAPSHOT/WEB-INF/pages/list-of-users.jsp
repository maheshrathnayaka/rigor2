<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>List of users</title>
</head>
<body>
	<h1>List of users</h1>
	<p>Here you can see the list of the users, edit them, remove or
		update.</p>
	<table border="1px" cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<!-- 				<th width="10%">Id</th> -->
				<th width="15%">Name</th>
				<th width="10%">Gender</th>
				<th width="30%">Address</th>
				<th width="10%">Mobile</th>
				<th width="10%">Email</th>
				<th width="5%">Department</th>
				<th width="10%">Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<%-- 					<td>${user.userID}</td> --%>
					<td>${user.firstName} ${user.lastName}</td>
					<td>${user.gender}</td>
					<td>${user.addressLine1}, ${user.addressLine2}, ${user.city}</td>
					<td>${user.mobile}</td>
					<td>${user.email}</td>
					<td>${user.department}</td>
					<td><a
						href="${pageContext.request.contextPath}/user/edit/${user.userID}.html">Edit</a><br />
						<a
						href="${pageContext.request.contextPath}/user/delete/${user.userID}.html">Delete</a><br />
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<p>
		<a href="${pageContext.request.contextPath}/index.html">Home page</a>
	</p>

</body>
</html>