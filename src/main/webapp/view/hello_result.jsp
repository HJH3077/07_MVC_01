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
	<h1>hello_result.jsp 페이지</h1>
	<h2>
		<li>이름 : ${name}</li>
		<li>나이 : ${age}</li>
		<c:choose>
			<c:when test="${gender}">
				<li>성별 : 남자</li>
			</c:when>
			<c:otherwise>
				<li>성별 : 여자</li>
			</c:otherwise>
		</c:choose>
	</h2>
</body>
</html>