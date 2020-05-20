<table class="form">
	<tr>
		<td align="right">E-mail:</td>
		<td align="left"><input id="email" type="text" name="email"
			size="45" value="${customer.email}" /></td>
	</tr>
	<tr>
		<td align="right">First Name:</td>
		<td align="left"><input id="firstname" type="text"
			name="firstname" size="45" value="${customer.firstname}" /></td>
	</tr>
	<tr>
		<td align="right">Last Name:</td>
		<td align="left"><input id="lastname" type="text" name="lastname"
			size="45" value="${customer.lastname}" /></td>
	</tr>
	<tr>
		<td align="right">Password:</td>
		<td align="left"><input id="password" type="password"
			name="password" size="45" value="${customer.password}" /></td>
	</tr>
	<tr>
		<td align="right">Confirm Password:</td>
		<td align="left"><input id="confirmPassword" type="password"
			name="confirmPassword" size="45" value="${customer.password}" /></td>
	</tr>
	<tr>
		<td align="right">Phone Number:</td>
		<td align="left"><input id="phone" type="text" name="phone"
			size="45" value="${customer.phone}" /></td>
	</tr>
	<tr>
		<td align="right">Address Line 1:</td>
		<td align="left"><input id="address1" type="text" name="address1"
			size="45" value="${customer.addressLine1}" /></td>
	</tr>
	<tr>
		<td align="right">Address Line 2:</td>
		<td align="left"><input id="address2" type="text" name="address2"
			size="45" value="${customer.addressLine2}" /></td>
	</tr>
	<tr>
		<td align="right">City:</td>
		<td align="left"><input id="city" type="text" name="city"
			size="45" value="${customer.city}" /></td>
	</tr>
	<tr>
		<td align="right">State:</td>
		<td align="left"><input id="state" type="text" name="state"
			size="45" value="${customer.state}" /></td>
	</tr>
	<tr>
		<td align="right">Zip Code:</td>
		<td align="left"><input id="zipcode" type="text" name="zipcode"
			size="45" value="${customer.zipcode}" /></td>
	</tr>
	<tr>
		<td align="right">Country:</td>
		<td align="left">
			<select name="country" id="country">
					<c:forEach items="${mapCountries}" var="country">
						<option value="${country.value}"
							<c:if test='${customer.country eq country.value}'>selected='selected'</c:if>>${country.key}</option>
					</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<button type="submit">Save</button>&nbsp;&nbsp;&nbsp;
			<input type="button" value="Cancel" onclick="history.go(-1);" />
		</td>
	</tr>
</table>