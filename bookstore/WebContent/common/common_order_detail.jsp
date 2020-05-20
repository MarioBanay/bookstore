<div align="center">
	<h2>Order Overview:</h2>
	<table>
		<tr>
			<td><b>Ordered By:</b></td>
			<td>${order.customer.fullname}</td>
		</tr>
		<tr>
			<td><b>Order Status:</b>
			<td>${order.status}</td>
		</tr>
		<tr>
			<td><b>Order Date:</b>
			<td>${order.orderDate}</td>
		</tr>
		<tr>
			<td><b>Payment Method:</b>
			<td>${order.paymentMethod}</td>
		</tr>
		<tr>
			<td><b>Book Copies:</b>
			<td>${order.bookCopies}</td>
		</tr>
		<tr>
			<td><b>Total Amount:</b></td>
			<td><fmt:formatNumber value="${order.total}" type="currency" /></td>
		</tr>
	</table>
	<h2>Recipient Information</h2>
	<table>
		<tr>
			<td><b>First Name:</b>
			<td>${order.firstname}</td>
		</tr>
		<tr>
			<td><b>Last Name:</b>
			<td>${order.lastname}</td>
		</tr>

		<tr>
			<td><b>Phone:</b>
			<td>${order.phone}</td>
		</tr>

		<tr>
			<td><b>Address Line 1:</b>
			<td>${order.addressLine1}</td>
		</tr>
		<tr>
			<td><b>Address Line 2:</b>
			<td>${order.addressLine2}</td>
		</tr>
		<tr>
			<td><b>City:</b>
			<td>${order.city}</td>
		</tr>
		<tr>
			<td><b>State:</b>
			<td>${order.state}</td>
		</tr>
		<tr>
			<td><b>Country:</b>
			<td>${order.countryName}</td>
		</tr>
		<tr>
			<td><b>Zip Code:</b>
			<td>${order.zipcode}</td>
		</tr>

	</table>
</div>



	<div align="center">
		<h2>Ordered Books:</h2>
		<table border="1">
			<tr>
				<th>Index</th>
				<th>Book Title</th>
				<th>Author</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Subtotal</th>
			</tr>
			<c:forEach items="${order.orderDetails}" var="orderDetail"
				varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td><img
						src="data:image/jpg;base64,${orderDetail.book.base64Image}"
						width="48" height="64"> ${orderDetail.book.title}</td>
					<td>${orderDetail.book.author}</td>
					<td><fmt:formatNumber value="${orderDetail.book.price}"
							type="currency" /></td>
					<td>${orderDetail.quantity}</td>
					<td><fmt:formatNumber value="${orderDetail.subtotal}"
							type="currency" /></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6" align="right">
					<p>Subtotal: <fmt:formatNumber value="${order.subtotal}" type="currency" /></p>
					<p>Tax: <fmt:formatNumber value="${order.tax}" type="currency" /></p>
					<p>Shipping Fee: <fmt:formatNumber value="${order.shippingFee}" type="currency" /></p>
					<p>TOTAL: <fmt:formatNumber value="${order.total}" type="currency" /></p>
					
				</td>
			</tr>
		</table>
	</div>