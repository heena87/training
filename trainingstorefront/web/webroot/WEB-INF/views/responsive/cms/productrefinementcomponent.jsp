<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav"%>

<div id="product-facet"
	class="col-md-12 hidden-sm hidden-xs  product-facet js-product-facet">

	<nav:facetNavAppliedFilters pageData="${searchPageData}" />
	<nav:facetNavRefinements pageData="${searchPageData}" />

</div>
