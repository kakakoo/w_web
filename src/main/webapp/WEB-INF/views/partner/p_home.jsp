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
	
	  <!-- Content
  ============================================= -->
  <div id="content"> 
    
    <!-- Send Money
    ============================================= -->
    <section class="hero-wrap section shadow-md py-4">
      <div class="hero-mask opacity-${info.bgOpct } bg-dark"></div>
      <div class="hero-bg" style="background-image:url('${pageContext.request.contextPath}/imgView/${info.copLogo }');"></div>
      <div class="hero-content py-5">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 col-xl-7 my-auto text-center text-lg-left pb-4 pb-lg-0">
              <h2 class="text-10 text-white head-mobile">싸고 편한 웨이즈 환전 <br>예약 후 공항에서 픽업하세요!</h2>
              <p class="text-4 text-white mb-4 head-mobile-sub">10개국 통화, 인천공항 T1/T2, 김포공항역, 홍대입구역 픽업 가능!</p>
              <a class="btn btn-outline-light head-mobile-btn" href="#guide-rsv" data-toggle="modal"><span class="text-2 mr-2"><i class="fas fa-exclamation-circle"></i></span>환전 예약 전 확인하세요</a> </div>
            <div class="col-lg-6 col-xl-5 my-auto">
              <div class="bg-white rounded shadow-md p-4">
                <h3 class="text-4 text-center">${info.rsvNm }</h3>
                <hr class="mb-4">
                  <div class="form-group" style="text-align: right;">
                    <label for="youSend" style="color: #aaaeb2;">구매하실 외화</label>
                    <div class="input-group" style="height: 60px;">
                      <div class="input-group-prepend"> <span class="input-group-text p-0">
                        <select id="rsvUnit" data-style="custom-select bg-transparent border-0" data-container="body" data-live-search="true" class="selectpicker form-control bg-transparent" required="">
                          <optgroup label="자주 찾는 통화">
                          <option data-icon="currency-flag currency-flag-usd mr-1" data-subtext="미국 달러" selected="selected" value="USD">USD</option>
                          <option data-icon="currency-flag currency-flag-jpy mr-1" data-subtext="일본 엔" value="JPY">JPY</option>
                          <option data-icon="currency-flag currency-flag-twd mr-1" data-subtext="대만 달러" value="TWD">TWD</option>
                          </optgroup>
                          <option data-divider="true"></option>
                          <optgroup label="모든 통화">
                          <c:forEach var="items" items="${unitList }">
                          	<option data-icon="currency-flag currency-flag-${items.L_UNIT } mr-1" data-subtext="${items.UNIT_NM }" value="${items.UNIT_CD }">${items.UNIT_CD }</option>
                          </c:forEach>
                          </optgroup>
                        </select>
                        </span> </div>
						<input type="tel" class="form-control" data-bv-field="rsvAmnt" id="rsvAmnt" value="0" placeholder="" style="text-align: right; font-size: 24px !important; font-weight: 600 !important;">
                    </div>
                  </div>
				  <div class="rsv-box" <c:if test="${empty userVO }">style="height:80px;"</c:if> >
					  <div class="rsv-line"></div>
					  <div class="rsv-rates">
					  	<img src="${pageContext.request.contextPath}/resources/images/assets/img_chk.png" style="position: absolute; width: 28px; left: -13px;">
						<div class="rsv-mobile" id="rsvBill" style="position: absolute; top: 4px; left: 30px; font-size: 16px; color: #0065ff; font-weight: 600">0원</div>
						<div class="rsv-mobile rsv-left-120" style="position: absolute; top: 5px; left: 150px; font-size: 14px; color: #5f6a75; font-weight: 300">매매기준율 <span id="basicRate" style="font-weight:600;">1,000.00원</span></div>
					  </div>
					  <div class="rsv-fees">
					  	<img src="${pageContext.request.contextPath}/resources/images/assets/img_plus.png" style="position: absolute; width: 28px; left: -13px;">
						<div class="rsv-mobile" id="cmsBill" style="position: absolute; top: 3px; left: 30px; font-size: 14px; color: #5f6a75; font-weight: 600">0원</div>
						<div class="rsv-mobile rsv-left-120" style="position: absolute; top: 3px; left: 150px; font-size: 14px; color: #5f6a75; font-weight: 300">수수료 <span id="cms" style="font-weight:600;">0.875%</span> <span style="margin-left:5px; color: #c5cdd6;"><a href="#guide-fee" data-toggle="modal" style="color: #c5cdd6 !important;"><i class="fas fa-exclamation-circle"></i></a></span></div>
					  </div>
					  <c:if test="${not empty userVO }">
					  <div class="rsv-coupons">
					  	<img src="${pageContext.request.contextPath}/resources/images/assets/img_minus.png" style="position: absolute; width: 28px; left: -13px;">
						<div class="rsv-mobile" id="couponBill" style="position: absolute; top: 3px; left: 30px; font-size: 14px; color: #5f6a75; font-weight: 600">0원</div>
						<div class="rsv-mobile rsv-left-120" id="coupon" style="position: absolute; top: 3px; left: 150px; font-size: 14px; color: #0065ff; font-weight: 600"><a href="#select-coupon" data-toggle="modal" class=""><span id="coupon_use_txt">쿠폰선택</span> <span style="margin-left:5px; color: #0065ff;"><i class="fas fa-angle-down"></i></span></a></div>
					  </div>
					  </c:if>
				  </div>
                  <div class="form-group" style="text-align: right;">
                    <label for="recipientGets" style="color: #aaaeb2;">지불하실 금액</label>
                    <div class="input-group" style="height: 60px;">
                      <div class="input-group-prepend"> <span class="input-group-text p-0">
                        <select id="youSendCurrency" data-style="custom-select bg-transparent border-0" data-container="body" data-live-search="true" class="selectpicker form-control bg-transparent" required="">
                          <optgroup label="Popular Currency">
                          <option data-icon="currency-flag currency-flag-krw mr-1" data-subtext="대한민국 원" selected="selected" value="">KRW</option>
                          </optgroup>
                        </select>
                        </span> </div>
						<input type="tel" class="form-control" data-bv-field="getAmnt" id="getAmnt" value="0" placeholder="" style="text-align: right; font-size: 24px !important; font-weight: 600 !important;">
                    </div>
                  </div>
				  <h5 id="diffPosi" class="text-4 text-center font-weight-300" style="display:none;color: #5f6a75; margin-top: 30px; margin-bottom: 30px;">공항보다 <span id="diffTxt" style="color:#0065ff; font-weight: 600;">19,340원</span> 절약됩니다.</h5>
				  <a href="#compare-price" data-toggle="modal" class="text-mute"><button id="diffBtn" style="display:none;margin-bottom:5px;" class="btn btn-outline-primary btn-block">금액 비교하기</button></a>
                  <button onclick="rsvDetail()" class="btn btn-primary btn-block">예약하기</button>
				  <p class="mt-3 mb-0" onclick="goPartGuest()"><a href="#close-account" data-toggle="modal" class="text-muted btn-link">예약조회<span class="text-1 ml-1"><i class="fas fa-chevron-right"></i></span></a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
	
    <!-- Send Money End --> 
  
	<!-- How it works
    ============================================= -->
    <section class="section">
      <div class="container">
        <h2 class="text-6 text-center text-uppercase">웨이즈 환전은 간단합니다</h2>
        <p class="text-3 text-center font-weight-300 mb-5">여행의 시작부터 어려움이 없도록 도와드릴게요</p>
        <div class="row">
          <div class="col-sm-4 mb-4">
            <div class="featured-box style-4">
              <div class="featured-box-icon text-dark shadow-none border-bottom"><span class="w-100 text-14 font-weight-500" style="color:#2a333d;"><i class="fas fa-money-bill"></i></span></div>
              <h3 class="mb-3">통화를 선택하세요</h3>
              <p class="text-3 font-weight-300">10개국 통화 예약이 가능합니다.<br>대만, 태국, 필리핀 여행도 걱정마세요!</p>
			  <a href="#guide-currencies" data-toggle="modal" class="text-muted"><button type="button" class="btn btn-outline-primary btn-sm shadow-none">취급 통화 안내</button></a>
            </div>
          </div>
          <div class="col-sm-4 mb-4">
            <div class="featured-box style-4">
              <div class="featured-box-icon text-dark shadow-none border-bottom"><span class="w-100 text-14 font-weight-500" style="color:#2a333d;"><i class="fas fa-plane-departure"></i></span></div>
              <h3 class="mb-3">픽업 장소와 시간을 선택하세요</h3>
              <p class="text-3 font-weight-300">인천공항, 김포공항역, 홍대입구역 등<br>가까운 매장에서 외화를 픽업할 수 있어요!</p>
			  <a href="#guide-pickup" data-toggle="modal" class="text-muted"><button type="button" class="btn btn-outline-primary btn-sm shadow-none">픽업 매장 안내</button></a>
            </div>
          </div>
          <div class="col-sm-4 mb-4 mb-sm-0">
            <div class="featured-box style-4">
              <div class="featured-box-icon text-dark shadow-none border-bottom"><span class="w-100 text-14 font-weight-500" style="color:#2a333d;"><i class="fas fa-landmark"></i></span></div>
              <h3 class="mb-3">온라인으로 결제하세요</h3>
              <p class="text-3 font-weight-300">예약 확정 후 지정된 계좌로<br>송금하여 결제를 완료하세요!</p>
			  <a href="#guide-guarantee" data-toggle="modal" class="text-muted"><button type="button" class="btn btn-outline-primary btn-sm shadow-none">환율 보장 안내</button></a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- How it works End -->
	<!-- Special Offer
    ============================================= -->
	<section class="hero-wrap py-5">
      <!--<div class="hero-mask opacity-5 bg-dark"></div>-->
      <div class="hero-bg" style="background: #0065FF;"></div>
      <div class="hero-content">
        <div class="container d-md-flex text-center text-md-left align-items-center justify-content-center">
          <h2 class="text-6 font-weight-600 text-white mb-3 mb-md-0"><i class="fas fa-comment-dots"></i> 도움이 필요하세요?</h2>
          <a href="javascript:openChannel();" class="btn btn-outline-light text-nowrap ml-4">실시간 채팅상담</a> </div>
      </div>
    </section>
    <!-- Special Offer end --> 
    
    
    
    <!-- Testimonial
    ============================================= -->
    <section class="section">
      <div class="container">
        <h2 class="text-6 text-center">환전 앱 1위, 고객만족도 1위</h2>
        <p class="text-3 text-center mb-4">웨이즈를 경험한 고객님들의 후기</p>
        <div class="row">
          <div class="col-lg-10 col-xl-8 mx-auto">
            <div class="owl-carousel owl-theme" data-autoplay="true" data-nav="true" data-loop="true" data-margin="30" data-stagepadding="5" data-items-xs="1" data-items-sm="1" data-items-md="1" data-items-lg="1">
              
              <div class="item">
                <div class="testimonial rounded text-center p-4">
                  <p class="text-4">“처음 경험이 너무 좋네요. UX도 편하고 심플합니다. 바로 카카오톡과 연결돼서 혼란도 없어서 참 좋네요. 여행자 보험도 연결해서 들 수 있어서 좋았어요.”</p>
                  <strong class="d-block font-weight-500">이*얀 님 (JPY 30,000 환전)</strong> <span class="text-muted" style="color:#f9b000 !important;">★★★★★</span> </div>
              </div>
              
              <div class="item">
                <div class="testimonial rounded text-center p-4">
                  <p class="text-4">“친언니를 통해 처음 사용해보았는데 생각보다 훨씬 간편하고 편리하고 시간도 들지 않아 너무 좋고 외화수령까지 너무 좋았습니다. 앞으로도 웨이즈 통해서만 환전하려고요!”</p>
                  <strong class="d-block font-weight-500">설*원 님 (JPY 36,000 환전)</strong> <span class="text-muted" style="color:#f9b000 !important;">★★★★★</span> </div>
              </div>
              
              <div class="item">
                <div class="testimonial rounded text-center p-4">
                  <p class="text-4">“예약한 시간보다 빨리 도착했는데도 친절하게 응대해주시고 쉽고 빠르게 수령할 수 있어서 너무 편리했습니다~ 수수료도 은행보다 훨씬 저렴해서 좋았네요.”</p>
                  <strong class="d-block font-weight-500">황*휘 님 (USD 340 환전)</strong> <span class="text-muted" style="color:#f9b000 !important;">★★★★★</span> </div>
              </div>
              
              <div class="item">
                <div class="testimonial rounded text-center p-4">
                  <p class="text-4">“아주 좋은, 편리한 서비스입니다. 회사에 있다 보니 은행 갈 필요도 없고, 바로 공항 픽업에, 우대환율까지 만족합니다.”</p>
                  <strong class="d-block font-weight-500">김*규 님 (HKD 5,000 환전)</strong> <span class="text-muted" style="color:#f9b000 !important;">★★★★★</span> </div>
              </div>
              
              <div class="item">
                <div class="testimonial rounded text-center p-4">
                  <p class="text-4">“은행 갈 시간이 없는 사람들에게는 너무 최고의 환전이었어요. 처음이라 불안했지만 직원분도 친절하고 차분히 해주셔서 안심되고 공항에서 받을 수 있어 너무 편리했답니다.”</p>
                  <strong class="d-block font-weight-500">이*화 님 (THB 13,000 환전)</strong> <span class="text-muted" style="color:#f9b000 !important;">★★★★★</span> </div>
              </div>
              
              <div class="item">
                <div class="testimonial rounded text-center p-4">
                  <p class="text-4">“지금도 너무 만족스럽습니다. 24시간 고객센터도 너무 좋았어요! 답변도 빠르고 까다로운 요구도 잘 들어주셔서 감사합니다:-) 배달해주신 직원분도 친절하셨어요!”</p>
                  <strong class="d-block font-weight-500">박*겸 님 (USD 230 환전)</strong> <span class="text-muted" style="color:#f9b000 !important;">★★★★★</span> </div>
              </div>
              
              <div class="item">
                <div class="testimonial rounded text-center p-4">
                  <p class="text-4">“굉장히 편하게 이용했습니다. 은행 들릴 시간이 없었는데 은행가는 시간을 줄이고 수수료까지 더 적으니 이용 안 할 이유가 없을 것 같아요.”</p>
                  <strong class="d-block font-weight-500">박*나 님 (JPY 15,000 환전)</strong> <span class="text-muted" style="color:#f9b000 !important;">★★★★★</span> </div>
              </div>
              
              <div class="item">
                <div class="testimonial rounded text-center p-4">
                  <p class="text-4">“직장생활 중에 바빠 환전하러 갈 틈도 없는데 공항 수령 가능하고 시간도 지정되는 게 너무 좋은 것 같아요. 그리고 환전 봉투 정말 유용하게 썼습니다.”</p>
                  <strong class="d-block font-weight-500">박*영 님 (USD 400 환전)</strong> <span class="text-muted" style="color:#f9b000 !important;">★★★★★</span> </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Testimonial end -->
    
  </div>
  <!-- Content end --> 
 
	<!-- 금액 비교하기 -->
  <div id="compare-price" class="modal fade " role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header" style="text-align: center; display: inline;">
                <h6 id="c_m_title" class="modal-title font-weight-400">JPY 10,000 금액 비교하기</h6>
              </div>
              <div class="modal-body p-4">
                  <div class="row">
                    
					  <div class="table-responsive">
					  <table class="table">
						<tbody>
						  <tr>
							<td style="border-bottom: 1px; border-top: 0px; color:#0065ff; font-weight: 600;">웨이즈
								<span id="c_m_bonus" style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">100% 우대</span>
							</td>
							<td id="c_m_bill" style="border-bottom: 1px; border-top: 0px; text-align: right; color:#0065ff; font-weight: 600;">113,030원</td>
						  </tr>
						  <tr>
							<td id="c_m_b_cms" style="border-bottom: 1px;">은행(수수료 1.75%)</td>
							<td id="c_m_b_bill" style="border-bottom: 1px; text-align: right;">114,017원</td>
						  </tr>
						  <tr>
							<td id="c_m_a_cms" style="border-bottom: 1px;">공항(수수료 4.5%)</td>
							<td id="c_m_a_bill" style="border-bottom: 1px; text-align: right;">117,100원</td>
						  </tr>
						</tbody>
					  </table>
					  <h5 class="text-4 text-center font-weight-300" style="color: #5f6a75; margin-top: 30px; margin-bottom: 30px;">공항보다 <span id="c_m_d_bill" style="color:#0065ff; font-weight: 600;">19,340원</span> 절약됩니다.</h5>
					</div>
			  
                  </div>
                  <button class="btn btn-primary btn-block" type="button" data-dismiss="modal" aria-label="Close">닫기</button>
              </div>
            </div>
          </div>
        </div>
 <!-- 수수료 안내 -->
  <div id="guide-fee" class="modal fade " role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header" style="text-align: center; display: inline;">
                <h6 class="modal-title font-weight-400">수수료 안내</h6>
              </div>
              <div class="modal-body p-4">
                  <div class="row">
                    <div class="col-12 text-center" style="margin-bottom: 30px;">
                      웨이즈 환전 수수료는 은행의 절반입니다.
                    </div>
			  <div class="table-responsive">
			  <table class="table">
				<tbody>
				  <tr>
					<td style="border-top: 0px; border-right: 1px solid #dee2e6; text-align: center; font-weight: 400;">은행</td>
					<td style="border-top: 0px; text-align: center; color:#0065ff; font-weight: 600;">웨이즈</td>
				  </tr>
				  <tr>
					<td id="guid_bank" style="border-top: 0px; border-right: 1px solid #dee2e6; text-align: center; font-size: 30px; font-weight: 400;">1.75%</td>
					<td id="guid_weys" style="border-top: 0px; text-align: center; font-size: 30px; color:#0065ff; font-weight: 800;">0.875%</td>
				  </tr>
				</tbody>
			  </table>
			  </div>
			  <div id="guid_title" class="col-12 text-center" style="margin-top:10px; margin-bottom: 30px;">
                      * 일본 엔(JPY) 기준
                    </div>
                  </div>
                  <button class="btn btn-primary btn-block" type="button" data-dismiss="modal" aria-label="Close">닫기</button>
              </div>
            </div>
          </div>
        </div>
  <!-- 쿠폰 선택
        ================================== -->
        <div id="select-coupon" class="modal fade " role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title font-weight-400">사용할 쿠폰을 선택하세요</h5>
                <button id="c_m_close" type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
              </div>
              <div class="modal-body p-4">
                <div class="transaction-title py-2 px-4">
			  <div class="row">
				<div class="col col-sm-8">쿠폰명</div>
				<div class="col-auto col-sm-4 text-center">쿠폰선택</div>
			  </div>
			</div>
			<div class="transaction-list" id="couponHtml">
			  <div class="transaction-item px-4 py-3">
				<div class="row align-items-center flex-row">
				  <div class="col col-sm-8"> <span class="d-block text-3">USD 100% 우대 쿠폰</span> <span class="text-muted">유효기간: 2019년 12월 31일까지</span> </div>
				  <div class="col-auto col-sm-4 text-center text-1"> <span class="text-2 text-uppercase"><div style="padding:5px; border-radius: 5px; width: 60px; background: #0065ff; margin: 0 auto; color: #fff;">선택</div></span> </div>
				</div>
			  </div>
			  <div class="transaction-item px-4 py-3">
				<div class="row align-items-center flex-row">
				  <div class="col col-sm-8"> <span class="d-block text-3">USD 90% 우대 쿠폰</span> <span class="text-muted">유효기간: 2019년 12월 31일까지</span> </div>
				  <div class="col-auto col-sm-4 text-center text-1"> <span class="text-2 text-uppercase"><div style="padding:5px; border-radius: 5px; width: 60px; background: #0065ff; margin: 0 auto; color: #fff;">선택</div></span> </div>
				</div>
			  </div>
			  <div class="transaction-item px-4 py-3">
				<div class="row align-items-center flex-row">
				  <div class="col col-sm-8"> <span class="d-block text-3">쿠폰 선택 안함</span> <span class="text-muted">쿠폰을 사용하지 않습니다.</span> </div>
				  <div class="col-auto col-sm-4 text-center text-1"> <span class="text-2 text-uppercase"><div style="padding:5px; border-radius: 5px; width: 60px; background: #0065ff; margin: 0 auto; color: #fff;">선택</div></span> </div>
				</div>
			  </div>

			</div>
		</div>
              </div>
            </div>
          </div>
          
   <!-- 예약 안내
          ================================== -->
          <div id="guide-rsv" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title font-weight-400">환전 예약 전 확인하세요</h5>
                  <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                </div>
                <div class="modal-body p-4">
                  <h3 class="text-3">이용방법<br><br></h3>
				  <p class="text-2 font-weight-600" style="color: #0065ff; font-size: 12px !important;">1. 웨이즈 환전은 온라인으로 환전 예약(결제) 후 공항 등 원하는 장소에서 외화를 수령하는 서비스입니다.</p><p class="text-2 font-weight-400" style="font-size: 12px !important;">2. 신청 가능 외화는 미국 달러, 일본 엔 등 총 10개국 통화입니다.</p><p class="text-2 font-weight-400" style="font-size: 12px !important;">3. 환전 예약 가능 시간은 수령일 기준 7일 전부터 하루 전까지입니다.</p><p class="text-2 font-weight-400" style="font-size: 12px !important;">4. 환전 예약 시 수령 장소, 수령예정 일시를 잘 확인하세요.(특히, 항공사에 따라 인천공항 터미널이 다르니 유의하세요. 수령 장소 변경은 1일 전까지 가능합니다.)</p><p class="text-2 font-weight-400" style="font-size: 12px !important;">5. 수령예정 일시에 선택한 수령 장소에 방문하셔서 외화를 수령하세요.(교환증 화면, 신분증을 미리 준비해주시면 빠른 수령이 가능합니다.)</p>
				  <h3 class="text-3"><br><br>유의사항<br><br></h3>
				  <p class="text-2 font-weight-400" style="font-size: 12px !important;"><b>1. 예약한 외화는 해당 지점 영업시간 중 수령 가능합니다.</b><br>지점 영업시간 중 미수령 시 고객님의 귀책사유로 인정되어 취소수수료가 부과될 수 있습니다.</p><p class="text-2 font-weight-400" style="font-size: 12px !important;"><b>2. 예약한 장소에서만 수령이 가능합니다. </b><br>수령 장소 변경은 24시간 전까지만 가능하며, 이후 수령 장소 변경은 불가능합니다.</p><p class="text-2 font-weight-400" style="font-size: 12px !important;"><b>3. 늦거나 일찍 도착해도 수령이 가능합니다.</b><br>해당 지점 영업시간 중이라면 도착 즉시 수령이 가능합니다.</p><p class="text-2 font-weight-400" style="font-size: 12px !important;"><b>4. 출국 심사 후에는 수령이 불가능합니다.</b><br>출국 심사를 받은 후 면세구역으로 진입하셨거나 김해, 제주 등 다른 공항에서 인천공항을 경유하시는 경우 수령이 불가능합니다.</p><p class="text-2 font-weight-400" style="font-size: 12px !important;"><b>5. 교환증, 실명확인증표 확인이 필요합니다.</b><br>안전하고 빠른 외화 전달을 위해 교환증 화면과 실명확인증표(여권, 주민등록증, 운전면허증 중 택 1) 확인을 진행하고 있습니다. 협조 부탁드립니다.</p><p class="text-2 font-weight-400" style="font-size: 12px !important;"><b>6. 예약자 본인이 아닌 경우 수령이 불가능합니다.</b><br>금융실명제 및 외국환거래규정에 따라 본인이 아닌 경우 외화 수령이 불가능하며, 이 경우 고객님의 귀책사유로 인정되어 환불 요청 시 취소수수료가 부과됩니다.</p>
				</div>
				</div>
                </div>
              </div>
 <!-- 예약 보증 안내 -->
		  <div id="guide-guarantee" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header" style="text-align: center; display: inline;">
                  <h6 class="modal-title font-weight-400">환율 보장 안내</h6>
                </div>
                <div class="modal-body p-4">
                    <div class="row">
                      <div class="col-12 text-center" style="margin-bottom: 30px;">
                        <b>예약 후 30분간 환율이 보장됩니다.</b> 예약 화면 이탈, 예약 후 미입금, 기기 오류 등으로 인해 환율이 변동되는 경우 당사는 책임지지 않습니다.
                      </div>
                    </div>
                    <button class="btn btn-primary btn-block" type="button" data-dismiss="modal" aria-label="Close">닫기</button>
                </div>
              </div>
            </div>
          </div>
<!-- 취급 통화 안내
          ================================== -->
          <div id="guide-currencies" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title font-weight-400">취급 통화 안내</h5>
                  <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                </div>
                <div class="modal-body p-4">
                  <img src="${pageContext.request.contextPath}/resources/images/assets/currencies.png" style="width: 100%;">
				</div>
				</div>
                </div>
              </div>
            </div>
          </div>
		  <!-- 픽업 매장 안내
          ================================== -->
			<style type="text/css">
			p.accordion {
				color: #444;
				cursor: pointer;
				padding: 14px 0px;
				text-align: left;
				border-bottom: 1px solid #dce3ed;
				outline: none;
				margin: 0px;
				font-size: 14px;
				font-weight: 600;
				margin: 0;
				-webkit-tap-highlight-color: rgba(0,0,0,0);
			}

			/* Add a background color to the accordion if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */

			/* Unicode character for "plus" sign (+) */
			p.accordion:after {
				float: right;
				background-image: url("${pageContext.request.contextPath}/resources/images/assets/btn_arrow.png");
				background-size: 14px 9px;
				display: inline-block;
				width: 14px; 
				height: 9px;
				margin-top: 10px;
				content:"";
			}
				p.accordion.active { color: #0065ff; border-bottom: 0px solid #dce3ed;}

			/* Unicode character for "minus" sign (-) */
			p.accordion.active:after {
				float: right;
				background-image: url("${pageContext.request.contextPath}/resources/images/assets/btn_arrow_up.png");
				background-size: 14px 9px;
				display: inline-block;
				width: 14px; 
				height: 9px;
				content:"";
			}

				div.panel {
				padding: 0 30px;
				background-color: #EDF1F4;
				max-height: 0;
				overflow: hidden;
				opacity: 0;
				border-top: 1px solid #dce3ed;
				border-bottom: 1px solid #dce3ed;
				font-size: 12px;
			}

			div.panel.show {
				opacity: 1;
				max-height: 1000px; /* Whatever you like, as long as its more than the height of the content (on all screen sizes) */
			}
			</style>
			<script>
			document.addEventListener("DOMContentLoaded", function(event) { 


			var acc = document.getElementsByClassName("accordion");
			var panel = document.getElementsByClassName('panel');

			for (var i = 0; i < acc.length; i++) {
				acc[i].onclick = function() {
					var setClasses = !this.classList.contains('active');
					setClass(acc, 'active', 'remove');
					setClass(panel, 'show', 'remove');

					if (setClasses) {
						this.classList.toggle("active");
						this.nextElementSibling.classList.toggle("show");
					}
				}
			}

			function setClass(els, className, fnName) {
				for (var i = 0; i < els.length; i++) {
					els[i].classList[fnName](className);
				}
			}

			});
			</script>
          <div id="guide-pickup" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title font-weight-400">픽업 매장 안내</h5>
                  <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                </div>
                <div class="modal-body p-4">

					<p class="accordion">인천공항 T1 3층 수하물보관소</p>
					<div class="panel">
						<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/assets/map_icn_t1_3f_hanjin.png" style="padding: 30px;">
						<table width="100%" style="margin-bottom: 30px; font-size: 12px;">
						  <tbody>
							<tr>
							  <th scope="row" width="20%">위치</th>
							  <td>인천국제공항 제 1터미널 3층 M카운터 부근</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">영업시간</th>
							  <td>매일 24시간(오전 1시~2시 휴식시간)</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">비고</th>
							  <td><b>3층 출국층 M카운터 부근에 위치한 수하물보관소에 방문하여 수령하시면 됩니다.(혼잡 시간의 경우 약간의 대기시간이 발생할 수 있습니다.)</b></td>
							</tr>
						  </tbody>
						</table>
					</div>

					<p class="accordion">인천공항 T2 3층 수하물보관소</p>
					<div class="panel">
						<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/assets/map_icn_t2_3f_hanjin.png" style="padding: 30px;">
						<table width="100%" style="margin-bottom: 30px; font-size: 12px;">
						  <tbody>
							<tr>
							  <th scope="row" width="20%">위치</th>
							  <td>인천국제공항 제 2터미널 3층 H카운터 부근</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">영업시간</th>
							  <td>매일 오전 7시 ~ 오후 10시</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">비고</th>
							  <td><b>3층 출국층 H카운터 부근에 위치한 수하물보관소에 방문하여 수령하시면 됩니다.(혼잡 시간의 경우 약간의 대기시간이 발생할 수 있습니다.)</b></td>
							</tr>
						  </tbody>
						</table>
					</div>

					<p class="accordion">인천공항 1터미널역 트래블스토어(공항철도)</p>
					<div class="panel">
						<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/assets/map_icn_t1_b1f1.png" style="padding: 30px;">
						<table width="100%" style="margin-bottom: 30px; font-size: 12px;">
						  <tbody>
							<tr>
							  <th scope="row" width="20%">위치</th>
							  <td>인천공항 1터미널역 지하 1층 공항철도 일반열차 개찰구 옆</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">영업시간</th>
							  <td>매일 오전 8시 - 오후 9시 30분</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">비고</th>
							  <td>문의전화: 032-743-0213</td>
							</tr>
						  </tbody>
						</table>
					</div>

					<p class="accordion">김포공항역 트래블센터(공항철도)</p>
					<div class="panel">
						<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/assets/map_gmp.png" style="padding: 30px;">
						<table width="100%" style="margin-bottom: 30px; font-size: 12px;">
						  <tbody>
							<tr>
							  <th scope="row" width="20%">위치</th>
							  <td>김포공항역 지하 1층 공항철도 개찰구 옆(4번 출구 부근)</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">영업시간</th>
							  <td>매일 오전 9시 ~ 오후 9시</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">비고</th>
							  <td>문의전화: 02-2665-0211</td>
							</tr>
						  </tbody>
						</table>
					</div>

					<p class="accordion">홍대입구역 트래블센터(공항철도)</p>
					<div class="panel">
						<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/assets/map_hd.png" style="padding: 30px;">
						<table width="100%" style="margin-bottom: 30px; font-size: 12px;">
						  <tbody>
							<tr>
							  <th scope="row" width="20%">위치</th>
							  <td>홍대입구역 지하 2층 공항철도 개찰구 안(5번 출구 부근)</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">영업시간</th>
							  <td>오전 10시 - 오후 8시 30분</td>
							</tr>
							<tr>
							  <th scope="row" width="20%">비고</th>
							  <td>해당 지점은 개찰구 안쪽에 위치하고 있습니다. 개찰구 인터폰을 통해 "트래블센터에 왔습니다"라고 말씀하시면 지하철 요금 지불없이 입장이 가능합니다.<br>문의전화: 02-334-0211</td>
							</tr>
						  </tbody>
						</table>
					</div>
				</div>
				</div>
                </div>
              </div>
          
<form name="formBody" action="${pageContext.request.contextPath}/p/rsv" method="post">
	<input type="hidden" name="basicRate" id="f_basicRate">
	<input type="hidden" name="basicRateBank" id="f_basicRateBank">
	<input type="hidden" name="rsvAmnt" id="f_rsvAmnt">
	<input type="hidden" name="getAmnt" id="f_getAmnt">
	<input type="hidden" name="unitCd" id="f_unitCd">
	
	<input type="hidden" name="bonusId" id="f_bonusId">
	<input type="hidden" name="bonusNm" id="f_bonusNm">
	<input type="hidden" name="weysBonus" id="f_weysBonus">
	<input type="hidden" name="weysBonusVal" id="f_weysBonusVal">
	<input type="hidden" name="weysCommis" id="f_weysCommis">
	<input type="hidden" name="weysCommisVal" id="f_weysCommisVal">
</form>
		<jsp:include page="./p_footer.jsp"></jsp:include>
	</div>
	
	
	
</body>
<jsp:include page="../common/common_js.jsp"></jsp:include>
<script type="text/javascript">

var unitCd;
var unitNm;
var unitSize;
var unitMin;
var unitMax;

var minKor;
var maxKor;

var airCommis;
var basicRateAir;
var bankCommis;
var basicRateBank;

var rsvBill = 0;
var basicRate = 0.0;
var cmsBill = 0;
var cms = 0.0;
var couponBill = 0;
var coupon = 0;
var couponId = 0;
var couponNm = '';
var weysCommisVal = 0;

var diffFlag = false;

$(function(){
	
	$('#rsvUnit').change(function(){

		couponBill = 0;
		coupon = 0;
		couponId = 0;
		couponNm = '';
		$('#rsvAmnt').val(0);
		$('#getAmnt').val(0);
		getUnit();
	});

	$('#rsvAmnt').focusin(function(){
		$('#rsvAmnt').val('');
	});

	$('#getAmnt').focusin(function(){
		$('#getAmnt').val('');
	});
	
	$('#rsvAmnt').focusout(function(){
		checkVal();
	});

	$('#getAmnt').focusout(function(){
		checkKor();
	});
	
	$('#rsvAmnt').keyup(function(){
		calcVal();
	});

	$('#getAmnt').keyup(function(){
		calcKor();
	});
	
	
	getUnit();
	
});

function getUnit() {

	var unit = $('#rsvUnit').val();

	var data = {};
	data["unit"] = unit;

	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/rsv/unit",
		data : JSON.stringify(data),
		success : function(result) {
			
			var info = result.info;
			
			unitCd = info.unitCd;
			unitNm = info.unitNm;
			unitSize = info.unitSize;
			unitMin = info.unitMin;
			unitMax = info.unitMax;

			airCommis = info.airCommis;
			basicRateAir = info.basicRateAir;
			bankCommis = info.unitCommis;
			basicRateBank = info.basicRateBank;
			
			basicRate = info.basicRate;
			cms = info.weysCommis;
			
			minKor = unitMin * basicRate;
			maxKor = unitMax * basicRate;
			
			if(unitCd == 'JPY'){
				minKor = minKor / 100;
				maxKor = maxKor / 100;
			}
			minKor = parseInt(minKor);
			maxKor = parseInt(maxKor);
			
			$('#rsvBill').html('0원');
			$('#cmsBill').html('0원');
			$('#couponBill').html('0원');

			$('#basicRate').html(basicRate.toFixed(2).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
			$('#cms').html(cms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '%');

			$('#guid_bank').html(bankCommis + '%');
			$('#guid_weys').html(cms + '%');
			$('#guid_title').html('* ' + unitNm + '(' + unitCd + ') 기준');
			
			var couponList = result.coupon;
			if(couponList.length > 0){
				var couponHtml = '';
				$('#couponHtml').empty();
				for(i=0 ; i<couponList.length ; i++){
					couponHtml += '<div class="transaction-item px-4 py-3"><div class="row align-items-center flex-row"><div class="col col-sm-8"> <span class="d-block text-3">';
					couponHtml += couponList[i].bonusNm;
					couponHtml += '</span><span class="text-muted">유효기간: ';
					couponHtml += couponList[i].endDt;
					couponHtml += '까지</span></div><div class="col-auto col-sm-4 text-center text-1"> <span class="text-2 text-uppercase">';
					couponHtml += '<div data-bonus="' + couponList[i].weysBonus + '" data-bonus-nm="' + couponList[i].bonusNm + '" data-bonus-id="'+ couponList[i].bonusId +'" onclick="selectCoupon(this)" style="padding:5px; border-radius: 5px; width: 60px; background: #0065ff; margin: 0 auto; color: #fff;">선택</div>';
					couponHtml += '</span></div></div></div>';
				}
				couponHtml += '<div class="transaction-item px-4 py-3"><div class="row align-items-center flex-row">';
				couponHtml += '<div class="col col-sm-8"> <span class="d-block text-3">쿠폰 선택 안함</span> <span class="text-muted">쿠폰을 사용하지 않습니다.</span> </div><div class="col-auto col-sm-4 text-center text-1"> <span class="text-2 text-uppercase">';
				couponHtml += '<div data-bonus="0" data-bonus-id="0" onclick="selectCoupon(this)" style="padding:5px; border-radius: 5px; width: 60px; background: #0065ff; margin: 0 auto; color: #fff;">선택</div></span> </div>';
				couponHtml += '</div></div>';

				$('#couponHtml').append(couponHtml);

				$('.rsv-coupons').css('display', 'block');
				$('.rsv-box').css('height', '110');
			} else {
				$('.rsv-coupons').css('display', 'none');
				$('.rsv-box').css('height', '80');
			}
			

			if(diffFlag){
				diffFlag = false;
				$('#diffPosi').css('display', 'none');
				$('#diffBtn').css('display', 'none');
			}
		},
		error : function(result) {

		}
	});
}

function selectCoupon(obj){
	coupon = $(obj).attr("data-bonus");
	couponId = $(obj).attr("data-bonus-id");
	couponNm = $(obj).attr("data-bonus-nm");
	
	var couponTxt = coupon + '% 우대 쿠폰 적용';
	if(coupon == 0){
		couponTxt = '쿠폰선택';
	}
	$('#coupon_use_txt').html(couponTxt);
	$('#c_m_close').trigger('click');
	calcVal();
}

function checkKor(){

	var val = $('#getAmnt').val();
	val = val.replace(/,/g, '');
	var amnt = 0;
	
	if(minKor > val){
		alert('최소 환전 가능 금액은 ' + unitCd + ' ' + unitMin.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ' 입니다.');
		amnt = unitMin;
		return;
		
	} else if(maxKor < val){
		alert('하루 최대 환전 가능 금액은 ' + unitCd + ' ' + unitMax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ' 입니다.');
		amnt = unitMax;
		return ;
	} else {
		amnt = val / basicRate;
		if(unitCd == 'JPY'){
			amnt = amnt * 100;
		}
		amnt = (parseInt(amnt / unitSize)) * unitSize;
	}
	
	$('#rsvAmnt').val(amnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	calcVal();
}

function checkVal(){
	
	var val = $('#rsvAmnt').val();
	val = val.replace(/,/g, '');
	
	if(unitMin > val){
		alert('최소 환전 가능 금액은 ' + unitCd + ' ' + unitMin.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ' 입니다.');
		val = unitMin;
	}
	if(unitMax < val){
		alert('하루 최대 환전 가능 금액은 ' + unitCd + ' ' + unitMax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ' 입니다.');
		val = unitMax;
	}
	val = (parseInt(val / unitSize)) * unitSize;
	$('#rsvAmnt').val(val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	calcVal();
}

function calcKor(){

	var val = $('#getAmnt').val();
	val = val.replace(/,/g, '');
	var amnt = val / (basicRate + (basicRate * cms / 100));
	if(unitCd == 'JPY'){
		amnt = amnt * 100;
	}
	
	if(val > 0 && !diffFlag ){
		diffFlag = true;
		$('#diffPosi').css('display', 'block');
		$('#diffBtn').css('display', 'block');
	}
	
	if(maxKor < val){
		alert('하루 최대 환전 가능 금액은 ' + unitCd + ' ' + unitMax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ' 입니다.');
		amnt = unitMax;
		val = maxKor
	}
	
	amnt = parseInt(amnt);
	val = parseInt(val)

	$('#getAmnt').val(val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	$('#rsvAmnt').val(amnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	
	var cost = amnt * basicRate;
	var wc = amnt * basicRate * cms / 100;
	var air = amnt * basicRateAir;
	var bank = amnt * basicRateBank;
	
	if(unitCd == 'JPY'){
		cost = cost / 100;
		wc = wc / 100;
		air = air / 100;
		bank = bank / 100;
	}

	if(coupon > 0){
		couponBill = wc * coupon / 100;
	} else {
		couponBill = 0;
	}

	var korBill = parseInt(cost + wc - couponBill);

	korBill = Math.floor(korBill / 10.0) * 10;
	bank = Math.floor(bank / 10.0) * 10;
	air = Math.floor(air / 10.0) * 10;

	var airBill = parseInt(air - korBill);
	var bankBill = parseInt(bank - korBill);

	$('#rsvBill').html(parseInt(cost).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	$('#cmsBill').html(parseInt(wc).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	$('#couponBill').html(parseInt(couponBill).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	$('#diffTxt').html(parseInt(airBill).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	
	if(coupon > 0){
		$('#c_m_bonus').css('display', 'initial');
		$('#c_m_bonus').html(coupon + '% 우대');
	} else {
		$('#c_m_bonus').css('display', 'none');
	}
}

function calcVal(){
	
	var val = $('#rsvAmnt').val();
	val = val.replace(/,/g, '');
	
	if(val > 0 && !diffFlag ){
		diffFlag = true;
		$('#diffPosi').css('display', 'block');
		$('#diffBtn').css('display', 'block');
	}
	
	if(unitMax < val){
		alert('하루 최대 환전 가능 금액은 ' + unitCd + ' ' + unitMax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ' 입니다.');
		val = unitMax;
	}

	var cost = val * basicRate;
	var wc = val * basicRate * cms / 100;
	var air = val * basicRateAir;
	var bank = val * basicRateBank;
	
	if(unitCd == 'JPY'){
		cost = cost / 100;
		wc = wc / 100;
		air = air / 100;
		bank = bank / 100;
	}

	if(coupon > 0){
		couponBill = wc * coupon / 100;
	} else {
		couponBill = 0;
	}

	var korBill = parseInt(cost + wc - couponBill);

	korBill = Math.floor(korBill / 10.0) * 10;
	bank = Math.floor(bank / 10.0) * 10;
	air = Math.floor(air / 10.0) * 10;

	var airBill = parseInt(air - korBill);
	var bankBill = parseInt(bank - korBill);

	$('#rsvBill').html(parseInt(cost).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	$('#cmsBill').html(parseInt(wc).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	$('#couponBill').html(parseInt(couponBill).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	$('#getAmnt').val(korBill.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	$('#rsvAmnt').val(val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	$('#diffTxt').html(parseInt(airBill).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	
	if(coupon > 0){
		$('#c_m_bonus').css('display', 'initial');
		$('#c_m_bonus').html(coupon + '% 우대');
	} else {
		$('#c_m_bonus').css('display', 'none');
	}
	$('#c_m_bill').html(parseInt(korBill).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	$('#c_m_b_bill').html(parseInt(bank).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	$('#c_m_a_bill').html(parseInt(air).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

	$('#c_m_b_cms').html('은행(수수료' + bankCommis + '%)');
	$('#c_m_a_cms').html('공항(수수료' + airCommis + '%)');
	$('#c_m_d_bill').html(parseInt(airBill).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
	$('#c_m_title').html(unitCd + ' ' + val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + ' 금액 비교하기' );
	
	weysCommisVal = wc;
}

function rsvDetail(){
	checkVal();
	
	var val = $('#rsvAmnt').val();
	if(val == 0){
		alert('예약하실 금액을 입력해주세요.');
		$('#rsvAmnt').focus();
		return;
	}
	
	var rsvAmnt = $('#rsvAmnt').val();
	var getAmnt = $('#getAmnt').val();
	weysCommisVal = parseInt(weysCommisVal);
	couponBill = parseInt(couponBill);
	rsvAmnt = rsvAmnt.replace(/,/g, '');
	getAmnt = getAmnt.replace(/,/g, '');

	$('#f_basicRate').val(basicRate);
	$('#f_basicRateBank').val(basicRateBank);
	$('#f_rsvAmnt').val(rsvAmnt);
	$('#f_getAmnt').val(getAmnt);
	$('#f_unitCd').val(unitCd);

	$('#f_bonusId').val(couponId);
	$('#f_bonusNm').val(couponNm);
	$('#f_weysBonus').val(coupon);
	$('#f_weysBonusVal').val(couponBill);
	$('#f_weysCommis').val(cms);
	$('#f_weysCommisVal').val(weysCommisVal);
	
	var FORM_BODY = $('form[name=formBody]');
	FORM_BODY.attr('action', '${pageContext.request.contextPath}/p/rsv');
	FORM_BODY.submit();
}

function goPartGuest(){
	location.href = '${pageContext.request.contextPath}/p/guest';
}

function goDownPage(){
	location.href = 'https://weys.page.link/iDVw';
}

function openChannel(){
	ChannelIO('show');
}

</script>
<jsp:include page="../common/naver_js.jsp"></jsp:include>
</html>
