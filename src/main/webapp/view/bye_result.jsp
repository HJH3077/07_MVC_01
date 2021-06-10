<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>bye_result.jsp 페이지</h1>
	<h2>
		<c:forEach var="k" items="${person}">
			<li>${k}</li>
		</c:forEach>
	</h2>
</body>
</html>