<ul class="book">
	<li class="book_image">
		<a href="view_book?id=${book.bookId}">
			<img class="book-small" src="data:image/jpg;base64,${book.base64Image}" />
		</a>
	</li>
	<li class="book_title">
		<a href="view_book?id=${book.bookId}">${book.title}</a>
	</li>
	<li class="book_rating">
		<jsp:directive.include file="book_rating.jsp" />
	</li>
	<li class="book_author">
		<b>${book.author}</b>
	</li>
	<li  class="book_price">$${book.price}</li>
</ul>