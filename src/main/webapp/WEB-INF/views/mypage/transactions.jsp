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
          
          <h2 class="font-weight-400 mb-3">환전내역</h2>
          
          <!-- All Transactions
          ============================================= -->
          <div class="bg-light shadow-sm rounded py-4 mb-4">
            <h3 class="text-5 font-weight-400 d-flex align-items-center px-4 mb-3">내역</h3>
            <!-- Title
            =============================== -->
            <div class="transaction-title py-2 px-4">
              <div class="row">
                <div class="col-2 col-sm-1 text-center col-auto d-none d-sm-block"><span class="">거래일</span></div>
                <div class="col col-sm-7">거래금액 및 수령장소</div>
                <div class="col-auto col-sm-2 d-none d-sm-block text-center">상태</div>
                <div class="col-3 col-sm-2 text-right">지불금액</div>
              </div>
            </div>
            <!-- Title End -->
            
            <!-- Transaction List
            =============================== -->
            <div class="transaction-list">
            
            	<c:forEach var="items" items="${rsvList }">
            	<a href="#" style="color:black;" data-toggle="modal" id="modal_${items.RSV_NO }" data-target="#RSV_${items.RSV_NO }">
	              <div class="transaction-item px-4 py-3">
	                <div class="row align-items-center flex-row">
	                  <div class="col-2 col-sm-1 text-center col-auto d-none d-sm-block"> <span class="d-block text-4 font-weight-300">${items.RSV_DAY }</span> <span class="d-block text-1 font-weight-300 text-uppercase">${items.S_MONTH }</span> </div>
	                  <div class="col col-sm-7"> <span class="d-block text-4">${items.UNIT } <fmt:formatNumber value="${items.RSV_AMNT }" groupingUsed="true"/></span> <span class="text-muted">${items.STORE_NM }</span> </div>
	                  <div class="col-auto col-sm-2 d-none d-sm-block text-center text-1"> <div style="padding:5px; border-radius: 20px; <c:choose><c:when test="${items.RSV_ST eq 'R' || items.RSV_ST eq 'CR'}">background: #28a745;</c:when><c:otherwise>background: #b2b2b2;</c:otherwise></c:choose> margin: 0px 14px; color: #fff;">
	                  	<c:choose>
							<c:when test="${items.RSV_ST eq 'S'}">입금대기</c:when>
							<c:when test="${items.RSV_ST eq 'R'}">입금완료</c:when>
							<c:when test="${items.RSV_ST eq 'F'}">수령완료</c:when>
							<c:when test="${items.RSV_ST eq 'CR'}">환불대기</c:when>
							<c:otherwise>환불완료</c:otherwise>
						</c:choose>
	                  </div> </div>
	                  <div class="col-3 col-sm-2 text-right text-4"> <span class="text-nowrap"><fmt:formatNumber value="${items.GET_AMNT }" groupingUsed="true"/>원</span> <span class="text-2 text-uppercase"></span> </div>
	                </div>
	              </div>
	              </a>
	            </c:forEach>
            
            </div>
            <!-- Transaction List End -->
            
            <c:if test="${empty rsvList }">
            	<div style="width: 100%; padding: 100px 0px; text-align: center; color:#c5cdd6;">환전내역이 존재하지 않습니다.</div>
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
      <c:forEach var="items" items="${rsvList }">
        <div id="RSV_${items.RSV_NO }" class="modal fade" role="dialog" aria-hidden="true">
             <div class="modal-dialog modal-dialog-centered transaction-details" role="document">
               <div class="modal-content">
                 <div class="modal-body">
                   <div class="row no-gutters">
                     <div class="col-sm-5 d-flex justify-content-center bg-primary rounded-left py-4">
                       <div class="my-auto text-center">
                       
                         
                         <c:choose>
							<c:when test="${items.RSV_ST eq 'R'}">
								<h3 class="text-4 text-white font-weight-400 my-3">교환증</h3>
		                        <div class="text-15 text-white my-3"><img class="" src="${pageContext.request.contextPath}/imgView/${items.RSV_QR_IMG}" alt="${items.RSV_QR}" style="width: 120px; border: 10px solid #fff;">
									<p class="text-5 font-weight-500 mb-2 text-black-50" style="letter-spacing: 4px; margin-top:10px;">${items.RSV_QR} </p>
								</div>
								<hr class="mb-2">
							</c:when>
							<c:otherwise><div class="text-15 text-white my-3"><i class="fas fa-money-check-alt"></i></div></c:otherwise>
						</c:choose>
                         
                         <h3 class="text-4 text-white font-weight-400 my-3"></h3>
                         <div class="text-6 font-weight-700 text-white my-4">${items.UNIT } <fmt:formatNumber value="${items.RSV_AMNT }" groupingUsed="true"/></div>
                         <p class="text-white">${items.REG_DTTM }</p>
                       </div>
                     </div>
                     <div class="col-sm-7">
                       <h5 class="text-5 font-weight-400 m-3">${items.RSV_NO } <span style="color: darkgray; font-weight:200;">(<c:choose><c:when test="${items.RSV_ST eq 'S'}">입금대기</c:when><c:when test="${items.RSV_ST eq 'R'}">입금완료</c:when><c:when test="${items.RSV_ST eq 'F'}">수령완료</c:when><c:when test="${items.RSV_ST eq 'CR'}">환불대기</c:when><c:otherwise>환불완료</c:otherwise></c:choose>)</span>
                         <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                       </h5>
                       <hr>
                       <div class="px-3">
                         <ul class="list-unstyled">
                           <li class="mb-2"><c:choose><c:when test="${items.RSV_ST eq 'S'}">구매하실</c:when><c:otherwise>구매하신</c:otherwise></c:choose> 외화 <span class="float-right text-3 font-weight-bold">${items.UNIT } <fmt:formatNumber value="${items.RSV_AMNT }" groupingUsed="true"/></span></li>
                           <li class="mb-2">매매기준율 <span class="float-right text-2"><fmt:formatNumber value="${items.BASIC_RATE_WEYS }" pattern="#,###.00" groupingUsed="true"/>원</span></li>
						<li class="mb-2">수수료
							<c:if test="${items.WEYS_BONUS > 0}"><span style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">${items.WEYS_BONUS}% 우대</span></c:if>
						 	<span class="float-right text-2"><c:if test="${items.WEYS_BONUS > 0}"><span style="color:darkgray; text-decoration:line-through;"><fmt:formatNumber value="${items.WEYS_COMMIS_VAL }" groupingUsed="true"/>원</span></c:if>  <fmt:formatNumber value="${items.WEYS_COMMIS_VAL - items.WEYS_BONUS_VAL }" groupingUsed="true"/>원</span>
						</li>
						<li class="mb-2">보관료 <span class="float-right text-2"><fmt:formatNumber value="${items.CMS }" groupingUsed="true"/>원</span></li>
                         </ul>
                         <hr class="mb-2">
                         <p class="d-flex align-items-center font-weight-500 mb-4"><c:choose><c:when test="${items.RSV_ST eq 'S'}">입금하실</c:when><c:otherwise>입금하신</c:otherwise></c:choose> 금액 <span class="text-3 ml-auto font-weight-bold"><fmt:formatNumber value="${items.GET_AMNT }" groupingUsed="true"/>원</span></p>
                         
                         <c:choose>
							<c:when test="${items.RSV_ST eq 'S'}">
								 <ul class="list-unstyled">
		                           <li class="font-weight-500">수령장소:</li>
		                           <li class="text-muted">${items.STORE_NM }</li>
		                         </ul>
		                         <ul class="list-unstyled">
		                           <li class="font-weight-500">수령일시:</li>
		                           <li class="text-muted">${items.S_RSV_DT } ${items.RSV_WK } ${items.RSV_TM }</li>
		                         </ul>
		                         <ul class="list-unstyled">
		                           <li class="font-weight-500">수령인:</li>
		                           <li class="text-muted"><c:choose><c:when test="${items.FORIGN eq 'N'}">${items.RSV_NM }(${items.RSV_TEL })</c:when><c:otherwise>${items.RSV_NM }(${items.PASS_NO })</c:otherwise></c:choose></li>
		                         </ul>
		                         <ul class="list-unstyled">
		                           <li class="font-weight-500">입금계좌:</li>
		                           <li class="text-muted">${items.VBANK_NM } <span class="ml-auto font-weight-bold btn-link">${items.VBANK_CD }</span> ${items.VBANK_HOLDER }</li>
									<li class="text-muted"><p class="text-1 mb-0 text-danger" style="padding-right:15px;">${items.VBANK_DUE }까지 미입금시 예약이 자동 취소됩니다.</p></li>
		                         </ul>
								  <hr class="mb-2">
								  <ul class="list-unstyled" style="margin-top: 20px;">
		                          	<li class="text-muted"><a class="btn btn-primary" href="javascript:cancelRsvBefore('${items.RSV_NO }')" style="font-size: 14px;">예약취소</a></li>
		                          </ul>
							</c:when>
							<c:when test="${items.RSV_ST eq 'R'}">
								  <ul class="list-unstyled">
		                           <li class="font-weight-500">수령장소:</li>
		                           <li class="text-muted">${items.STORE_NM }</li>
		                         </ul>
		                         <ul class="list-unstyled">
		                           <li class="font-weight-500">수령일시:</li>
		                           <li class="text-muted">${items.S_RSV_DT } ${items.RSV_WK } ${items.RSV_TM }</li>
		                         </ul>
		                         <ul class="list-unstyled">
		                           <li class="font-weight-500">수령인:</li>
		                           <li class="text-muted"><c:choose><c:when test="${items.FORIGN eq 'N'}">${items.RSV_NM }(${items.RSV_TEL })</c:when><c:otherwise>${items.RSV_NM }(${items.PASS_NO })</c:otherwise></c:choose></li>
		                          </ul>
		                          <ul class="list-unstyled">
		                            <li class="font-weight-500">결제완료일시:</li>
		                            <li class="text-muted">${items.ICM_DTTM }</li>
		                          </ul>
								  <hr class="mb-2">
								  <ul class="list-unstyled" style="margin-top: 20px;">
		                            <li class="text-muted"><a class="btn btn-primary" href="#" data-toggle="modal" data-target="#CANCEL_${items.RSV_NO }" style="font-size: 14px;">환불요청</a></li>
		                          </ul>
							</c:when>
							<c:when test="${items.RSV_ST eq 'F'}">
								  <ul class="list-unstyled">
		                           <li class="font-weight-500">수령장소:</li>
		                           <li class="text-muted">${items.STORE_NM }</li>
		                         </ul>
		                         <ul class="list-unstyled">
		                           <li class="font-weight-500">수령완료일시:</li>
		                           <li class="text-muted">${items.MOD_DTTM }</li>
		                         </ul>
		                         <ul class="list-unstyled">
		                           <li class="font-weight-500">수령인:</li>
		                           <li class="text-muted"><c:choose><c:when test="${items.FORIGN eq 'N'}">${items.RSV_NM }(${items.RSV_TEL })</c:when><c:otherwise>${items.RSV_NM }(${items.PASS_NO })</c:otherwise></c:choose></li>
		                          </ul>
		                          <ul class="list-unstyled">
		                            <li class="font-weight-500">결제완료일시:</li>
		                            <li class="text-muted">${items.ICM_DTTM }</li>
		                          </ul>
							</c:when>
							<c:when test="${items.RSV_ST eq 'CR'}">
								<ul class="list-unstyled">
		                            <li class="font-weight-500">환불요청일시:</li>
		                            <li class="text-muted">${items.CANCEL_DTTM }</li>
		                          </ul>
		                          <ul class="list-unstyled">
		                            <li class="font-weight-500">환불계좌:</li>
		                            <li class="text-muted">${items.RET_BANK_NM } <span class="ml-auto font-weight-bold btn-link">${items.RET_BANK_CD }</span> ${items.RSV_NM }</li>
		                          </ul>
		                          <ul class="list-unstyled">
		                            <li class="font-weight-500">취소수수료:</li>
		                            <li class="text-muted"><fmt:formatNumber value="${items.CANCEL_CMS }" groupingUsed="true"/>원</li>
		                          </ul>
		                          <ul class="list-unstyled">
		                            <li class="font-weight-500">환불예정금액:</li>
		                            <li class="text-muted"><fmt:formatNumber value="${items.CANCEL_AMNT }" groupingUsed="true"/>원</li>
									<li class="text-muted"><p class="text-1 mb-0 text-danger" style="padding-right:15px;">환불은 영업일 기준 최대 2일 소요됩니다.</p></li>
		                          </ul>
							</c:when>
							<c:otherwise>
								<ul class="list-unstyled">
		                            <li class="font-weight-500">환불완료일시:</li>
		                            <li class="text-muted">${items.MOD_DTTM }</li>
		                          </ul>
		                          <ul class="list-unstyled">
		                            <li class="font-weight-500">환불계좌:</li>
		                            <li class="text-muted">${items.RET_BANK_NM } <span class="ml-auto font-weight-bold btn-link">${items.RET_BANK_CD }</span> ${items.RSV_NM }</li>
		                          </ul>
		                          <ul class="list-unstyled">
		                            <li class="font-weight-500">취소수수료:</li>
		                            <li class="text-muted"><fmt:formatNumber value="${items.CANCEL_CMS }" groupingUsed="true"/>원</li>
		                          </ul>
		                          <ul class="list-unstyled">
		                            <li class="font-weight-500">환불완료금액:</li>
		                            <li class="text-muted"><fmt:formatNumber value="${items.CANCEL_AMNT }" groupingUsed="true"/>원</li>
									<li class="text-muted"><p class="text-1 mb-0 text-danger" style="padding-right:15px;">환불은 영업일 기준 최대 2일 소요됩니다.</p></li>
		                          </ul>
							
							</c:otherwise>
						</c:choose>
						
                       </div>
                     </div>
                   </div>
                 </div>
               </div>
             </div>
           </div>
      </c:forEach>
      
      
      <c:forEach var="items" items="${rsvList }">
      	<c:if test="${items.RSV_ST eq 'R'}">
      	<div id="CANCEL_${items.RSV_NO }" class="modal fade" role="dialog" aria-hidden="true">
           <div class="modal-dialog modal-dialog-centered transaction-details" role="document">
             <div class="modal-content">
               <div class="modal-body">
                 <div class="row no-gutters">
                   <div class="col-sm-5 d-flex justify-content-center bg-primary rounded-left py-4">
                     <div class="my-auto text-center">
                       <div class="text-15 text-white my-3"><i class="fas fa-money-check-alt"></i></div>
                       <h3 class="text-4 text-white font-weight-400 my-3"></h3>
                       <div class="text-6 font-weight-700 text-white my-4">${items.UNIT } <fmt:formatNumber value="${items.RSV_AMNT }" groupingUsed="true"/></div>
                       <p class="text-white">${items.S_RSV_DT }</p>
                     </div>
                   </div>
                   <div class="col-sm-7">
                     <h5 class="text-5 font-weight-400 m-3">${items.RSV_NO } <span style="color: darkgray; font-weight:200;">(환불요청)</span>
                       <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                     </h5>
                     <hr>
                     <div class="px-3">
                       <ul class="list-unstyled">
                         <li class="mb-2">구매하신 외화 <span class="float-right text-3 font-weight-bold">${items.UNIT } <fmt:formatNumber value="${items.RSV_AMNT }" groupingUsed="true"/></span></li>
                         <li class="mb-2">매매기준율 <span class="float-right text-2"><fmt:formatNumber value="${items.BASIC_RATE_WEYS }" groupingUsed="true"/>원</span></li>
				<li class="mb-2">수수료
							<c:if test="${items.WEYS_BONUS > 0}"><span style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">${items.WEYS_BONUS}% 우대</span></c:if>
						 	<span class="float-right text-2"><c:if test="${items.WEYS_BONUS > 0}"><span style="color:darkgray; text-decoration:line-through;"><fmt:formatNumber value="${items.WEYS_COMMIS_VAL }" groupingUsed="true"/>원</span></c:if>  <fmt:formatNumber value="${items.WEYS_COMMIS_VAL - items.WEYS_BONUS_VAL }" groupingUsed="true"/>원</span>
						</li>
				<li class="mb-2">보관료 <span class="float-right text-2"><fmt:formatNumber value="${items.CMS }" groupingUsed="true"/>원</span></li>
                       </ul>
                       <hr class="mb-2">
                       <p class="d-flex align-items-center font-weight-500 mb-1">입금하신 금액 <span class="text-3 ml-auto font-weight-bold"><fmt:formatNumber value="${items.GET_AMNT }" groupingUsed="true"/>원</span></p>
			  <p class="d-flex align-items-center mb-1">취소수수료 <span class="ml-auto"><fmt:formatNumber value="${items.cancelCms }" groupingUsed="true"/>원</span></p>
			  <p class="d-flex align-items-center font-weight-500 mb-4">환불받을 금액 <span class="text-3 ml-auto font-weight-bold"><fmt:formatNumber value="${items.cancelAmnt }" groupingUsed="true"/>원</span></p>
                       <ul class="list-unstyled">
				  <div class="form-group">
				    <label for="newPassword">환불받을 은행</label>
					    <select class="custom-select" id="rBankNm_${items.RSV_NO }" name="rBankNm">
					    
					   		 <option value="">환불받을 은행</option>
					    	<c:forEach var="banks" items="${bankList }">
					    		<option value="${banks.RBANK_CD }">${banks.RBANK_NM }</option>
					    	</c:forEach>
						</select>
				  	  </div>
					  <div class="form-group">
					    <label for="newPassword">환불받을 계좌번호</label>
					    <input type="text" class="form-control" data-bv-field="newpassword" id="rBankCd_${items.RSV_NO }" required placeholder="환불받을 계좌번호">
				  	  </div>
					  <div class="form-group">
					    <label for="newPassword">예금주</label>
					    <input type="text" class="form-control" data-bv-field="newpassword" id="emailAddress" value="${items.RSV_NM }" readonly>
						<p class="text-1 mb-0 text-danger" style="margin-top: 20px; padding-right:15px; line-height: 15px;">환불은 영업일 기준 최대 2일 소요됩니다. 환불 계좌는 예약자 본인 명의의 계좌만 가능합니다. 계좌번호가 다른 경우 환불 처리가 지연될 수 있습니다. 환불시 이미 사용된 쿠폰은 반환되지 않습니다.</p>
				  	  </div>
				  	  <input type="hidden" id="cancelCms_${items.RSV_NO }" value="${items.cancelCms }">
				 	  <div class="form-group">
				 	  <button class="btn btn-primary btn-block mt-4" onclick="cancelRsv('${items.RSV_NO }')" type="button">환불요청</button>
					  </div>
                       </ul>
                     </div>
                   </div>
                 </div>
               </div>
             </div>
           </div>
         </div>
      </c:if>
      </c:forEach>
 <!-- modal end -->
    
  </div>
  <!-- Content end --> 
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	<form name="formBody" action="${pageContext.request.contextPath}/api/account/coupon" method="post">
		<input type="hidden" name="pageNo" id="pageNo" value="${paging.pageNo}">
	</form>
	<div class="wrap-loading display-none">
		<div><img width="42px" src="${pageContext.request.contextPath}/resources/images/loading.gif" /></div>
	</div>
</body>
<jsp:include page="../common/common_js.jsp"></jsp:include>
<script type="text/javascript">

$(function() {
	 var hash = window.location.hash;
	 if(hash != ''){
		 window.scrollTo(0, 0);
		 $(hash).trigger('click');
	 }
});
	
function goPage(pageNo){
	var FORM_BODY = $('form[name=formBody]');
	$('#pageNo').val(pageNo);
	FORM_BODY.attr('action', '${pageContext.request.contextPath}/account/transactions');
	FORM_BODY.submit();
}

function cancelRsvBefore(rsvNo){
	if(confirm('정말로 취소하시겠습니까?')){
		var data = {};
		data["rsvNo"] = rsvNo;
		
		$.ajax({
			contentType : "application/json",
			dataType : "json",
			type : "post",
			url : "${pageContext.request.contextPath}/rsv/beforeCancel",
			data : JSON.stringify(data),
			success : function(result) {
				var res = result.res;
				if (res == 'fail') {
					alert('다시 시도해주세요.');
				} else {
					alert('예약이 취소되었습니다.');
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
	
}

function cancelRsv(rsvNo){
	if(confirm('정말로 취소하시겠습니까?')){
		var cancelCms = $('#cancelCms_' + rsvNo).val();
		var rBankCd = $('#rBankCd_' + rsvNo).val();
		var rBankNm = $("#rBankNm_" + rsvNo + " option:selected").val();
		
		var data = {};
		data["rsvNo"] = rsvNo;
		data["cancelCms"] = cancelCms;
		data["rBankNm"] = rBankNm;
		data["rBankCd"] = rBankCd;
		
		$.ajax({
			contentType : "application/json",
			dataType : "json",
			type : "post",
			url : "${pageContext.request.contextPath}/rsv/cancel",
			data : JSON.stringify(data),
			success : function(result) {
				var res = result.res;
				if (res == 'fail') {
					alert('다시 시도해주세요.');
				} else {
					alert('환불이 접수되었습니다.');
					location.href='${pageContext.request.contextPath}/account/transactions?#modal_' + rsvNo;
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
}

</script>
<jsp:include page="../common/naver_js.jsp"></jsp:include>
</html>
