<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books in ${category.name} - Online Books Store</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<jsp:directive.include file="header.jsp" />
	<br />
	<div align="center">
		<div>
			<h2 class="pageheading">${category.name}</h2>
			<c:forEach items="${listBooks}" var="book">
				<jsp:directive.include file="book_group.jsp" />
			</c:forEach>
		</div>
	</div>
	<br />
	<jsp:directive.include file="footer.jsp" />

</body>
</html>

