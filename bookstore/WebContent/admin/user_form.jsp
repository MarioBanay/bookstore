<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create new User</title>
<link rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.validate.min.js"></script>
</head>
<body>
	<jsp:directive.include file="header.jsp" />

	<div align="center">
		<h2 class="pageheading">
		<c:if test="${user != null}">
			Edit User
		</c:if>
		<c:if test="${user == null}">
			Create New User
		</c:if>
		</h2>
	</div>

	<div align="center">
		<c:if test="${user != null}">
		<form action="update_user" method="post" id="userForm">
			<input type="hidden" name="userId" value="${user.userId}">
		</c:if>
		<c:if test="${user == null}">
		<form action="create_user" method="post" id="userForm">
		</c:if>
		
			<table class="form">
				<tr>
					<td align="right">Email:</td>
					<td align="left"><input id="email" type="text" name="email"
						size="20" value="${user.email}" /></td>
				</tr>
				<tr>
					<td align="right">Full Name:</td>
					<td align="left"><input id="fullname" type="text"
						name="fullname" size="20" value="${user.fullName}" /></td>
				</tr>
				<tr>
					<td align="right">Password:</td>
					<td align="left"><input id="password" type="password"
						name="password" size="20" value="${user.password}" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit">Save</button>&nbsp;&nbsp;&nbsp;
						<button id="buttonCancel">Cancel</button>
					</td>
				</tr>
			</table>
		</form>
	</div>

	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript">

	$(document).ready(function() {
		$("#userForm").validate({
			rules: {
				email: {
					required: true,
					email: true
				},
				fullname: "required",
				password: "required"
			},
			
			messages: {
				email: {
					required: "Please enter email",
					email: "Please enter an valid email address"
				},
				fullname: "Please enter full name",
				password: "Please enter password"
			}
		});
	$("#buttonCancel").click(function() {
		history.go(-1);
	});
		
	});
	

// 	function validateFormInput() {
// 		var fieldEmail = document.getElementById("email");
// 		var fieldFullname = document.getElementById("fullname");
// 		var fieldPassword = document.getElementById("password");

// 		if (fieldEmail.value.length == 0) {
// 			alert("Email is required");
// 			fieldEmail.focus();
// 			return false;
// 		}

// 		if (fieldFullname.value.length == 0) {
// 			alert("Full name is required");
// 			fieldFullname.focus();
// 			return false;
// 		}

// 		if (fieldPassword.value.length == 0) {
// 			alert("Password is required");
// 			fieldPassword.focus();
// 			return false;
// 		}
// 	}
</script>
</html>