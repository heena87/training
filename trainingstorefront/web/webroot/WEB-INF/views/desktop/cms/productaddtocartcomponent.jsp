<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/desktop/product"%>

<product:productAddToCartPanel product="${product}"
	allowAddToCart="${empty showAddToCart ? true : showAddToCart}"
	isMain="true" />