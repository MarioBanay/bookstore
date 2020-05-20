<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.validate.min.js"></script>
</head>
<body>
	<div align="center">


		<c:if test="${message != null}">
			<div align="center">
				<h4 class="message">${message}</h4>
			</div>
		</c:if>

		<div align="center">
			<a href="${pageContext.request.contextPath}/"> <img
				id="home_button" src="../images/home.png" />
			</a>
		</div>

		<div>
			<h2 class="pageheading">Admin Login</h2>
		</div>
		<form id="loginForm" action="login" method="post">

			<table class="normal">
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email" id="email"
						value="admin@mail.com" size="20"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" value="admin"
						id="password" size="20"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit">Login</button>
					</td>

				</tr>
			</table>
		</form>
		<jsp:directive.include file="footer.jsp" />
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$("#loginForm").validate({
			rules : {
				email : {
					required : true,
					email : true
				},
				password : "required"
			},

			messages : {
				email : {
					required : "Please enter email",
					email : "Please enter an valid email address"
				},
				password : "Please enter password"
			}
		});
		$("#buttonCancel").click(function() {
			history.go(-1);
		});

	});
</script>
</html>