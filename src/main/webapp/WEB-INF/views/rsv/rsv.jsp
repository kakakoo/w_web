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
	
	 <!-- Content
  ============================================= -->
  <div id="content">
	<section class="page-header page-header-text-light bg-dark-3 py-5">
	  <div class="container">
		<div class="row text-center">
		  <div class="col-12">
			<h4 class="text-white">예약하기</h4>
		  </div>
		</div>
	  </div>
	</section>
	<!-- Page Header End --> 
  <div class="login-signup-page mx-auto my-5">
		<div class="col-sm-12 d-flex justify-content-center bg-primary rounded-left rounded-right py-4" style="margin: 0px 8px 0px 8px; width: auto; border-bottom-right-radius: 0!important; border-bottom-left-radius: 0!important;">
		<div class="my-auto text-center">

		  <div class="text-6 font-weight-700 text-white my-4" style="line-height:36px;">${rsvVO.unitCd } <fmt:formatNumber value="${rsvVO.rsvAmnt }" groupingUsed="true"/><br>환전 신청합니다</div>
		  <a href="#guide-guarantee" data-toggle="modal"><p class="text-white"><span id="checkTime" style="padding:5px 10px; border-radius: 20px; background: #fff; color: #465979; width: 60px; height: 28px; font-size: 11px;">30:00</span></p></a>

		</div>
		</div>
      <div class="bg-light shadow-md rounded p-4 mx-2">
          <div class="">
                  <div class="modal-body" style="padding-top:0px;">
                    <div class="row">
                      
                      <div class="col-sm-12" style="padding: 0px;">
                        <div class="" style="margin-top:40px;">
						  <div class="text-4 font-weight-600 my-4" style="color: #2a333d;">■ 환전 거래 정보를 다시 한 번 확인하세요</div>
                          <ul class="list-unstyled">
                            <li class="mb-2">구매하실 외화 <span class="float-right text-3 font-weight-bold">${rsvVO.unitCd } <fmt:formatNumber value="${rsvVO.rsvAmnt }" groupingUsed="true"/></span></li>
                            <li class="mb-2">매매기준율 <span class="float-right text-2"><fmt:formatNumber value="${rsvVO.basicRate }" pattern=".00" groupingUsed="true"/>원</span></li>
							<li class="mb-2">수수료
							<c:if test="${rsvVO.weysBonus > 0 }"><span style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">${rsvVO.weysBonus }% 우대</span> <span class="float-right text-2"><span style="color:darkgray; text-decoration:line-through;"><fmt:formatNumber value="${rsvVO.weysCommisVal }" groupingUsed="true"/>원</span></c:if>
							<c:if test="${rsvVO.weysBonus == 0 }"><span style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #fff; color: #fff; width: 60px; height: 28px; font-size: 11px;"></span> <span class="float-right text-2"><span style="color:darkgray; text-decoration:line-through;"></span></c:if>
							<fmt:formatNumber value="${rsvVO.weysCommisVal - rsvVO.weysBonusVal}" groupingUsed="true"/>원</span></li>
							<li id="cmsTxt" style="display:none;" class="mb-2">보관료 <span id="cms" class="float-right text-2">3,000원</span></li>
                          </ul>
                          <hr class="mb-2">
                          <p class="d-flex align-items-center font-weight-500 mb-1">입금하실 금액 <span id="totalTxt" class="text-5 ml-auto font-weight-bold"><fmt:formatNumber value="${rsvVO.getAmnt}" groupingUsed="true"/>원</span></p>
						  <p style="height: 10px;"></p>
                          <div class="text-4 font-weight-600 my-4" style="color: #2a333d;">■ 외화를 언제, 어디에서 받으시겠어요?</div>
							<ul class="list-unstyled">
							  <div class="form-group">
							    <label for="newPassword">수령장소</label>
							    <select class="custom-select" id="storeId" name="country_id">
								  <option value="">수령하실 장소를 선택하세요</option>
								  <c:forEach var="items" items="${storeList }">
								  	<option data-nm="${items.STORE_NM }" value="${items.STORE_ID }">${items.STORE_NM }</option>
								  </c:forEach>
								</select>
								<div id="store_dp" style="display:none;width: 100%; height: auto; background:#f3f5f6; border-radius: 5px; margin-top: 20px; text-align:center;">
									<div style="padding-left: 20px; padding-top:20px; padding-bottom:20px; font-size:14px; text-align:left;">※ 선택한 수령장소 위치를 확인하세요</div>
									<div id="dp_storeNm" style="padding-left: 20px; font-size:16px; font-weight:600; text-align:left;">인천공항 T1 3층 한진택배 수하물보관소</div>
									<div style="padding-left: 20px; padding-top:10px; text-align:left;"><span id="dp_openTm" style="padding:5px 5px; border-radius: 3px; background: #cecece; color: #2a333d; width: auto; height: 28px; font-size: 11px;">영업시간: 매일 24시간</span></div>
									<div id="dp_storeCmt" style="padding-left: 20px; padding-right:20px; padding-top:10px; font-size:12px; color: #aaaeb2; text-align:left;">3층 출국층 M카운터 부근에 위치한 한진택배 수하물보관소에 방문하여 수령하시면 됩니다.(혼잡시간의 경우 대기시간이 발생할 수 있습니다.)</div>
									<img id="dp_img" src="${pageContext.request.contextPath}/resources/images/ICN1HJ.png" style="width: 80%; margin-top: 20px; margin-bottom:20px;">
									
								</div>
						  	  </div>
							  <div class="form-group">
							    <label for="newPassword">수령일시</label>
							    <select class="custom-select" id="rsvDt" name="country_id">
								  <option value="">수령하실 날짜를 선택하세요</option>
								</select>
						  	  </div>
							  <div class="form-group">
							    <div style="width:48%; float:left;">
									<select class="custom-select" id="rsvHour" name="country_id">
									  <option value="">00시</option>
									</select>
								</div>
								<div style="width:48%; float:right;">
									<select class="custom-select" id="rsvMin" name="country_id">
									  <option value="">00분</option>
									</select>
								</div>
								<div style="clear: both;"></div>
						  	  </div>
					  
					  		<c:if test="${not empty paperList }">
							  <p style="height: 10px;"></p>
							  <div class="text-4 font-weight-600 my-4" style="color: #2a333d;">■ 특별한 요청사항이 있으신가요?</div>
								<ul class="list-unstyled">
								  <div class="form-group">
									<label for="newPassword">권종 옵션</label>
									<select class="custom-select" id="rsvPaper" name="country_id">
									  <option value="">권종 옵션을 선택하세요</option>
									  <c:forEach var="items" items="${paperList }">
									  	<option value="${items.PAPER_TP }">
									  		<c:choose>
												<c:when test="${items.PAPER_TP eq 'B'}">고액권 위주</c:when>
												<c:when test="${items.PAPER_TP eq 'S'}">소액권 포함</c:when>
												<c:otherwise>랜덤</c:otherwise>
											</c:choose>
									  	</option>
									  </c:forEach>
									</select>
								  </div>
							  </ul>
							  </c:if>
							  <p style="height: 10px;"></p>
							  <div class="text-4 font-weight-600 my-4" style="color: #2a333d;">■ 예약자 정보를 알려주세요</div>
								<ul class="list-unstyled">
								  <div class="form-group">
									<label for="newPassword">성명</label>
									<input type="text" class="form-control" id="usrNm" required placeholder="성명을 입력하세요" <c:if test="${not empty info.usrNm }">readonly="readonly"</c:if> value="${info.usrNm }">
								  </div>
								  <div class="form-group">
									<label for="newPassword">주민등록번호</label>
									<input type="tel" class="form-control" id="usrNmId" required placeholder="주민등록번호를 입력하세요('-'제외)" <c:if test="${not empty info.usrNm }">readonly="readonly"</c:if> value="${info.usrNmId }">
								  </div>
								  <div class="form-group">
									<label for="newPassword">휴대전화번호</label>
									<input type="tel" class="form-control" id="usrTel" required placeholder="휴대전화번호를 입력하세요" <c:if test="${not empty info.usrTel }">readonly="readonly"</c:if> value="${info.usrTel }">
								  </div>
								  <div class="form-group">
									<label for="newPassword">이메일 주소</label>
									<input type="email" class="form-control" id="usrEmail" required placeholder="이메일 주소를 입력하세요" <c:if test="${not empty info.usrTel }">readonly="readonly"</c:if> value="${info.usrEmail }">
								  </div>
							  </ul>
							  <p style="height: 10px;"></p>
							  <div class="text-4 font-weight-600 my-4" style="color: #2a333d;">■ 결제 방법을 선택하세요</div>
								<ul class="list-unstyled">
								  <div class="form-group">
									<label for="newPassword">결제 방법</label>
									<select class="custom-select" id="inputCountry" name="country_id">
									  <option value="V" selected="selected">무통장 입금</option>
									</select>
								  </div>
								  <div class="form-group">
									<label for="newPassword">입금 은행</label>
									<select class="custom-select" id="vbank" name="country_id">
									  
									   <c:forEach var="items" items="${bankList }">
									  	<option value="${items.VBANK_CD }">${items.VBANK_NM }</option>
									  </c:forEach>
									</select>
								  </div>
								 
							  </ul>
							  <p style="height: 10px;"></p>
							  <div class="text-4 font-weight-600 my-4" style="color: #2a333d;">■ 거래 약관을 읽고 동의하세요</div>
							  <div class="form-group">
                  
									  <div class="accordion accordion-alternate" id="accordionAlternate">
								  <div class="card">
									<div class="card-header" id="headingOneAlternate">
									  <h5 class="mb-0"> <a href="#" class="collapsed" data-toggle="collapse" data-target="#collapseOneAlternate" aria-expanded="false" aria-controls="collapseOneAlternate">서비스 이용약관</a> </h5>
									</div>
									<div id="collapseOneAlternate" class="collapse" aria-labelledby="headingOneAlternate" data-parent="#accordionAlternate">
									  <div class="card-body"><textarea readonly="" cols="1" rows="5" style="resize: none;font-size:11px; width: 100%; border: none; color: #656565; line-height: 15px;">제1장 총칙
 

제1조 (목적)
본 약관은 주식회사 그레잇(이하 ‘회사’)가 제공하는 웨이즈 온라인 환전 서비스(이하 ‘서비스’)의 이용과 관련하여 회사와 회원 간의 권리, 의무 및 책임 사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

 

제2조 (용어의 정의)
①본 약관에서 사용하는 용어의 정의는 다음과 같습니다.

회원: 본 약관을 승인하고 회원가입을 하여 회사와 서비스 이용계약을 체결한 자를 말합니다.
아이디: 회원의 식별과 서비스 이용을 위하여 회원이 가입 시 입력한 전자우편 주소를 말합니다.
서비스페이지: 회원이 회사의 서비스를 이용하게 하려고 회사가 제공하는 서비스 내에서 제공되는 세부 페이지들을 말합니다.
비밀번호: 회원의 동일성 확인과 회원 정보의 보호를 위하여 회원이 회사가 승인한 문자와 숫자의 조합대로 설정한 것을 말합니다.
멤버십: 회원이 결제를 통해 회사가 제공하는 수수료 없는 환전 서비스를 이용할 수 있는 자격을 말합니다.
예약환전: 회원이 서비스를 통해 신청, 입금하고 약속된 장소에서 외화를 받는 거래를 말합니다.
②본 약관에서 사용하는 용어 중 본조에서 정하지 아니한 것은 웨이즈 서비스의 안내 및 관계 법령에서 정하는 바에 따르며, 그 외에는 일반 상 관례에 따릅니다.

 

제3조 (약관의 명시, 효력 변경)

①본 약관의 사본을 회사의 서비스 페이지, 팝업화면, 전자문서의 전송(전자우편 또는 기타 전자적 장치를 이용한 전송) 또는 기타의 방법으로 사용자에게 제공해야하며, 고객과 환전 업무와 관련한 계약을 체결할 때 약관을 명시하여야 합니다.

②이용자가 회원으로 가입 시 본 약관에 동의함으로써 본 약관의 효력이 발생합니다.

③회사는 ‘약관의 규제에 관한 법률’, ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’ 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.

④회사가 약관을 개정할 경우에는 적용 일자 및 개정 사유를 명시하여 현행약관과 함께 회사 사이트의 서비스페이지, 팝업화면 또는 기타의 방법으로 개정약관을 시행 일자 7일 이전부터 시행 일자 전날까지 공지합니다.

⑤회원이 개정약관의 적용에 동의하지 않는 경우에는 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다.

⑥회사는 회원이 본 약관의 내용에 대한 설명을 요청하는 경우 다음의 각호의 어느 하나의 방법으로 고객에게 약관의 중요 내용을 설명하여야 합니다.

약관의 중요내용을 고객에게 직접 설명
약관의 중요 내용에 대한 설명을 전자적 장치를 통해 회원이 알기 쉽게 표시하고 고객으로부터 해당 내용을 충분히 인지하였다는 의사표시를 전자적 장치를 통해 수령
⑦회사가 전항에 따라 회원에게 통지하면서 공지/고지일로부터 개정약관 시행일 7일 후까지 거부 의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 알렸음에도 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 제8조 1항의 규정에 따라 이용계약을 해지할 수 있습니다.

⑧회원은 회사가 제공하는 서비스를 이용하면서 전자상거래 등에서의 소비자보호에 관한 법률(예시: 공급서, 반품 등 통신판매에 관한 규정), 전자문서 및 전자거래 기본법(예시: 사업자의 의무에 관한 규정), 정보통신망 이용촉진 및 정보보호 등에 관한 법률(예시: 개인정보보호에 관한 규정) 등 관련 법령을 준수하여야 하며, 본 약관의 규정을 들어 관련 법령 위반에 대한 면책을 주장할 수 없습니다.

 

제4조 (약관 외 준칙)
본 약관에서 정하지 아니한 사항과 본 약관의 해석에 관하여는 외국환거래법, 전자금융거래법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 제정한 전자상거래 등에서의 소비자 보호 지침 및 관련 법령의 규정 등 관련 법규 및 일반관례에 의합니다.

 

제2장 서비스 이용 신청 및 승낙 (회원가입 및 탈퇴)
 

제5조 (이용계약의 성립)
①이용자는 회사가 정한 가입 양식에 따라 회원 정보를 기재한 후 본 약관에 동의한다는 의사표시를 함으로써 회원가입을 신청합니다.

②이용 계약은 회원 ID 단위로 체결합니다. 이용계약이 성립되면, 이용신청자는 회원으로 등록됩니다.

③민법상 미성년자의 회원이 유료 서비스를 이용할 경우, 미성년자인 회원은 결제 전 법정대리인의 동의를 얻어야 합니다.

 

제6조 (이용신청)
①이용신청은 온라인으로 회사가 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 신청합니다.

②회사는 회원에게 다양하고 유익한 정보를 제공하기 위하여 이용 신청자에게 직업, 취미, 관심 분야 등의 정보를 제공할 것을 요청할 수 있습니다. 다만, 이용신청자는 그러한 정보의 제공을 거절할 수 있습니다.

③서비스 가입신청 양식에 기재하는 모든 회원 정보는 실제 데이터인 것으로 간주하며 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스 이용에 제한을 받을 수 있습니다.

④사실과 다른 정보, 거짓 정보를 기재하거나 추후 그러한 정보임이 밝혀질 경우 회사는 서비스 이용을 일시 정지하거나 영구정지 및 이용 계약을 해지할 수 있습니다. 이로 인하여 회사 또는 제3자에게 발생한 손해는 해당 회원이 모든 책임을 집니다.

⑤회원은 서비스 사용에 있어, 본 서비스를 불법재산 은닉, 자금세탁행위 등 탈법행위를 목적으로 사용하지 않음을 동의합니다.

 

제7조 (회원정보사용에 대한 동의 및 이용신청의 승낙)
①회사는 회원의 개인정보를 본 이용계약의 이행과 본 이용 계약상의 서비스 제공을 위한 목적으로만 이용합니다.

②회사는 회원이 회사 소정의 가입신청 양식에서 요구하는 모든 사항을 정확히 기재하여 이용신청을 한 경우 회원가입을 승낙할 수 있습니다.

③회사는 다음 각호에 해당하는 이용신청에 대하여는 승낙을 유보할 수 있습니다.

설비에 여유가 없는 경우
기술상 지장이 있는 경우
기타 회사의 사정상 이용승낙이 곤란한 경우
④회사는 다음 각호에 해당하는 이용신청에 대하여는 이를 승낙하지 아니할 수 있습니다.

실명이 아닌 경우
타인의 명의를 사용하여 신청한 경우
이용 신청 시 필요 내용을 허위로 기재하여 신청한 경우
기타 회사가 정한 이용신청 요건이 미비한 경우
⑤회사는 이용계약을 위하여 회원이 제공한 개인정보를 회사 서비스 운영을 위한 목적 이외의 용도로 사용하거나 이용자의 동의 없이 제3자에게 제공하지 않습니다. 단, 다음 각 호의 경우에는 예외로 합니다.

법령에 근거하여 회원정보의 이용과 제3자에 대한 정보제공을 허용하고 있는 경우
기타 회사의 약관 및 정책에 따라 이용자의 동의를 구한 경우
⑥회사는 회원의 개인정보를 보호하기 위해 ‘개인정보처리방침’을 수립하고 개인정보 보호 책임자를 지정하여 이를 게시하고 운영합니다.

 

제8조 (이용계약 중지 및 해지)
①회원이 이용계약을 해지하고자 할 때는 회원 본인이 서비스 내 회원탈퇴 기능, 전자우편, 또는 기타의 방법을 통해 회사에 해지 신청을 하여야 합니다. 다만, 회원은 해지 의사를 통지하기 전에 모든 거래 중인 절차를 완료, 철회 또는 취소해야만 합니다. 이 경우 철회 또는 취소로 인한 불이익은 회원 본인이 부담하여야 합니다.

②회원이 계약을 해지하는 경우, 회원이 작성한 인적사항 및 거래 내용,  멤버십 등 회원 정보와 관련된 일체의 정보는 삭제됩니다.

③전 항에 따라 해지를 한 회원은 본 약관이 정하는 회원 가입절차와 관련 조항에 따라 회원으로 다시 가입할 수 있습니다.

④회사는 서비스의 신뢰성 및 안전을 위해서 아래와 같은 행위를 금지하며, 이를 위반 시 서비스 이용을 제한하거나 이용계약을 해지할 수 있습니다.

서비스 운영을 고의로 방해한 경우
가입한 이름이 실명이 아닌 경우
서비스의 안정적 운영을 방해할 목적으로 다량의 정보를 전송하거나 광고정보를 전송하는 경우
정보통신설비의 오작동이나 정보 등의 파괴를 유발하는 컴퓨터 바이러스 프로그램 등을 유포하는 경우
타인의 개인정보, ID 및 비밀번호로 부정하게 사용하는 경우
회사의 서비스 정보를 이용하여 얻은 정보를 회사의 사전승낙 없이 복제 또는 유통하거나 상업적으로 이용하는 경우
같은 사용자가 다른 ID로 이중등록을 한 경우
방송통신심의위원회 등 외부기관의 시정요구가 있거나 불법 선거운동과 관련하여 선거관리위원회의 유권해석을 받은 경우
본 약관을 포함하여 기타 회사가 정한 이용조건에 위반한 경우
회사가 정하지 않은 비정상적인 방법으로 서비스를 이용하거나 시스템에 접근하는 행위
기타 관계 법령에 어긋나는 행위라고 객관적으로 판단되는 행위
⑤회사는 이용제한을 하고자 하는 경우에는 그 사유, 일시 및 기간을 정하여 전자우편 또는 전화, 모바일 메시지 기능 등의 방법을 이용하여 해당 회원에게 통지합니다. 다만, 회사가 긴급하게 이용을 중지해야 할 필요가 있다고 인정하는 경우에는 본 항의 과정 없이 서비스 이용을 제한할 수 있습니다.

⑥서비스 이용중지를 통지받은 회원은 이용중지에 대하여 이의가 있으면 제29조 (분쟁처리절차)에 의해 이의 신청을 할 수 있으며, 이용 중지 사유가 해소된 것이 확인된 경우에는 이용 중지 조치를 해제합니다.

⑦회사가 서비스 이용을 중지 또는 제한시킨 후 같은 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우, 또는 본조 4항의 위반 행위가 있는 경우, 회사는 이용계약을 해지할 수 있습니다.

⑧회사가 이용계약을 해지하는 경우에는 회원등록을 말소합니다. 회사는 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.

⑨제8조 4항에 따라 회사가 이용계약을 해지하는 경우, 회사는 별도의 통지 없이 해당 회원과 관련된 거래를 취소할 수 있습니다. 이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하여야 하고, 회사는 일체의 책임을 지지 않습니다.

 

제9조 (회원 정보의 변경)
①회원은 서비스페이지에서 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 정보(성명, 주민등록번호 등)는 수정할 수 없습니다.

②회원은 회원가입 신청 시 기재한 사항이 변경되었을 경우 서비스페이지에서 수정하거나 전자우편 등 기타 방법으로 회사에 대하여 그 변경사항을 알려야 합니다.

③본조 2항의 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.

 

제3장 회사 및 회원의 의무
 

제10조 (회사의 의무)
①회사는 관계 법령과 본 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 웨이즈 서비스를 제공하기 위하여 최선을 다하여 노력합니다.

②회사는 회원이 안전하게 서비스를 이용할 수 있도록 개인정보보호를 위한 보안시스템을 갖추며, 개인정보보호 정책을 공지하고 이를 준수합니다.

③회사는 서비스이용과 관련하여 회원으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. 회원이 제기한 의견이나 불만 사항에 대해서는 전화, 전자우편 등의 방법을 통하여 회원에게 처리 과정 또는 결과를 전달합니다.

④회사는 공인된 결제대금예치업자에게 결제 대금을 예치하고, 이행(지급)보증보험을 가입하여 회원의 환전대금을 안전하게 보호합니다.

⑤회사는 ‘외국환거래법’에 따른 ‘외국환 환전 영업’ 업무를 수행하며 관계 법령을 준수합니다.

 

제11조 (회원의 의무)
①회원은 본 약관 및 회사가 서비스 화면에서 알리는 내용을 준수하여야 합니다.

②회원은 회사의 서비스를 이용할 경우 실명으로 거래하여야 하며, 회사가 실명확인을 위해 회원에게 실명확인증표 등 필요한 자료를 요구할 경우 이에 따릅니다.

③회원은 회사가 서비스를 안전하게 제공할 수 있도록 회사에 협조하여야 하며, 회사가 회원의 약관 위반행위를 발견하여 회원에게 해당 위반행위에 대하여 소명을 요청할 경우 회원은 회사의 요청에 적극적으로 응하여야 합니다.

 

제12조 (거래기록 보존 및 비밀보장의 의무)
①회사는 외국환거래법 및 관련 법령에 따라 고객과의 환전거래 기록을 5년간 보관해야 합니다.

②회사는 ‘회원의 인적사항, 계좌정보, 회사와의 환전거래 내용 및 실적에 관한 자료 등 외국환 환전 업무 수행을 통하여 알게 된 일체의 회원 정보’(이하 ‘회원 정보’)에 대하여 관계법령에서 정한 경우를 제외하고는 회원의 동의 없이 제3자에게 제공하거나 업무 목적 외에 누설하거나 이용하여서는 아니 됩니다.

③회사가 관리소홀 등 회사의 귀책사유로 본조 2항을 위반하거나 회원정보의 도난 또는 유출이 발생한 경우 회사가 피해회원에게 배상 책임이 있습니다. 다만, 회사가 고의 또는 과실이 없음을 증명한 경우에는 그 책임을 면할 수 있습니다.

 

제4장 서비스 이용
 

제13조 (서비스의 종류 및 이용)
①회사에서 제공하는 서비스에는 외국환 환전 멤버십 서비스, 예약 환전, 외화 배송 등이 있습니다.

②전항의 제공 서비스 중 일부는 회사의 정책에 따라 유료로 제공될 수 있습니다.

③서비스 이용은 회원의 이용계약 승낙 직후부터 가능합니다. 다만 유료 서비스의 경우 회사가 요금 납부를 확인한 직후부터 가능하게 할 수 있습니다.

④회사가 제공하는 서비스의 종류는 회사의 사정으로 변경될 수 있습니다.

 

제14조 (서비스 내용의 공지 및 변경)
①회사는 서비스의 종류에 따라 각 서비스의 특성, 절차 및 방법에 대한 사항을 서비스 화면을 통하여 공지하며, 회원은 회사가 공지한 각 서비스에 관한 사항을 이해하고 서비스를 이용해야 합니다.

②회사가 신규 서비스의 개시 등의 사유로 서비스 내용이 변경되거나 서비스가 종료되는 경우 회사는 회원의 등록된 전자우편 주소로 이메일을 통하여 서비스 내용의 변경 사항 또는 종료를 통지할 수 있습니다. 단, 제휴 서비스는 제외합니다.

③전항의 경우 불특정 다수인을 상대로 통지를 함에서는 서비스 내 공지사항, 웹사이트 팝업 등을 통하여 회원들에게 통지할 수 있습니다. 단, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항은 상당한 기간 게시판을 통해 이를 공지하고 전자우편 또는 기타 수단을 통하여 통지합니다.

④회사의 사유로 회원이 신청한 유료 서비스가 종료되는 경우에는 서비스를 이용하는 회원에게는 반드시 전자우편 또는 기타 방법으로 이를 알리며 환불이 필요한 회원에게는 회사의 규정에 따라 환불 처리합니다.

⑤회사는 이용 감소로 인한 원활한 서비스 제공의 곤란 및 수익성 악화, 기술 진보에 따른 차세대 서비스로의 전환 필요성, 서비스 제공과 관련한 회사 정책의 변경 등 기타 타당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를 변경 또는 중단할 수 있습니다.

⑥회사는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요로 수정, 중단, 변경할 수 있으며, 이에 대하여 관련 법령에 특별한 규정이 없는 한 회원에게 별도의 보상을 하지 않습니다.

⑦회사는 이미 제공 중인 서비스 내용, 이용방법, 이용시간에 대하여 변경 또는 서비스 중단이 있는 경우, 적어도 변경 30일 이전에 공지하여야 하며, 회원이 공지 내용을 조회하지 않아 입은 손해에 대해서는 책임지지 않습니다.

 

제15조 (서비스의 유지 및 중지)
①서비스의 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 정기 점검 등의 필요로 회사가 정한 날이나 시간은 그러하지 않습니다.

②회사는 서비스를 일정 범위로 나누어 각 범위별로 이용 가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공지합니다.

③회사는 다음 각호에 해당하면 서비스 제공을 중지할 수 있습니다.

서비스용 설비의 보수 등 공사로 인한 부득이한 경우
전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우
회사가 직접 제공하는 서비스가 아닌 제휴업체 등의 제3자를 이용하여 제공하는 서비스의 경우 제휴업체 등 제3자가 서비스를 중지했을 경우
회원이 유료 서비스의 비용을 지불하지 않을 경우
기타 불가항력적 사유가 있는 경우
④회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다.

⑤회사는 새로운 서비스로 교체 또는 기타 회사가 서비스를 제공할 수 없는 사유 발생 시 제공되는 서비스를 중단할 수 있습니다.

 

제16조 (정보의 제공 및 광고의 게재)
①회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 서비스 내 공지사항, 서비스 화면, 전자우편 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 관련법에 따른 거래 관련 정보 및 고객 문의 등에 대한 답변 등을 제외하고는 언제든지 위 정보제공에 대해서 수신 거절을 할 수 있습니다.

②회사는 서비스의 운영과 관련하여 회사가 제공하는 서비스 화면 및 홈페이지 등에 광고를 게재할 수 있습니다.

 

제17조 (회원에 대한 통지)
①회사가 회원에 대해 통지를 하는 경우 본 약관에 별도 규정이 없는 한 전자우편, 공지사항 등으로 할 수 있습니다.

②회사는 회원 전체에 대한 통지의 경우 7일 이상 회사의 웹사이트 또는 서비스 내 공지사항 화면에 게시함으로써 전항의 통지에 갈음할 수 있습니다.

 

제5장 멤버십 서비스 이용료 및 수수료
 

제18조 (멤버십 서비스 이용료의 내용)
①회사는 회원에게 멤버십 서비스를 이용하는 대가로 이용료를 부과합니다.

②회사는 멤버십 회원에게 환전수수료를 부과하지 않고 공시된 매매기준율을 적용합니다.

③회사는 멤버십 서비스의 형태와 내용을 추가하거나 변경 등을 통해 다양화할 수 있습니다.

④회사는 이벤트 또는 프로모션을 통해 선정된 회원에게 멤버십 서비스를 무료로 제공할 수 있습니다.

 

제19조 (멤버십 서비스 이용료의 환불)
①회원의 귀책사유 없이 회원이 회사에 멤버십 서비스를 신청하여 지정계좌에 입금하고, 서비스 장애 등 회사의 사정으로 서비스를 정상적으로 이용할 수 없는 경우 환불을 요청할 수 있습니다.

②회사는 회원으로부터 제1항의 환불신청을 받은 경우 특별한 사정이 있는 경우를 제외하고는 애초 회원이 지정계좌에 입금한 금액 및 제27조 (손해배상)에 따른 해당금액 등을 고객에게 지급하여야 합니다.

③다음 각호에 해당하면 멤버십 서비스 이용료에 대한 환불이 불가능합니다.

멤버십 서비스 유효 기간의 경과
멤버십 서비스를 이용하여 1회 이상 환전 서비스를 이용한 경우(멤버십 회원이 예약환전을 통해 환전 신청 및 입금 후 취소한 경우에도 1회 환전한 것으로 판단합니다.)
결제를 통하지 않고 이벤트 또는 프로모션을 통해 지급받은 멤버십
 

제20조 (수수료의 내용)
①회사는 회원에게 서비스를 이용하는 대가로 수수료를 부과합니다. 수수료는 환전수수료, 외화배송료 등 세부 항목별로 구분하여 그 내용을 회원에게 제공해야 합니다.

②수수료의 세부 항목 및 내용은 다음과 같습니다.

환전수수료: 환율 스프레드(통화별 차이가 있으며, 서비스 내 실시간 환율 및 스프레드 고지)
외화배송료: 건당부과(수령방법 및 장소에 따라 서비스 내 별도 고지)
③수수료는 환전 영업점 방문, 예약환전 서비스 모두 같이 적용됩니다.

④수수료를 회사가 부과하면서 회사가 취득하게 되는 이자 수입 및 환차손익은 회사의 서비스 운영 시 발생하는 부가적인 수익 또는 손실로서의 성질을 가지며, 회원은 이에 대한 반환을 청구할 수 없습니다.

 

제6장 예약환전 지급 및 수령
 

제21조 (적용환율)
①회사는 회원에게 적용할 환율에 관한 사항을 제공하여야 합니다.

②회사는 회원의 구분(멤버십 여부)에 따라 적용환율을 다르게 제공할 수 있습니다.

③회사는 회원에게 적용할 환율에 관한 사항을 서비스 페이지 등에 게시하고 이를 최신 내용으로 관리하여야 합니다.

④회사는 회원에게 적용할 환율을 KEB하나은행 고시 환율을 기반으로 제공합니다.

 

제22조 (지급, 수령금액)
①회원은 환전신청 시 환전금액 및 수령방법(장소), 수령일시를 지정해 회사에 고지(통보)하여야 합니다. 다만 수령장소와 수령일시는 회사가 허용하는 장소와 시간인 경우에 한정합니다.

②회사는 회원으로부터 예약환전 서비스 이용신청을 받은 경우 회원이 지급 또는 수령하는 자금의 원화 표시 및 외화 표시 금액에 관한 사항을 회원에게 제공하여야 합니다.

③회사는 예약환전 서비스를 신청한 회원이 지정계좌에 입금할 경우 수수료를 차감한 금액을 외화로 환전하여 고객이 요청한 시간과 장소에서 고객에게 전달해야 합니다.

④회사는 회원이 요청한 수령방법이 불가한 경우 또는 수령시점에 전달이 불가한 경우에는 해당 사유를 즉시 통보하여야 합니다.

⑤회원은 외국환거래법에 따라 외국통화의 매입만 가능하며, 수령일 기준 1일 최대 USD 2,000 이하로 환전을 요청할 수 있습니다.

 

제23조 (소요기간)
①회사는 회원으로부터 예약환전 서비스 이용신청을 받은 경우 회원에게 지급 또는 수령에 드는 예상 기간에 관한 사항을 제공하여야 합니다.

②회사는 회원이 예약환전 서비스를 이용할 경우 지급 또는 수령에 드는 예상 기간에 관한 사항을 서비스페이지 등에 게시하고 이를 최신 내용으로 관리하여야 합니다.

 

제24조 (예약의 변경, 취소)
①회원은 예약환전 서비스를 신청하여 외화배송이 완료되지 않은 건에 대하여 유선 또는 고객센터 등을 통하여 회사에 변경 또는 취소를 신청할 수 있습니다. 단, 회원에게 외화배송이 완료된 건에 대해서는 변경 또는 취소를 신청할 수 없습니다.

②회사는 회원으로부터 예약환전 건에 대한 변경 또는 취소를 요청받은 경우 해당 요청사항을 처리하고 그 결과를 회원에게 통보하여야 합니다.

 

제 25 조 (예약환전 과정과 결과의 통보)
회사는 예약환전을 신청한 회원에게 예약 접수, 입금 확인 및 지급 또는 수령이 완료된 경우 즉시 그 결과를 회원이 사전에 등록한 연락처 등을 통하여 회원에게 통지하여야 합니다.

 

제26조 (환불)

①회원의 귀책사유 없이 회원이 회사에 본 서비스를 신청하여 지정계좌에 입금하고, 고객이 지정한 수령예정일에 외화를 정상적으로 받지 못한 경우 환불을 요청할 수 있습니다.

②회사는 회원으로부터 제1항의 환불신청을 받은 경우 특별한 사정이 있는 경우를 제외하고는 애초 회원이 지정계좌에 입금한 금액 및 제27조 (손해배상)에 따른 해당금액 등을 고객에게 지급하여야 합니다.

③회원의 귀책사유로 환불을 진행할 경우 환전업무와 관련되어 발생된 비용에 대해 차감 후 지급할 수 있으며, 이에 대한 사항은 회사 홈페이지 또는 앱 등을 통해 고객의 환전 신청 및 환급 요청시 고객에게 제공하여야 합니다.

④회원의 귀책사유로 환불을 진행할 경우 다음 각호에 따라 해당 금액 등을 3영업일 이내 고객에게 지급하여야 합니다.

멤버십 회원 환전
1) 예약수령일 전날 23시 59분 이전 취소 시: 입금액 전액 환불(멤버십 한도는 차감)
2) 예약수령일 당일 00시 이후 취소 시: 제20조 2항의 외화배송료를 제외한 금액 환불(멤버십 한도는 차감)

일반 회원 환전
1) 예약수령일 전날 23시 59분 이전 취소 요청 시: 제20조 2항의 환전수수료를 제외한 금액 환불
2) 예약수령일 당일 00시 이후 취소 요청 시: 제20조 2항의 환전수수료와 외화배송료를 제외한 금액 환불

⑤전항의 내용에 명시한 회원의 귀책사유는 다음 각호와 같습니다.

회원의 변심에 의한 경우
기타 회원의 과실에 의한 경우(등록한 수령예정일시에 미수령 등)
 

제7장 손해배상 및 면책조항
 

제27조 (손해배상)
①회사의 책임 있는 사유로 인하여 회원에게 손해가 발생한 경우 회사의 손해배상 범위는 민법에서 정하고 있는 통상손해를 포함하고, 특별한 사정으로 인한 손해는 회사가 그 사정을 알았거나 알 수 있었을 때만 배상 책임이 있습니다.

②회사는 본조 1항의 내용을 제외하거나 본 약관에서 규정한 내용을 벗어난 거래를 통해서 발생한 손해에 대해서 책임을 지지 않습니다.

 

제28조 (면책조항)
①회사는 다음 각호에 해당하는 경우에는 책임을 지지 않습니다.

전시, 사변, 천재지변 또는 이에 준하는 국가 비상사태 등 어쩔 수 없는 경우
이용자의 고의 또는 과실로 인하여 손해가 발생한 경우
 

제29조 (분쟁처리절차)
①회사는 ‘외국환 환전 업무’와 관련하여 회원이 제기하는 정당한 의견이나 불만을 반영하고 회원이 외국환 환전 업무와 관련하여 입은 손해를 배상하기 위한 절차’(이하 ‘분쟁처리절차’) 및 분쟁처리 책임자를 정하고 있습니다.

분쟁처리 책임자: 조은용
전화: 1670-2160
전자우편: help@weys.exchange
②회원은 서면(전자 문서 포함) 또는 전자적 장치를 이용하여 회사에 분쟁처리를 신청할 수 있으며, 회사는 15일 이내에 이에 대해 조사 또는 처리결과를 회원에게 서면(전자 문서 포함) 또는 전자적 장치를 이용하여 안내합니다.

③회사는 다음 각호에 해당하는 회원의 이의 제기 내용에 대해 아래와 같이 처리합니다.

단순불만 사항: 회원이 신청한 내용에 대해서 분쟁처리책임자의 책임으로 조사 또는 처리하며, 그 결과를 15일 이내에 회원에게 서면(전자문서 포함) 또는 전자적 장치를 이용하여 안내합니다.
손해배상요구사항 : 회원이 신청한 내용에 대해서 분쟁처리책임자의 책임으로 조사 또는 처리하며, 그 결과를 15일 이내에 회원에게 서면(전자문서 포함) 또는 전자적 장치를 이용하여 안내합니다.
④회원은 회사의 분쟁 처리결과에 대해 이의가 있으면 금융감독원의 금융분쟁조정위원회나 한국 소비자원의 소비자분쟁조정위원회에서 서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.

⑤금융감독원의 분쟁조정결과 이용과정에서 회사에 책임이 있는 사실이 밝혀질 경우 회사는 이용대금의 전액을 부담합니다. 다만 회원 또는 회사가 금융감독원 또는 한국소비자원의 분쟁조정결과에 불복하여 관할법원에 민사소송을 제기하는 경우에는 그러하지 아니합니다.

 

제30조 (관할법원 및 준거법)
①이 거래와 관련한 분쟁이 발생할 경우 양 당사자의 합의에 따라 해결함을 원칙으로 합니다. 다만 당사자 간에 합의할 수 없거나 합의가 이루어지지 않아 이 거래와 관련하여 소송이 제기되는 경우 관할법원은 민사소송법에서 정하는 바에 따르기로 합니다.

②서비스 이용과 관련하여 회사와 회원 간의 소송에는 대한민국 법을 적용합니다.

 

부칙

본 약관은 2018년 5월 1일부터 적용됩니다.</textarea></div>
									</div>
								  </div>
								  <div class="card">
									<div class="card-header" id="headingTwoAlternate">
									  <h5 class="mb-0"> <a href="#" class="collapsed" data-toggle="collapse" data-target="#collapseTwoAlternate" aria-expanded="false" aria-controls="collapseTwoAlternate">개인정보취급방침</a> </h5>
									</div>
									<div id="collapseTwoAlternate" class="collapse" aria-labelledby="headingTwoAlternate" data-parent="#accordionAlternate">
									  <div class="card-body"><textarea readonly="" cols="1" rows="5" style="resize: none;font-size:11px; width: 100%; border: none; color: #656565; line-height: 15px;">주식회사 그레잇(이하 ‘회사’)은 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법, 통신비밀보호법, 전기통신사업법 등 정보통신 서비스 제공자가 준수하여야 할 관련 법령상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다. 회사는 개인정보처리방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 개인정보처리방침을 개정하는 경우 서비스 공지사항(또는 개별공지)을 통하여 공지할 것입니다. 본 방침은 2018년 3월 1일부터 시행됩니다.

 

제1장 개인정보 수집ㆍ이용에 관한 동의

 

제1조 (개인정보 수집ㆍ이용에 관한 동의)

수집하는 개인정보의 항목 및 수집방법
1)수집하는 개인정보의 항목
①회사는 제공하는 서비스에 따라 다음과 같은 개인정보를 필수항목으로 수집하고 있습니다.
– 공통: 휴대전화번호, 전자우편주소, 비밀번호, 닉네임
– 멤버십: 성명, 휴대전화번호
– 예약환전: 성명, 주민등록번호, 휴대전화번호, 전자우편주소
②회사는 다음과 같은 회원의 개인정보를 선택항목으로 수집할 수 있습니다.
– 프로필 사진
2) 서비스 이용 과정이나 사업 처리 과정에서 다음과 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
– IP주소, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록, 기기 정보, 채팅 기록, 앱 설치정보, 네트워크정보 등
3) 서비스 이용과정에서 다음과 같은 정보들이 수집될 수 있습니다.
– 신용카드 결제 시: 카드사명, 카드번호 등
– 휴대전화 결제 시: 휴대전화번호, 통신사, 결제승인번호 등
– 환불 요청 시: 은행명, 계좌번호, 예금주명 등
개인정보 수집방법
회사는 다음과 같은 방법으로 개인정보를 수집합니다.

– 홈페이지(회원가입, 경품 응모, 제휴), 모바일, 경품 행사 응모, 배송 요청

– 제휴사로부터의 제공

– 생성 정보 수집 툴을 통한 수집

 

제2조 (개인정보의 수집 및 이용목적)

회사는 회원의 동의가 있거나 법령의 규정에 의한 경우를 제외하고는 본 조에서 고지한 범위를 넘어 이용자의 개인정보를 활용하지 않습니다. 수집한 개인정보 활용의 목적은 아래와 같습니다.

회원 관리: 회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 가입 및 가입횟수 제한, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록 보존, 연령확인, 불만처리 등 민원처리, 고지사항 등 최신 정보 전달
서비스 운영: 서비스 제공에 관한 계약 이행 및 멤버십 서비스 제공에 따른 이용료 정산, 콘텐츠 제공, 물품배송 또는 청구서 등 발송, 금융거래 실명 인증 및 외국환 환전 서비스 제공
마케팅 및 광고: 신규 서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 전달, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계
관세청 및 국세청 신고를 위한 수집 및 이용
 

제3조 (개인정보의 보유 및 이용기간)

회사는 회원이 회원자격을 유지하고 있는 동안 수집된 회원의 개인정보를 보유ㆍ이용할 수 있습니다.
회원이 탈퇴하거나 자격을 상실할 경우, 회사는 회원의 별도 요청이 없더라도 수집된 회원정보를 삭제 및 파기합니다. 단, 회원의 탈퇴 또는 자격상실에도 불구하고 다음의 정보는 아래의 이유로 명시 기간 동안 보존됩니다.
1) 회사 내부 방침에 의한 정보 보유
– 회원 간의 분쟁 및 문제 해결을 위한 회원정보 기록 : 1개월
– 이용 제한 회원 및 부정이용자의 재가입 제한을 위한 회원정보 기록: 제한기간에 따라 1년 또는 영구(별도저장)
2) 관계법령에 의한 정보 보유
– 표시/광고에 관한 기록: 6개월 (전자상거래 등에서의 소비자보호에 관한 법률)
– 계약 또는 청약철회 등에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)
– 대금결제 및 재화 등의 공급에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)
– 외국환 환전 거래에 관한 기록: 5년 (외국환거래법 등에서의 환전장부 보관에 관한 법률)
– 소비자의 불만 또는 분쟁 처리에 관한 기록: 3년 (전자상거래 등에서의 소비자보호에 관한 법률)
– 로그인 기록: 3개월 (통신비밀보호법)
 

제4조 (동의의 거부권 및 거부 시의 불이익 고지)

회원은 개인정보 수집ㆍ이용에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 및 이행 등을 위해 필요한 최소한의 개인정보 수집ㆍ이용에 관한 동의를 거부하는 경우에는 서비스 이용이 불가하고, 마케팅 활동 및 홍보를 위한 개인정보 수집ㆍ이용 및/또는 선택적 수집ㆍ이용에 관한 동의를 거부하는 경우에는 이벤트, 혜택에 대한 정보를 제공받지 못하거나 사은품ㆍ판촉물 제공, 제휴서비스 이용, 할인 혜택 적용 등의 불이익이 있을 수 있습니다.

 

제5조 (개인정보의 파기절차 및 방법)

회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 회사의 개인정보 파기절차 및 방법은 다음과 같습니다.

파기절차
1) 회원이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 데이터베이스로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다.
2) 별도의 데이터베이스로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유 목적 이외의 다른 목적으로 이용되지 않습니다.
파기방법
1) 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
2) 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
 

제6조 (회원 및 법정대리인의 권리와 그 행사방법)

회원은 언제든지 등록되어 있는 자신의 개인정보를 열람하거나 수정할 수 있으며, 회사의 개인정보의 처리에 동의하지 않는 경우 동의를 거부하거나 가입해지(회원탈퇴)를 요청할 수 있습니다.
회원의 개인정보 조회 및 수정을 위해서는 “개인정보변경”(또는 “회원정보수정” 등)을, 가입해지(동의철회)를 위해서는 “회원탈퇴”를, 각 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.
회원이 개인정보의 오류에 대한 정정을 요청하신 경우에는, 회사는 당해 정정을 완료하기 전까지 당해 개인정보를 이용하거나 제3자에게 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.
회사는 회원의 요청에 의해 해지 또는 삭제된 개인정보는 제3조에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.
서비스에 가입할 수 있는 자는 만 19세 이상이며, 개인정보의 수집∙이용에 법정 대리인의 동의가 필요한 만 14세 미만 아동의 개인정보는 원칙적으로 수집하지 않습니다.
 

제7조 (개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항)

회사는 회원의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 회사의 웹사이트를 운영하는데 이용되는 서버가 회원의 브라우저에 보내는 아주 작은 텍스트 파일로서 회원의 컴퓨터 하드디스크에 저장됩니다. 쿠키의 사용 목적 및 쿠키 설정 거부 방법은 다음과 같습니다.

쿠키 등 사용 목적
회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 회원의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스를 제공하기 위해 사용합니다.
쿠키 설정 거부 방법
1) 회원은 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 회원은 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.
2) 쿠키 설치 허용 여부를 설정하는 방법(인터넷 익스플로러의 경우)은 다음과 같습니다.
– 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보
3) 단, 회원이 쿠키 설치를 거부하였을 경우 기술 지원 및 서비스 제공에 어려움이 있을 수 있으며, 이 경우 회사는 책임을 지지 않습니다.
 

제2장 개인정보 제공에 관한 동의

 

제8조 (개인정보의 제3자 제공 및 공유)

회사는 회원의 개인정보를 제2조에서 고지한 범위 내에서 처리하며, 고객의 사전 동의없이는 본래의 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다. 다만, 다음의 각호의 경우에는 고객 또는 제3자의 이익을 부당하게 침해할 우려가 있을 때를 제외하고는 개인정보를 목적 외의 용도로 이용하거나 이를 제3자에게 제공할 수 있습니다.
1) 회원이 사전에 제3자 제공에 동의한 경우
2) 다른 법률에 특별한 규정이 있는 경우
3) 고객 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는 경우로서 명백히 고객 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우
4) 통계작성 및 학술연구 등의 목적을 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 개인정보를 제공하는 경우
회사는 회원에게 보다 나은 서비스 제공을 위하여 회원의 개인정보를 제휴사에게 제공하거나 또는 제휴사와 공유할 수 있습니다. 개인정보를 제3자에게 제공하거나 공유할 경우에는 사전에 동의절차를 거치게 되며, 개인정보를 제공받는 자, 개인정보를 제공받는 자의 개인정보 이용목적, 제공하는 개인정보의 항목, 개인정보를 제공받는 자의 개인정보 보유 및 이용기간, 정보제공 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 등을 명시하여 회원님께 동의를 구합니다. 회사가 회원의 개인정보를 제공 또는 공유할 수 있는 회사의 제휴사 및 가맹점 현황은 아래와 같습니다.
 

제공 받는 자
개인정보 이용 목적
개인정보 제공항목
이용 및 보유기간
나이스평가정보 주식회사	실명확인서비스 운영	성명, 주민등록번호	(해당 업체에서 이미 보유하고 있는 개인정보로 별도 저장하지 않음)
세틀뱅크 주식회사	신용카드, 무통장입금, 실시간 계좌이체 결제 대행		위탁계약 종료시까지
인포뱅크 주식회사	휴대전화번호 관련 문자발송시스템 운영	휴대전화번호
비즈톡 주식회사	카카오톡 알림톡 발송시스템 운영	휴대전화번호
주식회사 링크허브	현금영수증 발행시스템 운영	사업자등록번호, 주민등록번호, 휴대전화번호 등
 

제9조 (제공 정보의 제3자 보유 및 이용 기간)

개인정보 제공 목적 달성 시까지 또는 본인의 제공 동의 철회 요청 시까지

 

제10조 (동의의 거부권 및 거부 시의 불이익 고지)

회원은 위와 같은 본인의 개인정보 제공에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 등을 위해 필요한 최소한의 개인정보 제공에 관한 동의를 거부하는 경우 서비스 이용이 불가능하거나 처리 업무가 지연되는 등의 불이익이 있을 수 있습니다.

※ 본 제공 동의 이외에도 회사는 회원이 별도로 동의한 경우, 회원이 동의한 바에 따라 제3자에게 개인정보를 제공할 수 있습니다.

 

제3장 개인정보 보호 대책과 책임자

 

제11조 (개인정보의 기술적ㆍ관리적 보호 대책)

회사는 회원의 개인정보를 보호하기 위해 기술적 대책과 관리적 대책을 마련하고 있으며, 이를 적용하고 있습니다.

기술적 대책
회사는 회원의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.
1) 회원의 개인정보는 비밀번호에 의해 보호되며 파일 및 전송데이터를 암호화하거나 파일 잠금기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.
2) 회사는 백신프로그램을 이용하여 컴퓨터 바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다.
3) 회사는 암호알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL 또는 SET)를 채택하고 있습니다.
4) 회사는 해킹 등 외부침입에 대비하여 각 서버마다 침입차단시스템 및 취약점 분석시스템 등을 이용하여 보안에 만전을 기하고 있습니다.
관리적 대책
1) 회사는 개인정보의 안전한 보호를 위하여 주요 시스템 및 설비에 대하여 방화벽 구성 및 외부 전문기관의 보안관제 서비스를 이용합니다.
2) 회사는 회원의 개인정보에 대한 접근 및 관리에 필요한 절차 등을 마련하여 소속 직원으로 하여금 이를 숙지하고 준수하도록 하고 있습니다.
3) 회사는 회원의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다. 그 최소한의 인원에 해당하는 자는 다음과 같습니다.
①회원을 직접 상대로 하여 마케팅 업무를 수행하는 자
②개인정보관리책임자 및 담당자 등 개인정보관리업무를 수행하는 자
③기타 업무상 개인정보의 취급이 불가피한 자
4) 회사는 회원의 개인정보를 취급하는 직원을 대상으로 새로운 보안 기술 습득 및 개인정보보호 의무 등에 관해 정기적인 사내 교육 및 외부 위탁교육을 실시하고 있습니다.
5) 개인정보 관련 취급자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확히 하고 있습니다.
6) 전산실 및 자료 보관실 등을 특별 보호구역으로 설정하여 물리적ㆍ논리적으로 접근을 통제하고 있습니다.
7) 회사는 컴퓨터를 이용하여 회원의 개인정보를 처리하는 경우 개인정보에 대한 접근권한을 가진 담당자를 지정하여 아이디 및 패스워드를 부여하고, 해당 비밀번호를 정기적으로 갱신하고 있습니다.
8) 회사는 신규직원 채용 시 정보보호서약서 또는 개인정보보호서약서에 서명하도록 하여 직원에 의한 정보유출을 사전에 방지하고 개인정보처리방침에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하여 지속적으로 시행하고 있습니다.
9) 회사는 직원 퇴직 시 비밀유지서약서에 서명하도록 하여 회원의 개인정보를 취급하였던 자가 직무상 알게 된 개인정보를 훼손/ 침해 또는 누설하지 않도록 하고 있습니다.
10) 회사는 서비스이용계약체결 또는 서비스제공을 위하여 회원의 신용카드번호, 은행결제계좌 등 대금결제에 관한 정보를 수집하거나 회원께 제공하는 경우 당해 회원이 본인임을 확인하기 위하여 필요한 조치를 취하고 있습니다.
11) 회사는 정보통신망법 제29조의2 제2항 및 같은 법 시행령 제16조에 따라, 회사의 서비스를 1년의 기간 동안 이용하지 아니하는 회원의 개인정보를 보호하기 위하여, 해당 회원의 개인정보를 다른 회원들의 개인정보와 분리하여 별도로 저장ㆍ관리하고 있습니다.
12) 회사는 회원 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 회원의 경우 개개인이 본인의 개인정보를 보호하기 위해서 자신의 아이디와 패스워드를 적절하게 관리하고 여기에 대한 책임을 져야 합니다. 또한, 다른 사람이 추측할 수 있는 쉬운 패스워드는 사용을 피하시기를 권장하며, 정기적으로 패스워드를 변경하시는 것이 바람직합니다.
13) 공동으로 사용하는 PC에서 저희 홈페이지를 접속하여 로그인 한 상태에서 다른 사이트로 이동하는 경우, 서비스 이용을 종료하는 경우에는 반드시 로그아웃 처리 후 해당 홈페이지를 종료하시기 바랍니다. 그렇지 않을 경우, 해당 브라우저를 통해 아이디, 패스워드 등 회원의 정보가 타인에게 쉽게 유출될 위험이 있습니다.
14) 그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 회사는 지체 없이 회원께 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.
 

제12조 (개인정보보호 업무 관련 담당부서 및 개인정보 관리책임자)

회사는 회원의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보 관리책임자를 지정하고 있습니다. 회원은 회사의 서비스를 이용하며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고할 수 있습니다. 회사는 회원들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.

 

개인정보관리책임자

성명: 권용근

직책: 이사

이메일: privacy@weys.exchange

 

기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.

개인정보침해신고센터 (http://www.1336.or.kr/국번없이 118)

정보보호마크인증위원회 (http://www.eprivacy.or.kr/02-580-0533~4)

대검찰청 첨단범죄수사과 (http://spo.go.kr/02-3480-2000)

경찰청 사이버테러대응센터 (http://www.ctrc.go.kr/02-392-0330)

 

제4장 고지의무

개인정보처리방침에 대하여 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 ‘공지사항’을 통해 고지합니다. 다만, 개인정보의 수집 및 활용, 제3자 제공 등과 같이 회원 권리의 중요한 변경이 있을 경우에는 최소 30일 전에 고지합니다.</textarea></div>
									</div>
								  </div>
								</div>
										<div class="form-check custom-control custom-checkbox" style="margin-top:20px;">
										  <input id="chk" name="remember" class="custom-control-input" type="checkbox">
										  <label class="custom-control-label" for="chk">이용약관에 동의합니다.</label>
									  </div>
									</div>
								 <p style="height: 10px;"></p>
								<button class="btn btn-primary btn-block my-4" onclick="doneRsv()" type="button">완료</button>
                        </div>
                      </div>
                    </div>
                  </div>
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
          
<form name="formBody" action="${pageContext.request.contextPath}/guest" method="post">
	<input type="hidden" name="usrTel" id="f_usrTel">
	<input type="hidden" name="rsvNo" id="f_rsvNo">
</form>
    
  <!-- Content end -->
  
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	
	<div class="wrap-loading display-none">
		<div><img width="42px" src="${pageContext.request.contextPath}/resources/images/loading.gif" /></div>
	</div>
</body>
<jsp:include page="../common/common_js.jsp"></jsp:include>
<script type="text/javascript">

var storeList = new Array();
var storeTmp;

var week = new Array( '일', '월', '화', '수', '목', '금', '토');

var basicRate = ${rsvVO.basicRate };
var basicRateBank = ${rsvVO.basicRateBank };
var rsvAmnt = ${rsvVO.rsvAmnt };
var getAmnt = ${rsvVO.getAmnt };
var rsvCms = 3000;
var totalVal = ${rsvVO.getAmnt } + rsvCms;

var weysCommis = ${rsvVO.weysCommis };
var weysCommisVal = ${rsvVO.weysCommisVal };
var weysBonus = ${rsvVO.weysBonus };
var weysBonusVal = ${rsvVO.weysBonusVal };
var bonusNm = '${rsvVO.bonusNm }';
var bonusId = ${rsvVO.bonusId };

var chk = '${chk }';
var mem = '${mem }';
var ses = '${ses }';


var unit = '${rsvVO.unitCd}';
var startTm = '';
var endTm = '';

$(function(){
	
	if(ses == 'N'){
		alert('서비스 정검중입니다.\n이용에 불편을 드려 죄송합니다. ');
		location.href='${pageContext.request.contextPath}/';
	}
	
	$('#storeId').change(function(){
		$('#rsvDt').parent().children('.text').html('수령 날짜를 선택하세요.');
		$('#rsvHour').parent().children('.text').html('시간');
		$('#rsvMin').parent().children('.text').html('분');
		$('#rsvDt').empty();
		$('#rsvHour').empty();
		$('#rsvMin').empty();
		
		$('#store_dp').css('display', 'block');
		$('#cmsTxt').css('display', 'block');
		$('#totalTxt').html(totalVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
		setRsvDt();
	});

	$('#rsvDt').change(function(){
		$('#rsvHour').parent().children('.text').html('시간');
		$('#rsvMin').parent().children('.text').html('분');
		$('#rsvHour').empty();
		$('#rsvMin').empty();
		
		setRsvTM();
	});

	$('#rsvHour').change(function(){
		$('#rsvMin').parent().children('.text').html('분');
		$('#rsvMin').empty();
		setRsvMin();
	});

	getStore();
	countdown("checkTime", 30, 0);
});

function getStore(){
	var data = {};
	data["unitCd"] = unit;

	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/rsv/store",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.dataList
			for(i=0 ; i<res.length ; i++){
				storeList.push(res[i]);
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

function setRsvDt(){
	var storeId = $('#storeId').val();
	
	for(i=0 ; i<storeList.length ; i++){
		var id = storeList[i].storeId;
		if(id == storeId){
			storeTmp = storeList[i];
			break;
		}
	}

	$('#dp_storeNm').html(storeTmp.storeNm);
	$('#dp_openTm').html('영업시간: ' + storeTmp.storeTimeTxt);
	$('#dp_storeCmt').html(storeTmp.storeCmt);
	$('#dp_img').attr('src', '${pageContext.request.contextPath}/resources/images/' + storeTmp.storeTag + '.png');
	

	var rsvDtHtml = '<option value="" selected>수령 날짜를 선택하세요.</option>';
	var dateList = storeTmp.rsvDate;
	
	for(i=0 ; i<dateList.length ; i++){
		if(!dateList[i].holiday){
			var day = dateList[i].rsvDay;
			var dt = dateList[i].rsvDt.split('/');
			var dtval = dt[0] + '.' + dt[1];
			var dttxt = dt[0] + '월 ' + dt[1] + '일(' + week[day] + ')';
			rsvDtHtml += '<option value="' + dateList[i].rsvYear + '.' + dtval + '">' + dateList[i].rsvYear + '년 ' + dttxt + '</option>';	
		}		
	}
	$('#rsvDt').append(rsvDtHtml);
	
}


function setRsvTM(){
	var storeId = $('#storeId').val();
	var rsvDt = $('#rsvDt').val().split('.');

	var year = rsvDt[0];
	var month = rsvDt[1];
	var day = rsvDt[2];

	var dateList = storeTmp.rsvDate;
	var brkTm = storeTmp.brkTm;
	
	for(i=0 ; i<dateList.length ; i++){
		if(!dateList[i].holiday){
			var dt = dateList[i].rsvDt;
			if(dt == (month + '/' + day)){
				startTm = dateList[i].startTm;
				endTm = dateList[i].endTm;
				
				break;
			}
		}
	}

	var start = startTm.split(':');
	var end = endTm.split(':');

	var st = parseInt(start[0]);
	var et = parseInt(end[0]);
	
	var hourHtml = '<option value="">시간 선택</option>';
	for(i=st ; i<=et ; i++){
		if(i == brkTm){
			continue;
		}
		var html = '';
		if(i<10){
			html = '0' + i;
		} else {
			html = i;
		}
		hourHtml += '<option value="' + html + '">' + html + '시</option>';
	}
	$('#rsvHour').append(hourHtml);
}


function setRsvMin(){
	var start = startTm.split(':');
	var end = endTm.split(':');

	var st = parseInt(start[0]);
	var stmin = parseInt(start[1]);
	var et = parseInt(end[0]);
	var etmin = parseInt(end[1]);
	
	var hour = parseInt($('#rsvHour').val());

	var minHtml = '';
	if(hour > st && hour < et){
		for(i=0 ; i<=45 ; i+= 15){
			var html = '';
			if(i<10){
				html = '0' + i;
			} else {
				html = i;
			}
			minHtml += '<option value="' + html + '">' + html + '분</option>';
		}
	} else if(hour == st){
		for(i=stmin ; i<=45 ; i+= 15){
			var html = '';
			if(i<10){
				html = '0' + i;
			} else {
				html = i;
			}
			minHtml += '<option value="' + html + '">' + html + '분</option>';
		}
	} else if(hour == et){
		for(i=0 ; i<=etmin ; i+= 15){
			var html = '';
			if(i<10){
				html = '0' + i;
			} else {
				html = i;
			}
			minHtml += '<option value="' + html + '">' + html + '분</option>';
		}
	}
	
	$('#rsvMin').append(minHtml);
}

function countdown( elementName, minutes, seconds )
{
    var element, endTime, hours, mins, msLeft, time;

    function twoDigits( n )
    {
        return (n <= 9 ? "0" + n : n);
    }

    function updateTimer()
    {
        msLeft = endTime - (+new Date);
        if ( msLeft < 1000 ) {
            element.innerHTML = "0:00";
            alert('예약시간이 만료되었습니다. 다시 시도해 주세요.');
            location.href='${pageContext.request.contextPath}/';
        } else {
            time = new Date( msLeft );
            hours = time.getUTCHours();
            mins = time.getUTCMinutes();
            element.innerHTML = (hours ? hours + ':' + twoDigits( mins ) : mins) + ':' + twoDigits( time.getUTCSeconds() );
            timeout_id = setTimeout( updateTimer, time.getUTCMilliseconds() + 500 );
        }
    }

    element = document.getElementById( elementName );
    endTime = (+new Date) + 1000 * (60*minutes + seconds) + 500;
    updateTimer();
}

function doneRsv(){
	
	if (!$('input:checkbox[id="chk"]').is(":checked")) {
		alert('약관에 동의하셔야 합니다.');
		$('#chk').focus();
		return;
	}

	var email = $('#usrEmail').val();
	if('${info}' == ''){
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if (!email.match(regExp)) {
			alert('이메일이 올바르지 않습니다.');
			$('#usrEmail').val('');
			$('#usrEmail').focus();
			return false;
		}
	}
	
	var storeId = $('#storeId option:selected').val();
	var rsvHour = $('#rsvHour').val();
	var rsvTm = $('#rsvMin').val();

	if(storeId == ''){
		alert('수령지점을 선택해 주세요.');
		$('#storeId').focus();
		return false;
	}

	if(rsvHour == ''){
		alert('예약시간을 선택해 주세요.');
		$('#rsvHour').focus();
		return false;
	}

	if(rsvTm == ''){
		alert('예약시간을 선택해 주세요.');
		$('#rsvMin').focus();
		return false;
	}

	var usrNm = $('#usrNm').val().trim();
	var usrNmId = $('#usrNmId').val().trim();
	var usrTel = $('#usrTel').val().trim();
	

	if(usrNm == '' || usrNmId == ''){
		alert('예약자 정보를 입력해주세요.');
		return;
	}
	
	if(mem == 'N'){
		if(usrTel == ''){
			alert('예약자 정보를 입력해주세요.');
			return;
		}
	} 

	var rsvDt = $('#rsvDt').val();

	var rsvDtArr = rsvDt.split('.');
	var rsvDtS = rsvDtArr[0] + '년 ' + rsvDtArr[1] + '월 ' + rsvDtArr[2] + '일 ';
	
	var week = ['일', '월', '화', '수', '목', '금', '토'];
	var dayOfWeek = week[new Date(rsvDtArr[0],rsvDtArr[1]-1,rsvDtArr[2] ).getDay()];

	var storeNm = $('#storeId option:selected').attr('data-nm');
	var rsvTm = $('#rsvHour').val() + ":" + $('#rsvMin').val();
	var rsvTmS = $('#rsvHour').val() + "시 " + $('#rsvMin').val() + '분';
	if(confirm(unit + ' ' + rsvAmnt + '\n' + rsvDtS + dayOfWeek +  '요일 ' + rsvTmS + '\n' + storeNm + ' 예약을 완료하시겠습니까?')){

		var data = {};
		data["storeId"] = $('#storeId').val();
		data["unitCd"] = unit;
		data["basicRate"] = basicRate;
		data["basicRateBank"] = basicRateBank;
		data["rsvAmnt"] = rsvAmnt;
		data["getAmnt"] = totalVal;
		data["rsvForm"] = 'R';
		data["cms"] = rsvCms;
		data["vbankCd"] = $('#vbank').val(); 

		data["rsvDt"] = rsvDt;
		data["rsvTm"] = rsvTm;
		data["rsvPaper"] = $('#rsvPaper').val();

		data["bonusNm"] = bonusNm;
		data["bonusId"] = bonusId;
		data["weysBonus"] = weysBonus;
		data["weysBonusVal"] = weysBonusVal;
		data["weysCommis"] = weysCommis;
		data["weysCommisVal"] = weysCommisVal;
		
		data["usrNm"] = usrNm;
		data["usrNmId"] = usrNmId;
		data["usrTel"] = usrTel;
		data["usrEmail"] = email;
		data["cerChk"] = chk;
		
		$.ajax({
			contentType : "application/json",
			dataType : "json",
			type : "post",
			url : "${pageContext.request.contextPath}/rsv/receive",
			data : JSON.stringify(data),
			success : function(result) {
				
				var suc = result.res;
				if(suc == 'success'){
					
					alert('예약이 접수되었습니다.');
					
					var getVal = weysCommisVal - weysBonusVal;
					if(getVal < 0){
						getVal = 0;
					}
					gtag('event', 'purchase', {
						 "transaction_id": result.rsvNo,  
						 "affiliation": "WEYS",   
						 "value": getVal,   
						 "currency": "KRW",     
						 "tax": 0,  
						 "shipping": rsvCms,    
						 "items": [
						       {
						           "id": unit,  
						           "name": unit,  
						           "quantity": 1,   
						           "price": getAmnt  
						       }
						]
						});

					var _nasa={};
					_nasa["cnv"] = wcs.cnv("1",getVal);
					wcs_do(_nasa);
					
					var mem = result.mem;
					if(mem == 'Y'){
						location.href='${pageContext.request.contextPath}/account/transactions?#modal_' + result.rsvNo;
					} else {
						var usrTel = result.usrTel;
						var rsvNo = result.rsvNo;
						
						$('#f_rsvNo').val(rsvNo);
						$('#f_usrTel').val(usrTel);

						var FORM_BODY = $('form[name=formBody]');
						FORM_BODY.attr('action', '${pageContext.request.contextPath}/guest');
						FORM_BODY.submit();
					}
					
				} else {
					alert(result.msg);
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
