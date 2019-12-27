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
  <!-- Page Header
	============================================= -->
	<section class="page-header page-header-text-light bg-dark-3 py-5">
	  <div class="container">
		<div class="row text-center">
		  <div class="col-12">
			<h4 class="text-white">비밀번호 재설정</h4>
		  </div>
		</div>
	  </div>
	</section>
	<!-- Page Header End --> 
  <div class="login-signup-page mx-auto my-5">
      <div class="bg-light shadow-md rounded p-4 mx-2">
      <form id="loginForm" method="post">
          <div class="form-group">
                  <label for="youSend">휴대전화번호 인증</label>
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
							<input type="text" class="form-control" id="usrTel" value="" required placeholder="휴대전화번호 입력">
						<button id="sendNum" class="btn btn-primary input-group-append" onclick="sendCertify()" type="button" style="border-top-left-radius: 0; border-bottom-left-radius: 0;">전송</button>
					</div>
                </div>
                <div class="form-group" id="certy_grp" style="display:none;">
                  <div class="input-group"><input type="text" class="form-control" id="usrCertify" value="" required placeholder="인증번호 6자리를 입력하세요">
						<button id="certifyNum" class="btn btn-primary input-group-append btn-noactive" onclick="sendCode()" type="button" style="border-top-left-radius: 0; border-bottom-left-radius: 0;">인증</button></div>
					<p class="text-1 text-right mb-0 text-danger" id="checkTime" style="padding-right:15px;"></p>
                </div>
		  		<div class="form-group">
                  <label for="loginPassword">새 비밀번호</label>
                  <input type="password" class="form-control" id="newPwd" readonly="readonly" required placeholder="비밀번호를 입력하세요">
                </div>
		 		<div class="form-group">
                  <label for="loginPassword2">새 비밀번호 확인</label>
                  <input type="password" class="form-control" id="newPwdChk" readonly="readonly" required placeholder="비밀번호를 한번 더 입력하세요">
                </div>
                <button class="btn btn-primary btn-block my-4" onclick="sendPwd()" type="button">완료</button>
              </form>
      <p class="text-3 text-muted text-center mb-0">이미 웨이즈 회원이신가요? <a class="btn-link" href="${pageContext.request.contextPath}/login">로그인</a></p>
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
</body>
<jsp:include page="../common/common_js.jsp"></jsp:include>
<%-- <script src="${pageContext.request.contextPath}/resources/work/resetPwd.js"></script>  --%>
<script type="text/javascript">

var cerfity_code='';
var sendFlag = 'Y';
var certyFlag = 'N';
var checkFlag = 'N';
var timeout_id = '';

function sendCertify() {
	
	if(sendFlag == 'N'){
		return;
	}
	
	var data = {};
	var tel = $('#usrTel').val();
	if(tel == ''){
		$('#usrTel').addClass('error-form');
		$('#usrTel').attr('placeholder', '번호를 입력해주세요.');
		return;
	}
	
	
	data["usrTel"] = tel.replace(/-/gi, '');
	data["usrNation"] = $('#usrNation').val();
	data["chk"] = 'N';

	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/sendCertify",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				$('#m_title').html('휴대전화번호 인증 실패');
				$('#m_desc').html('존재하지않는 휴대번호입니다.<br>휴대전화번호를 확인해주세요.');
				$('#md_trig').trigger('click');
			} else {
				$('#m_title').html('인증번호가 전송되었습니다.');
				$('#m_desc').html('휴대전화번호에 인증번호가 전송되었습니다.<br>인증번호를 입력해주세요.');
				cerfity_code = result.random;
				sendFlag = 'N';
				certyFlag = 'Y';
				$('#certifyNum').removeClass('btn-noactive');
				$('#sendNum').addClass('btn-noactive');
				$('#md_trig').trigger('click');
				countdown("checkTime", 3, 0);
				$('#usrTel').attr("readonly", true);
				$('#usrNation').attr("disabled", true);
				$('#certy_grp').css('display', 'block');
			}
		},
		beforeSend : function() {
			$('#preloader').css('display', 'block');
		},
		complete : function() {
			$('#preloader').css('display', 'none');
		},
		error : function(result) {
			alert('문의주세요.');
		}
	});
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
            $('#m_title').html('인증시간 만료');
    		$('#m_desc').html('인증이 만료되었습니다.<br>다시 시도해주세요.');
    		$('#md_trig').trigger('click');

			$('#usrTel').removeAttr("readonly");
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
		$('#m_title').html('휴대전화인증 완료');
		$('#m_desc').html('인증이 완료되었습니다.<br>새 비밀번호를 입력해주세요.');
		$('#md_trig').trigger('click');
		$('#certy_grp').css('display','none');
		$('#newPwd').removeAttr("readonly");
		$('#newPwdChk').removeAttr("readonly");
		clearTimeout(timeout_id);
		checkFlag = 'Y';
	} else {
		$('#m_title').html('휴대전화 인증 실패');
		$('#m_desc').html('인증번호가 일치하지않습니다.<br>인증번호를 확인해주세요.');
		$('#md_trig').trigger('click');
	}

}

function sendPwd(){
	if(checkFlag == 'N'){
		return;
	}

	var pwd = $('#newPwd').val();
	var pwdChk = $('#newPwdChk').val();
	
	if (pwd == '' || pwdChk == '') {
		$('#m_title').html('비밀번호 확인');
		$('#m_desc').html('비밀번호를 입력해주세요.');
		$('#md_trig').trigger('click');
		return;
	}

	if(pwd.length < 8){
		$('#m_title').html('비밀번호 확인');
		$('#m_desc').html('비밀번호는 최소 8자리로 입력해주세요.');
		$('#md_trig').trigger('click');
		$('#newPwd').focus();
		return;
	}

	if (pwd != pwdChk) {
		$('#m_title').html('비밀번호 확인');
		$('#m_desc').html('비밀번호가 일치하지 않습니다.<br>비밀번호를 다시 확인해주세요.');
		$('#md_trig').trigger('click');
		$('#newPwd').val('');
		$('#newPwdChk').val('');
		$('#newPwd').focus();
		return;
	}
	
	var data = {};
	var tel = $('#usrTel').val();
	data["usrTel"] = tel.replace(/-/gi, '');
	data["usrNation"] = $('#usrNation').val();
	data["usrPw"] = pwd;
	
	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/resetPwd",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				$('#m_title').html('비밀번호 변경 실패');
				$('#m_desc').html('비밀번호 변경에 실패하였습니다.<br>다시 시도해 주세요.');
				$('#md_trig').trigger('click');
			} else {
				alert('비밀번호가 성공적으로 변경되었습니다.');
				location.href='${pageContext.request.contextPath}/login';
			}
		},
		beforeSend : function() {
			$('#preloader').css('display', 'block');
		},
		complete : function() {
			$('#preloader').css('display', 'none');
		},
		error : function(result) {
			alert('문의주세요.');
		}
	});
}

</script>
<jsp:include page="../common/naver_js.jsp"></jsp:include>
</html>
