<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ attribute name="variant" required="true"
	type="de.hybris.platform.commercefacades.product.data.VariantMatrixElementData"%>

<c:if test="${variant.variantOption.stock.stockLevel gt 0}">
	<c:set var="variantStockLevel">${variant.variantOption.stock.stockLevel}&nbsp;</c:set>
</c:if>
<c:if
	test="${variant.variantOption.stock.stockThreshold lt variant.variantOption.stock.stockLevel}">
	<c:set var="variantStockLevel">${variant.variantOption.stock.stockThreshold}+&nbsp;</c:set>
</c:if>

<span class="in-stock">${variantStockLevel}</span>