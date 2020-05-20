<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register as a Customer</title>
<link rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
</head>
<body>
	<jsp:directive.include file="header.jsp" />

	<div align="center">
		<h2 class="pageheading">Edit My Profile</h2>
	</div>

	<div align="center">
		<form action="update_profile" method="post" id="customerForm">

			<table class="form">
				<tr>
					<td align="right">E-mail:</td>
					<td align="left"><b>${loggedCustomer.email}</b> (Cannot be
						changed)</td>
				</tr>
				<tr>
					<td align="right">First Name:</td>
					<td align="left"><input id="firstname" type="text"
						name="firstname" size="45" value="${loggedCustomer.firstname}" /></td>
				</tr>
				<tr>
					<td align="right">Last Name:</td>
					<td align="left"><input id="lastname" type="text"
						name="lastname" size="45" value="${loggedCustomer.lastname}" /></td>
				</tr>
				<tr>
					<td align="right">Phone Number:</td>
					<td align="left"><input id="phone" type="text" name="phone"
						size="45" value="${loggedCustomer.phone}" /></td>
				</tr>
				<tr>
					<td align="right">Address Line 1:</td>
					<td align="left"><input id="address1" type="text"
						name="address1" size="45" value="${loggedCustomer.addressLine1}" /></td>
				</tr>
				<tr>
					<td align="right">Address Line 2:</td>
					<td align="left"><input id="address2" type="text"
						name="address2" size="45" value="${loggedCustomer.addressLine2}" /></td>
				</tr>
				<tr>
					<td align="right">City:</td>
					<td align="left"><input id="city" type="text" name="city"
						size="45" value="${loggedCustomer.city}" /></td>
				</tr>
				<tr>
					<td align="right">State:</td>
					<td align="left"><input id="state" type="text" name="state"
						size="45" value="${loggedCustomer.state}" /></td>
				</tr>
				<tr>
					<td align="right">Zip Code:</td>
					<td align="left"><input id="zipcode" type="text"
						name="zipcode" size="45" value="${loggedCustomer.zipcode}" /></td>
				</tr>
				<tr>
					<td align="right">Country:</td>
					<td align="left"><select name="country" id="country">
							<c:forEach items="${mapCountries}" var="country">
								<option value="${country.value}"
									<c:if test='${loggedCustomer.country eq country.value}'>selected='selected'</c:if>>${country.key}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><i>(leave password fields
							blank if you don't want to change password)</i></td>
				</tr>
				<tr>
					<td align="right">Password:</td>
					<td align="left"><input id="password" type="password"
						name="password" size="45" /></td>
				</tr>
				<tr>
					<td align="right">Confirm Password:</td>
					<td align="left"><input id="confirmPassword" type="password"
						name="confirmPassword" size="45" /></td>
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
	$(document)
			.ready(
					function() {
						$("#customerForm")
								.validate(
										{
											rules : {
												email : {
													required : true,
													email : true
												},
												fullname : "required",
												confirmPassword : {
													equalTo : "#password"
												},
												phone : "required",
												address : "required",
												city : "required",
												zipcode : "required",
												country : "required",
											},

											messages : {
												email : {
													required : "Please enter e-mail address",
													email : "Please enter a valid e-mail address"
												},
												fullname : "Please enter full name",
												confirmPassword : {
													equalTo : "Confirmed password does not match entered password"
												},
												phone : "Please enter phone number",
												address : "Please enter address",
												city : "Please enter city",
												zipcode : "Please enter zip code",
												country : "Please enter country"
											}
										});
						$("#buttonCancel").click(function() {
							history.go(-1);
						});

					});
</script>
</html>