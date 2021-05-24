<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security_tag" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page of Peter Spring Security</title>
</head>
<body>
	<h2>Home Page</h2>
	<hr>
	<p>
		Welcome to the Peter's Spring Security home page
	</p>
	
	<hr>
	
	<!-- display user name and role -->
	<p>
		User: <security_tag:authentication property="principal.username"/>
		<br><br>
		Role(s): <security_tag:authentication property="principal.authorities"/>
	</p>
	
	<security_tag:authorize access="hasRole('MANAGER')">
		<hr>
		<!-- Add links to different pages have different access restrict -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">LeadingShip Meeting</a>
		</p>
	</security_tag:authorize>
	
	<security_tag:authorize access="hasRole('ADMIN')">
		<hr>
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		</p>
	</security_tag:authorize>
	<hr>
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
		method="POST">
		<input type="submit" value="Logout"/>
	</form:form>
	
</body>
</html>