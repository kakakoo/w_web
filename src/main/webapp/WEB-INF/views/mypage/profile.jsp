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
          <!-- Personal Details
          ============================================= -->
          <div class="bg-light shadow-sm rounded p-4 mb-4">
            <h3 class="text-5 font-weight-400 mb-3">회원정보</h3>
            <div class="row">
              <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">성명</p>
              <p class="col-sm-9">
              	<c:choose>
			       <c:when test="${empty info.usrNm }">미등록</c:when>
			       <c:otherwise>${info.usrNm }</c:otherwise>
			   </c:choose>
              </p>
            </div>
			<div class="row">
              <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">실명인증상태</p>
              <p class="col-sm-9">
              	<c:choose>
			       <c:when test="${empty info.usrNm }"><span class="text-light rounded-pill d-inline-block px-2 mb-0"><i class="fas fa-exclamation-triangle"></i> 미인증</span></c:when>
			       <c:otherwise><span class="bg-success text-white rounded-pill d-inline-block px-2 mb-0"><i class="fas fa-check-circle"></i> 인증완료</span></c:otherwise>
			   </c:choose>
              </p>
            </div>
            <div class="row">
              <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">휴대전화번호(ID)</p>
              <p class="col-sm-9" id="tel_txt">${info.usrTel }</p>
            </div>
            <div class="row">
              <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">이메일 주소</p>
              <p class="col-sm-9" id="email_txt">${info.usrEmail }</p>
            </div>
          </div>
			
			<div class="row">
          <div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
            <div class="bg-light shadow-sm rounded p-4 text-center"> <span class="d-block text-8 text-primary mt-2 mb-3"><i class="fas fa-user-circle"></i></span>
              <p class="mb-0">
              	<c:choose>
			       <c:when test="${empty info.usrNm }"><a href="#auth-name" data-toggle="modal" class="text-muted btn-link">실명인증<span class="text-1 ml-1"><i class="fas fa-chevron-right"></i></span></a></c:when>
			       <c:otherwise>인증완료</c:otherwise>
			   </c:choose>
              </p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-3 mb-4 mb-lg-0">
            <div class="bg-light shadow-sm rounded p-4 text-center"> <span class="d-block text-8 text-primary mt-2 mb-3"><i class="fas fa-phone"></i></span>
              <p class="mb-0"><a href="#change-phone" data-toggle="modal" class="text-muted btn-link">휴대전화번호 변경<span class="text-1 ml-1"><i class="fas fa-chevron-right"></i></span></a></p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-3 mb-4 mb-sm-0">
            <div class="bg-light shadow-sm rounded p-4 text-center"> <span class="d-block text-8 text-primary mt-2 mb-3"><i class="fas fa-envelope"></i></span>
              <p class="mb-0"><a href="#change-email" data-toggle="modal" class="text-muted btn-link">이메일 변경<span class="text-1 ml-1"><i class="fas fa-chevron-right"></i></span></a></p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-3">
            <div class="bg-light shadow-sm rounded p-4 text-center"> <span class="d-block text-8 text-primary mt-2 mb-3"><i class="fas fa-lock"></i></span>
              <p class="mb-0"><a href="#change-password" data-toggle="modal" class="text-muted btn-link">비밀번호 변경<span class="text-1 ml-1"><i class="fas fa-chevron-right"></i></span></a></p>
            </div>
          </div>
        </div>
			
			
		  <!-- Edit Details Modal
          ================================== -->
          <div id="change-password" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title font-weight-400">비밀번호 변경</h5>
                  <button type="button" class="close font-weight-400 closeTrigger" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                </div>
                <div class="modal-body p-4">
                  <form id="changePassword" method="post">
                    <div class="form-group">
                      <label for="existingPassword">현재 비밀번호</label>
                      <input type="password" class="form-control" data-bv-field="existingpassword" id="existingPassword" required placeholder="현재 비밀번호를 입력하세요">
                    </div>
                    <div class="form-group">
                      <label for="newPassword">새 비밀번호</label>
                      <input type="password" class="form-control" data-bv-field="newpassword" id="newPassword" required placeholder="새 비밀번호를 입력하세요">
                    </div>
                    <div class="form-group">
                      <label for="confirmPassword">새 비밀번호 확인</label>
                      <input type="password" class="form-control" data-bv-field="confirmgpassword" id="confirmPassword" required placeholder="새 비밀번호를 다시 한번 입력하세요">
                    </div>
                    <button class="btn btn-primary btn-block mt-4" onclick="changePwd()" type="button">변경</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <!-- Security End -->
		  <div id="change-email" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title font-weight-400">이메일 변경</h5>
                  <button type="button" class="close font-weight-400 closeTrigger" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                </div>
                <div class="modal-body p-4">
                  <form id="changePassword" method="post">
                    <div class="form-group">
                      <label for="newPassword">새 이메일 주소</label>
                      <input type="text" class="form-control" data-bv-field="newpassword" id="emailAddress" required placeholder="새 이메일 주소를 입력하세요">
                    </div>
                    <div class="form-group">
                    <button class="btn btn-primary btn-block mt-4" onclick="changeEmail()" type="button">변경</button>
					</div>
                  </form>
                </div>
              </div>
            </div>
          </div>
		  <!-- Security End -->
		  <div id="change-phone" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title font-weight-400">휴대전화번호 변경</h5>
                  <button type="button" class="close font-weight-400 closeTrigger" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                </div>
                <div class="modal-body p-4">
                  <form id="changePassword" method="post">
                    <div class="form-group">
                  <label for="youSend">새 휴대전화번호</label>
					<div class="input-group">
					  <div class="input-group-prepend"> <span class="input-group-text p-0">
						<select id="usrNation" data-style="custom-select bg-transparent border-0" data-container="body" data-live-search="true" class="selectpicker form-control bg-transparent" required="">
						  <optgroup label="자주찾는 국가">
						  <option data-icon="currency-flag currency-flag-krw mr-1" data-subtext="대한민국" selected="selected" value="82">+82</option>
						  <option data-icon="currency-flag currency-flag-usd mr-1" data-subtext="미국" value="1">+1</option>
						  <option data-icon="currency-flag currency-flag-jpy mr-1" data-subtext="일본" value="81">+81</option>
						  </optgroup>
						  <option value="" data-divider="true">divider</option>
						  <optgroup label="모든 국가">
						  <option data-icon="currency-flag currency-flag-usd mr-1" data-subtext="미국" value="1">+1</option>
                          <option data-icon="currency-flag currency-flag-cad mr-1" data-subtext="캐나다" value="1">+1</option>
                          <option data-icon="currency-flag currency-flag-gbp mr-1" data-subtext="영국" value="44">+44</option>
                          <option data-icon="currency-flag currency-flag-myr mr-1" data-subtext="말레이시아" value="60">+60</option>
                          <option data-icon="currency-flag currency-flag-aud mr-1" data-subtext="오스트레일리아" value="61">+61</option>
                          <option data-icon="currency-flag currency-flag-php mr-1" data-subtext="필리핀" value="63">+63</option>
                          <option data-icon="currency-flag currency-flag-nzd mr-1" data-subtext="뉴질랜드" value="64">+64</option>
                          <option data-icon="currency-flag currency-flag-thb mr-1" data-subtext="태국" value="66">+66</option>
                          <option data-icon="currency-flag currency-flag-huf mr-1" data-subtext="러시아" value="77">+77</option>
                          <option data-icon="currency-flag currency-flag-jpy mr-1" data-subtext="일본" value="81">+81</option>
                          <option data-icon="currency-flag currency-flag-krw mr-1" data-subtext="대한민국" value="82">+82</option>
                          <option data-icon="currency-flag currency-flag-hkd mr-1" data-subtext="홍콩" value="852">+852</option>
                          <option data-icon="currency-flag currency-flag-cny mr-1" data-subtext="중국" value="86">+86</option>
                          <option data-icon="currency-flag currency-flag-twd mr-1" data-subtext="대만" value="886">+886</option>
                          <option data-icon="currency-flag currency-flag-inr mr-1" data-subtext="인도" value="91">+91</option>
                          <option data-icon="currency-flag currency-flag-aed mr-1" data-subtext="아랍에미리트" value="971">+971</option>
						  </optgroup>
						</select>
						</span> </div>
						<input type="text" class="form-control" id="phoneNumber" value="" required placeholder="">
						<button class="btn btn-primary input-group-append" onclick="sendCertify()" id="sendNum" type="button" style="border-top-left-radius: 0;border-bottom-left-radius: 0;">전송</button>
					</div>
                </div>
                <div class="form-group" id="certy_grp" style="display:none;">
                  <div class="input-group"><input type="text" class="form-control" id="usrCertify" value="" required placeholder="인증번호 4자리를 입력하세요">
						<button class="btn btn-primary input-group-append btn-noactive" type="button" onclick="sendCode()" id="certifyNum" style="border-top-left-radius: 0; border-bottom-left-radius: 0;">인증</button></div>
					<p class="text-1 text-right mb-0 text-danger" id="checkTime" style="padding-right:15px;"></p>
                </div>
                    <div class="form-group">
                    <button class="btn btn-primary btn-block mt-4 btn-noactive" id="btnTel"  onclick="changeTel()" type="button">변경</button>
					</div>
                  </form>
                </div>
              </div>
            </div>
          </div>
		  <div id="auth-name" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title font-weight-400">실명인증</h5>
                  <button type="button" class="close font-weight-400 closeTrigger" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                </div>
                <div class="modal-body p-4">
                  <form id="changePassword" method="post">
                    <div class="form-group">
                      <label for="existingPassword">성명</label>
                      <input type="text" class="form-control" data-bv-field="usrNm" id="usrNm" required placeholder="성명을 입력하세요">
                    </div>
                    <div class="form-group">
                      <label for="newPassword">주민등록번호(-제외)</label>
                      <input type="password" class="form-control" data-bv-field="usrNmId" id="usrNmId" required placeholder="주민등록번호를 입력하세요">
					  <p class="text-1 text-left mb-0" style="margin-top:10px;">실명인증이 되지 않는 경우에는 NICE평가정보 온라인 자동등록, FAX 및 이메일을 통한 실명등록 후 이용이 가능합니다.</p>
					  <p class="mb-0"><a href="https://www.niceid.co.kr/front/personal/register_howtoonline.jsp?menu_num=1&page_num=0&page_num_1=1" class="text-muted btn-link" target="_blank">NICE평가정보 실명등록<span class="text-1 ml-1"><i class="fas fa-chevron-right"></i></span></a></p>
                    </div>
                    <div class="form-group">
                    <button class="btn btn-primary btn-block mt-4" onclick="checkIdentified()" type="button">인증요청</button>
					</div>
                  </form>
                </div>
              </div>
            </div>
          </div>
		  <!-- Security End -->
			<div id="close-account" class="modal fade " role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title font-weight-400">회원탈퇴</h5>
                  <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                </div>
                <div class="modal-body p-4">
                  <form id="changePassword" method="post">
                    <div class="form-group">
                      <label for="signoutPwd">비밀번호</label>
                      <input type="password" class="form-control" data-bv-field="signoutPwd" id="signoutPwd" required placeholder="비밀번호를 입력하세요">
					  <p class="text-1 text-left mb-0" style="margin-top:10px;">회원 탈퇴 시 회원님의 모든 정보는 삭제되며, 관련 법령에 의해 거래 정보는 회원 탈퇴 후 5년간 보관됩니다. 회원 탈퇴를 하시겠습니까?</p>
                    </div>
                    <div class="form-group">
                    <button class="btn btn-primary btn-block mt-4" onclick="signout()" type="button">탈퇴요청</button>
					</div>
                  </form>
                </div>
              </div>
            </div>
          </div>
		  <!-- Security End -->
		  
          <div class="col-lg-12">
			<div class="row" style="margin-top:20px;">
              <p class="mb-0"><a href="#close-account" data-toggle="modal" class="text-muted btn-link">회원탈퇴<span class="text-1 ml-1"><i class="fas fa-chevron-right"></i></span></a></p>
            </div>
		  </div>
        </div>
		
        <!-- Middle Panel End --> 
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
	
	<div class="wrap-loading display-none">
		<div><img width="42px" src="${pageContext.request.contextPath}/resources/images/loading.gif" /></div>
	</div>
</body>
<jsp:include page="../common/common_js.jsp"></jsp:include>
<%-- <script src="${pageContext.request.contextPath}/resources/work/login.js"></script>  --%>
<script type="text/javascript">

var cerfity_code='';
var sendFlag = 'Y';
var certyFlag = 'N';
var checkFlag = 'N';
var timeout_id = '';

function changePwd(){
	var exist = $('#existingPassword').val();
	var newPwd = $('#newPassword').val();
	var newPwdChk = $('#confirmPassword').val();

	if (exist == '') {
		$('#existingPassword').addClass('error-form');
		$('#existingPassword').attr('placeholder', '비밀번호를 입력해주세요.');
		return;
	}

	if (newPwd == '' || newPwdChk == '') {
		$('#newPassword').addClass('error-form');
		$('#newPassword').attr('placeholder', '새로운 비밀번호를 입력해주세요.');
		return;
	}

	if(newPwd.length < 8){
		$('#newPassword').val('');
		$('#confirmPassword').val('');
		$('#newPassword').addClass('error-form');
		$('#newPassword').attr('placeholder', '비밀번호는 8자 이상으로 입력해주세요.');
		return;
	}

	if (newPwd != newPwdChk) {
		$('#newPassword').val('');
		$('#confirmPassword').val('');
		$('#newPassword').addClass('error-form');
		$('#newPassword').attr('placeholder', '비밀번호가 일치하지 않습니다.');
		return;
	}
	
	var data = {};
	data["existPwd"] = exist;
	data["newPwd"] = newPwd;
	
	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/changePwd",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				$('#existingPassword').val('');
				$('#newPassword').val('');
				$('#confirmPassword').val('');
				$('#existingPassword').addClass('error-form');
				$('#existingPassword').attr('placeholder', '비밀번호가 일치하지 않습니다.');
			} else {
				$('.closeTrigger').trigger('click');
				
				$('#m_title').html('비밀번호 변경 완료');
				$('#m_desc').html('비밀번호가 성공적으로 변경되었습니다.');
				$('#md_trig').trigger('click');

				$('#existingPassword').val('');
				$('#newPassword').val('');
				$('#confirmPassword').val('');
				$('#existingPassword').removeClass('error-form');
				$('#existingPassword').attr('placeholder', '현재 비밀번호를 입력하세요');
				$('#newPassword').removeClass('error-form');
				$('#newPassword').attr('placeholder', '새 비밀번호를 입력하세요');
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

function changeEmail(){
	var email = $('#emailAddress').val();
	if (email == '') {
		$('#emailAddress').addClass('error-form');
		$('#emailAddress').attr('placeholder', '이메일을 입력해 주세요');
		return;
	}
	
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	if (!email.match(regExp)) {
		$('#emailAddress').addClass('error-form');
		$('#emailAddress').attr('placeholder', '이메일 형식이 맞지않습니다');
		$('#emailAddress').val('');
		$('#emailAddress').focus();
		return false;
	}
	
	var data = {};
	data["usrEmail"] = email;
	
	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/changeEmail",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				$('#emailAddress').val('');
				$('#emailAddress').addClass('error-form');
				$('#emailAddress').attr('placeholder', '다시 시도해 주십시요');
			} else {
				$('.closeTrigger').trigger('click');
				
				$('#m_title').html('이메일 변경 완료');
				$('#m_desc').html('이메일이 성공적으로 변경되었습니다.');
				$('#md_trig').trigger('click');

				$('#email_txt').html(email);
				
				$('#emailAddress').val('');
				$('#emailAddress').removeClass('error-form');
				$('#emailAddress').attr('placeholder', '새 이메일 주소를 입력하세요');
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
function sendCertify() {
	
	if(sendFlag == 'N'){
		return;
	}

	var data = {};
	var tel = $('#phoneNumber').val();
	if(tel == ''){
		$('#phoneNumber').addClass('error-form');
		$('#phoneNumber').attr('placeholder', '번호를 입력해주세요.');
		return;
	}
	
	
	var data = {};
	data["usrTel"] = tel.replace(/-/gi, '');
	data["usrNation"] = $('#usrNation').val();
	data["chk"] = 'Y';

	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/sendCertify",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				$('#phoneNumber').val('');
				$('#phoneNumber').addClass('error-form');
				$('#phoneNumber').attr('placeholder', '이미 가입된 번호입니다');
			} else {
				
				cerfity_code = result.random;
				sendFlag = 'N';
				certyFlag = 'Y';
				$('#certifyNum').removeClass('btn-noactive');
				$('#sendNum').addClass('btn-noactive');
				
				countdown("checkTime", 3, 0);
				$('#phoneNumber').attr("readonly", true);
				$('#usrNation').attr("disabled", true);
				$('#certy_grp').css('display', 'block');
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

function countdown( elementName, minutes, seconds ){
    var element, endTime, hours, mins, msLeft, time;

    function twoDigits( n ) {
        return (n <= 9 ? "0" + n : n);
    }

    function updateTimer() {
        msLeft = endTime - (+new Date);
        if ( msLeft < 1000 ) {
            element.innerHTML = "";

    		$('#usrCertify').val('');
    		$('#usrCertify').addClass('error-form');
    		$('#usrCertify').attr('placeholder', '인증시간이 만료되었습니다.');

			$('#phoneNumber').removeAttr("readonly");
			$('#usrNation').removeAttr("disabled");
			$('#certifyNum').addClass('btn-noactive');
			$('#sendNum').removeClass('btn-noactive');
    		cerfity_code='';
    		sendFlag = 'Y';
    		certyFlag = 'N';
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
	
function sendCode() {
	if(certyFlag == 'N'){
		return;
	}
	
	var certi = $('#usrCertify').val();
	if(cerfity_code == certi){

		$('#usrCertify').val('');
		$('#usrCertify').attr('placeholder', '인증완료. 변경하시겠습니까?');
		$('#certifyNum').addClass('btn-noactive');
		$('#usrCertify').attr("readonly", true);
		$('#btnTel').removeClass('btn-noactive');
		
		clearTimeout(timeout_id);
		checkFlag = 'Y';
	} else {
		$('#usrCertify').val('');
		$('#usrCertify').addClass('error-form');
		$('#usrCertify').attr('placeholder', '인증번호가 일치하지않습니다');
	}
}

function changeTel(){
	if(checkFlag == 'N'){
		return;
	}
	
	var data = {};
	data["usrTel"] = $('#phoneNumber').val();
	data["usrNation"] = $('#usrNation').val();
	
	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/changeTel",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				$('#emailAddress').val('');
				$('#emailAddress').addClass('error-form');
				$('#emailAddress').attr('placeholder', '다시 시도해 주십시요');
			} else {
				$('.closeTrigger').trigger('click');
				
				$('#m_title').html('휴대전화 변경 완료');
				$('#m_desc').html('휴대전화가 성공적으로 변경되었습니다.');
				$('#md_trig').trigger('click');

				$('#tel_txt').html($('#phoneNumber').val());
			}
			$('#checkTime').html('');
			$('#usrCertify').val('');
			$('#phoneNumber').val('');
			$('#phoneNumber').removeAttr("readonly");
			$('#usrCertify').removeAttr("readonly");
			$('#usrCertify').attr('placeholder', '인증번호 4자리를 입력하세요');
			$('#usrNation').removeAttr("disabled");
			$('#certifyNum').addClass('btn-noactive');
			$('#btnTel').addClass('btn-noactive');
			$('#sendNum').removeClass('btn-noactive');
    		cerfity_code='';
    		sendFlag = 'Y';
    		certyFlag = 'N';
    		checkFlag = 'N';
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

function signout(){
	var pwd = $('#signoutPwd').val();
	
	if(pwd == ''){
		$('#signoutPwd').val('');
		$('#signoutPwd').addClass('error-form');
		$('#signoutPwd').attr('placeholder', '비밀번호를 입력해주세요');
		return;
	}
	
	var data = {};
	data["existPwd"] = pwd;

	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/signout",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				$('#signoutPwd').val('');
				$('#signoutPwd').addClass('error-form');
				$('#signoutPwd').attr('placeholder', '비밀번호가 일치하지않습니다');
			} else {
				alert('회원탈퇴가 성공적으로 완료되었습니다.');
				location.href = "${pageContext.request.contextPath}/";
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

function checkIdentified(){

	var usrNm = $('#usrNm').val();
	var usrNmId = $('#usrNmId').val();
	
	if(usrNm == ''){
		$('#usrNm').val('');
		$('#usrNm').addClass('error-form');
		$('#usrNm').attr('placeholder', '성명을 입력하세요');
		return;
	}
	if(usrNmId == ''){
		$('#usrNmId').val('');
		$('#usrNmId').addClass('error-form');
		$('#usrNmId').attr('placeholder', '주민등록번호를 입력하세요');
		return;
	}
	if(usrNmId.length != 13){
		$('#usrNmId').val('');
		$('#usrNmId').addClass('error-form');
		$('#usrNmId').attr('placeholder', '주민등록번호 13자리를 입력하세요');
		return;
	}
	
	var data = {};
	data["usrNm"] = usrNm;
	data["usrNmId"] = usrNmId;

	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/checkIdentified",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				$('#usrNm').val('');
				$('#usrNmId').val('');
				$('#usrNm').addClass('error-form');
				$('#usrNm').attr('placeholder', '실명인증에 실패하였습니다');
			} else {
				alert('실명인증에 성공하였습니다');
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
