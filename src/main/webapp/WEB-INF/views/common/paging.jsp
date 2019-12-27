<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${param.endPageNo > 1 }">
	<ul class="pagination justify-content-center mt-4 mb-0 pb-5">
		<li class="page-item"><a class="page-link" href="javascript:goPage(${param.prevPageNo}, 0)" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>

			<c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">
				<c:choose>
					<c:when test="${i eq param.pageNo}">
						<li class="page-item active"><a class="page-link" href="javascript:goPage(${i}, 0)">${i}<span class="sr-only">(current)</span></a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="javascript:goPage(${i}, 0)">${i}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
		<li class="page-item"><a class="page-link" href="javascript:goPage(${param.nextPageNo}, 0)"><i class="fas fa-angle-right"></i></a></li>
	</ul>
</c:if>