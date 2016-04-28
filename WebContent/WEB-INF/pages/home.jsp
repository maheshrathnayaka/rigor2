<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="../fragments/header.jsp" />
<body>
	<p>
		${message}<br /> <a
			href="${pageContext.request.contextPath}/team/add.html">Add new
			team</a><br /> <a
			href="${pageContext.request.contextPath}/team/list.html">Team
			list</a><br /> <a
			href="${pageContext.request.contextPath}/user/add.html">Add new
			user</a><br /> <a
			href="${pageContext.request.contextPath}/user/list.html">User
			list</a><br />
	</p>
	<jsp:include page="../fragments/footer.jsp" />

</body>
</html>