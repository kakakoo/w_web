<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no user-scalable=no">
	<link href="${pageContext.request.contextPath}/resources/images/favicon.png" rel="icon" />
	<title>싸고 편한 환전, 웨이즈(WEYS) - No. 1 모바일 환전 앱</title>
	<meta name="author" content="weys.exchange">
	<meta name="naver-site-verification" content="40f1e1caf022182cc0f5722e1bc427a4c51383b3"/>
	<meta name="google-site-verification" content="ITqYTGv1IF0YVKwFJ91BOYiu5p_ArIdLkNT3_-6e4jg" />
	<meta name="description" content="웨이즈로 환전하세요. 정부 등록 1호 환전 서비스로 저렴한 수수료, 빠르고 간편한 환전 절차, 편리한 수령 방법을 제공합니다. 인천공항 T1/T2, 김포공항역, 홍대입구역 픽업 가능!" />
	<meta property="fb:app_id" content="827947520730465" />
	<meta property="og:site_name" content="웨이즈" />
	<meta property="og:locale" content="ko_KR" />
	<meta property="og:url" content="https://weys.exchange/" />
	<meta property="og:title" content="환전 예약 후 공항에서 픽업하세요!" />
	<meta property="og:description" content="10개국 통화, 인천공항 T1/T2, 김포공항역, 홍대입구역 픽업 가능! 신규가입시 주요통화 100% 우대 쿠폰 지급" />
	<meta property="og:type" content="website" />
	<meta property="og:image" content="https://weys.exchange/weys/og.jpg" />
	<jsp:include page="../common/common.jsp"></jsp:include>
</head>
<body>
	<div id="preloader">
	  <img src="${pageContext.request.contextPath}/resources/images/preload.gif">
	</div>

	<div id="main-wrapper"> 
		<jsp:include page="../common/header.jsp"></jsp:include>
	
    <!-- Page Header
	============================================= -->
	<section class="page-header page-header-text-light bg-dark-3 py-5">
	  <div class="container">
		<div class="row text-center">
		  <div class="col-12">
			<h4 class="text-white">이벤트</h4>
		  </div>
		</div>
	  </div>
	</section>
	<!-- Page Header End --> 
<!-- Content
  ============================================= -->
  <div id="content">
    
    <section class="section pt-5 pb-0">
      <div class="container">
        <div class="row">
        	
        	<c:if test="${frdEvent == 'Y' }">
        	
	       	<div class="col-md-6 mb-5" onclick="goFrdEvent()">
	            <div class="bg-white shadow-sm rounded p-4 text-center">
	              <div class="featured-box style-4">
	                <div style="width: 100%; height: auto; padding: 0px 0px 0px 0px; border-radius: 5px; text-align:center;">
						<img src="${pageContext.request.contextPath}/resources/images/invite_list.png" style="width: 100%;">
						<div style="padding-left: 0px; padding-top:10px; font-size:16px; font-weight:600; text-align:left;">친구 초대하면 100% 우대</div>
						<div style="padding-left: 0px; padding-right:20px; padding-top:0px; font-size:12px; color: #aaaeb2; text-align:left;">19.11.01 ~ 19.12.31</div>
					</div>
	              </div>
	            </div>
	          </div>
        	</c:if>
	          
	        <c:forEach var="items" items="${eventList }">
	        	<div class="col-md-6 mb-5" onclick="goDetail('${items.eventId }')">
		            <div class="bg-white shadow-sm rounded p-4 text-center">
		              <div class="featured-box style-4">
		                <div style="width: 100%; height: auto; padding: 0px 0px 0px 0px; border-radius: 5px; text-align:center;">
							<img src="${pageContext.request.contextPath}/imgView/${items.eventBnr }" style="width: 100%;<c:if test="${items.eventSt == 'D'}">filter: gray; -webkit-filter: grayscale(1); filter: grayscale(1); opacity: 0.2;</c:if>">
							<div style="padding-left: 0px; padding-top:10px; font-size:16px; font-weight:600; text-align:left;">${items.eventTitle } <c:if test="${items.eventSt == 'D'}">(종료)</c:if></div>
							<div style="padding-left: 0px; padding-right:20px; padding-top:0px; font-size:12px; color: #aaaeb2; text-align:left;">${items.startDt } ~ ${items.endDt }</div>
						</div>
		              </div>
		            </div>
		          </div>
	        </c:forEach>
          
        </div>
            <!-- Pagination
            ============================================= -->
			<jsp:include page="../common/paging.jsp" flush="true">
			    <jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
			    <jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
			    <jsp:param name="startPageNo" value="${paging.startPageNo}" />
			    <jsp:param name="pageNo" value="${paging.pageNo}" />
			    <jsp:param name="endPageNo" value="${paging.endPageNo}" />
			    <jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
			    <jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
			</jsp:include>
            <!-- Paginations end --> 
		
      </div>
    </section>
   </div>
  
  <!-- Content end --> 
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	<form name="formBody" action="${pageContext.request.contextPath}/event" method="post">
		<input type="hidden" name="pageNo" id="pageNo" value="${paging.pageNo}">
	</form>
	<div class="wrap-loading display-none">
		<div><img width="42px" src="${pageContext.request.contextPath}/resources/images/loading.gif" /></div>
	</div>
</body>
<jsp:include page="../common/common_js.jsp"></jsp:include>
<%-- <script src="${pageContext.request.contextPath}/resources/work/login.js"></script>  --%>
<script type="text/javascript">

function goPage(pageNo){
	var FORM_BODY = $('form[name=formBody]');
	$('#pageNo').val(pageNo);
	FORM_BODY.attr('action', '${pageContext.request.contextPath}/event');
	FORM_BODY.submit();
}

function goFrdEvent(){
	location.href='${pageContext.request.contextPath}/event/frd';
}

function goDetail(eventId){
	location.href='${pageContext.request.contextPath}/event/' + eventId;
}

</script>
<jsp:include page="../common/naver_js.jsp"></jsp:include>
</html>
