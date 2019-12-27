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
		<jsp:include page="../common/sub_profile.jsp"></jsp:include>
	
<!-- Content
  ============================================= -->
  <div id="content" class="py-4">
    <div class="container">
      <div class="row"> 
        
       <jsp:include page="./left_info.jsp"></jsp:include>
        
        
        <!-- Middle Panel
        ============================================= -->
        <div class="col-lg-9">
          
          <h2 class="font-weight-400 mb-3">쿠폰함</h2>
          
          <!-- Filter
          =================================== mb-1========== -->
          <div class="row">
            <div class="col-12">
              <form id="coupon-submit" method="post">
                <div class="form-group">
                  <div class="input-group"><input type="text" class="form-control" id="couponCode" value="" required placeholder="쿠폰번호를 입력하세요">
						<button class="btn btn-primary input-group-append" type="button" onclick="submitCoupon()" style="border-top-left-radius: 0; border-bottom-left-radius: 0; font-size: 14px;">등록</button></div>
                </div>
              </form>
            </div>
          </div>
          <!-- Filter End -->
          
          <!-- All Transactions
          ============================================= -->
          <div class="bg-light shadow-sm rounded py-4 mb-4">
            <h3 class="text-5 font-weight-400 d-flex align-items-center px-4 mb-3">모든 쿠폰</h3>
            <!-- Title
            =============================== -->
            <div class="transaction-title py-2 px-4">
              <div class="row">
                <div class="col col-sm-7">쿠폰명</div>
                <div class="col-auto col-sm-2 d-none d-sm-block text-center">상태</div>
                <div class="col text-right">유효기간</div>
              </div>
            </div>
            <!-- Title End -->
            
            <!-- Transaction List
            =============================== -->
            <div class="transaction-list">
            
            
	            <c:forEach var="items" items="${couponList }">
	              <div class="transaction-item px-4 py-3">
	                <div class="row align-items-center flex-row">
	                  <div class="col col-sm-7"> <span class="d-block text-3">${items.couponNm }</span> <span class="text-muted"><c:choose><c:when test="${items.couponTp eq 'P'}">${items.couponDesc } ${items.memberCost }% 수수료 우대</c:when><c:otherwise>보관료 ${items.memberCost }원 우대</c:otherwise></c:choose></span> </div>
	                  <div class="col-auto col-sm-2 d-none d-sm-block text-center text-1"> <div style="padding:5px; border-radius: 20px; <c:choose><c:when test="${items.useSt eq 'Y'}">background: #28a745;</c:when><c:otherwise>background: #b2b2b2;</c:otherwise></c:choose> margin: 0px 14px; color: #fff;">
	                  	<c:choose>
							<c:when test="${items.useSt eq 'Y'}">사용가능</c:when>
							<c:when test="${items.useSt eq 'D'}">사용완료</c:when>
							<c:otherwise>기간만료</c:otherwise>
						</c:choose>
					</div> </div>
	                  <div class="col text-right text-4"> <span class="text-2 text-uppercase">${items.dueDt }</span> </div>
	                </div>
	              </div>
	            </c:forEach>
 
            </div>
            <!-- Transaction List End -->
            
            <c:if test="${empty couponList }">
            	<div style="width: 100%; padding: 100px 0px; text-align: center; color:#c5cdd6;">쿠폰이 존재하지 않습니다.</div>
            </c:if>
            
            
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
          <!-- All Transactions End --> 
        </div>
        <!-- Middle End --> 
      </div>
    </div>
    
      <!-- modal start -->
          <div id="send_phone" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header" style="text-align: center; display: inline;">
                  <h6 class="modal-title font-weight-400" id="m_title">인증번호가 전송되었습니다.</h6>
                </div>
                <div class="modal-body p-4">
                  <form id="phone" method="post">
                    <div class="row">
                      <div class="col-12 text-center" style="margin-bottom: 30px;" id="m_desc">
                        휴대전화번호에 인증번호가 전송되었습니다.<br>인증번호를 입력해주세요.
                      </div>
                    </div>
                    <button class="btn btn-primary btn-block" type="button" data-dismiss="modal" aria-label="Close">확인</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <a href="#send_phone" id="md_trig" data-toggle="modal" style="display:none;"></a>
 <!-- modal end -->
    
  </div>
  <!-- Content end --> 
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	<form name="formBody" action="${pageContext.request.contextPath}/account/coupon" method="post">
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
	FORM_BODY.attr('action', '${pageContext.request.contextPath}/account/coupon');
	FORM_BODY.submit();
}

function submitCoupon(){
	var code = $('#couponCode').val();

	if (code == '') {
		$('#couponCode').addClass('error-form');
		$('#couponCode').attr('placeholder', '쿠폰번호를 입력해주세요');
		return;
	}
	
	var data = {};
	data["couponCode"] = code;
	
	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/submitCoupon",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				var msg = result.msg;
				$('#couponCode').val('');
				$('#couponCode').addClass('error-form');
				$('#couponCode').attr('placeholder', msg);
			} else {
				alert('쿠폰 등록이 완료되었습니다.');
				location.reload(true);
			}
		},
		beforeSend : function() {
			$('.wrap-loading').removeClass('display-none');
		},
		complete : function() {
			$('.wrap-loading').addClass('display-none');
		},
		error : function(result) {
			alert('문의주세요.');
		}
	});
	
}

</script>
<jsp:include page="../common/naver_js.jsp"></jsp:include>
</html>
