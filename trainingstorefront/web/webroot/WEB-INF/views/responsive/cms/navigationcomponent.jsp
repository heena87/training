<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

<c:set value="${component.styleClass}" var="navigationClass" />

<c:if test="${component.visible}">
	<li>
		<div class="container ${navigationClass}" style="display: none;"
			data-title="${component.navigationNode.title}">
			<nav style="display: none;">
				<ul>
					<c:if test="${not empty component.navigationNode.title }">
						<div>
							<c:out value="${component.navigationNode.title}" />
						</div>
					</c:if>
					<c:forEach items="${component.navigationNode.children}"
						var="topLevelChild">
						<div>
							<c:forEach items="${topLevelChild.entries}" var="entry">
								<div>
									<cms:component component="${entry.item}"
										evaluateRestriction="true" />
								</div>
							</c:forEach>
						</div>
					</c:forEach>
				</ul>
			</nav>
		</div>
	</li>

</c:if>