<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="headermenu_nav">

	<li><a href="${pageContext.request.contextPath}/">Home</a></li>

	<c:if test="${loggedCustomer == null}">
		<li><a href="login">SignIn</a></li>
		<li><a href="register">Register</a></li>
		<li><a href="admin/login.jsp">Admin Login</a></li>
	</c:if>

	<c:if test="${loggedCustomer != null}">
		<li><a href="view_profile">My Profile</a></li>
		<li><a href="view_orders">My Orders</a></li>
		<li><a href="logout">Logout</a></li>
	</c:if>

	<li><a href="view_cart">Cart</a></li>


	<li class="headermenu_nav_search">
		<form action="search" method="get">
			<input id="input_search" type="text" name="keyword" size="50"
				placeholder="search books" />
			<button type="submit" hidden="true">search</button>
		</form>
	</li>
</ul>

<div align="center">
	<div>
		<img alt="no image" class="company_logo"
			src="images/BookstoreLogo.png">
	</div>
</div>

<h2 align="center" class="pageheading">Categories</h2>
<ul class="headermenu_nav_categories">
	<li><a href="${pageContext.request.contextPath}/"> <c:out
				value="All Books" />
	</a></li>
	<c:forEach var="category" items="${listCategory}" varStatus="status">
		<li><a href="view_category?id=${category.categoryId}"> <c:out
					value="${category.name}" />
		</a></li>
	</c:forEach>
</ul>