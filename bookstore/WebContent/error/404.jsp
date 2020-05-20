<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page not found error</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<div align="center">
		<div>
			<img class="company_logo" alt="no image" src="${pageContext.request.contextPath}/images/BookstoreLogo.png" />
		</div>
		<div>
			<h2>Sorry, the requested page could not be found</h2>
		</div>
		<div>
			<a href="javascript:history.go(-1)">Go Back</a>
		</div>
		
	</div>	
</body>
