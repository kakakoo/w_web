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
			<h4 class="text-white">수령 장소 안내</h4>
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
        
          <!-- Pickup
          ============================================= -->
          <div class="col-md-6 mb-5">
            <div class="bg-white shadow-sm rounded p-4 text-center">
              <div class="featured-box style-4">
                <div style="width: 100%; height: auto; padding: 20px 0px; background:#f3f5f6; border-radius: 5px; text-align:center;">
					<div style="padding-left: 20px; font-size:16px; font-weight:600; text-align:left;">인천공항 T1 3층 수하물보관소</div>
					<div style="padding-left: 20px; padding-top:10px; text-align:left;"><span style="padding:5px 5px; border-radius: 3px; background: #cecece; color: #2a333d; width: auto; height: 28px; font-size: 11px;">영업시간: 매일 24시간</span></div>
					<div style="padding-left: 20px; padding-right:20px; padding-top:10px; font-size:12px; color: #aaaeb2; text-align:left;">3층 출국층 M카운터 부근에 위치한 수하물보관소에 방문하여 수령하시면 됩니다.(혼잡시간의 경우 대기시간이 발생할 수 있습니다.)</div>
					<img src="${pageContext.request.contextPath}/resources/images/ICN1HJ.png" style="width: 80%; margin-top: 20px; margin-bottom:20px;" data-pagespeed-url-hash="2952245092" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
				</div>
              </div>
            </div>
          </div>
          <!-- Pickup end --> 
          
          <!-- Pickup
          ============================================= -->
          <div class="col-md-6 mb-5">
            <div class="bg-white shadow-sm rounded p-4 text-center">
              <div class="featured-box style-4">
                <div style="width: 100%; height: auto; padding: 20px 0px; background:#f3f5f6; border-radius: 5px; text-align:center;">
					<div style="padding-left: 20px; font-size:16px; font-weight:600; text-align:left;">인천공항 T2 3층 수하물보관소</div>
					<div style="padding-left: 20px; padding-top:10px; text-align:left;"><span style="padding:5px 5px; border-radius: 3px; background: #cecece; color: #2a333d; width: auto; height: 28px; font-size: 11px;">영업시간: 매일 07:00~22:00</span></div>
					<div style="padding-left: 20px; padding-right:20px; padding-top:10px; font-size:12px; color: #aaaeb2; text-align:left;">3층 출국층 H카운터 부근에 위치한 수하물보관소에 방문하여 수령하시면 됩니다.(혼잡시간의 경우 대기시간이 발생할 수 있습니다.)</div>
					<img src="${pageContext.request.contextPath}/resources/images/ICN2HJ.png" style="width: 80%; margin-top: 20px; margin-bottom:20px;" data-pagespeed-url-hash="2952245092" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
				</div>
              </div>
            </div>
          </div>
          <!-- Pickup end --> 
          
          <!-- Pickup
          ============================================= -->
          <div class="col-md-6 mb-5">
            <div class="bg-white shadow-sm rounded p-4 text-center">
              <div class="featured-box style-4">
                <div style="width: 100%; height: auto; padding: 20px 0px; background:#f3f5f6; border-radius: 5px; text-align:center;">
					<div style="padding-left: 20px; font-size:16px; font-weight:600; text-align:left;">인천공항 1터미널역 트래블스토어</div>
					<div style="padding-left: 20px; padding-top:10px; text-align:left;"><span style="padding:5px 5px; border-radius: 3px; background: #cecece; color: #2a333d; width: auto; height: 28px; font-size: 11px;">영업시간: 매일 08:00~21:30</span></div>
					<div style="padding-left: 20px; padding-right:20px; padding-top:10px; font-size:12px; color: #aaaeb2; text-align:left;">인천공항 1터미널역 지하 1층 일반열차 개찰구 옆에 위치한 트래블스토어에서 수령하시면 됩니다.</div>
					<img src="${pageContext.request.contextPath}/resources/images/ICNT11B.png" style="width: 80%; margin-top: 20px; margin-bottom:20px;" data-pagespeed-url-hash="2952245092" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
				</div>
              </div>
            </div>
          </div>
          <!-- Pickup end --> 
          
          <!-- Pickup
          ============================================= -->
          <div class="col-md-6 mb-5">
            <div class="bg-white shadow-sm rounded p-4 text-center">
              <div class="featured-box style-4">
                <div style="width: 100%; height: auto; padding: 20px 0px; background:#f3f5f6; border-radius: 5px; text-align:center;">
					<div style="padding-left: 20px; font-size:16px; font-weight:600; text-align:left;">김포공항역 트래블센터</div>
					<div style="padding-left: 20px; padding-top:10px; text-align:left;"><span style="padding:5px 5px; border-radius: 3px; background: #cecece; color: #2a333d; width: auto; height: 28px; font-size: 11px;">영업시간: 매일 09:00~21:00</span></div>
					<div style="padding-left: 20px; padding-right:20px; padding-top:10px; font-size:12px; color: #aaaeb2; text-align:left;">김포공항역 지하 1층 공항철도 개찰구 옆에 위치한 트래블센터에서 수령하시면 됩니다.</div>
					<img src="${pageContext.request.contextPath}/resources/images/KIMPO.png" style="width: 80%; margin-top: 20px; margin-bottom:20px;" data-pagespeed-url-hash="2952245092" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
				</div>
              </div>
            </div>
          </div>
          <!-- Pickup end --> 
          
          <!-- Pickup
          ============================================= -->
          <div class="col-md-6 mb-5">
            <div class="bg-white shadow-sm rounded p-4 text-center">
              <div class="featured-box style-4">
                <div style="width: 100%; height: auto; padding: 20px 0px; background:#f3f5f6; border-radius: 5px; text-align:center;">
					<div style="padding-left: 20px; font-size:16px; font-weight:600; text-align:left;">홍대입구역 트래블센터</div>
					<div style="padding-left: 20px; padding-top:10px; text-align:left;"><span style="padding:5px 5px; border-radius: 3px; background: #cecece; color: #2a333d; width: auto; height: 28px; font-size: 11px;">영업시간: 매일 10:00~20:30</span></div>
					<div style="padding-left: 20px; padding-right:20px; padding-top:10px; font-size:12px; color: #aaaeb2; text-align:left;">홍대입구역 지하 2층 공항철도 개찰구 안에 위치한 트래블센터에서 수령하시면 됩니다.</div>
					<img src="${pageContext.request.contextPath}/resources/images/HD.png" style="width: 80%; margin-top: 20px; margin-bottom:20px;" data-pagespeed-url-hash="2952245092" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
				</div>
              </div>
            </div>
          </div>
          <!-- Pickup end --> 
       
          
        </div>
      </div>
    </section>
    
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
				$('#phoneNumber').attr('placeholder', '이미 존재하는 번호입니다');
			} else {
				
				cerfity_code = result.random;
				sendFlag = 'N';
				certyFlag = 'Y';
				$('#certifyNum').removeClass('btn-noactive');
				$('#sendNum').addClass('btn-noactive');
				
				countdown("checkTime", 3, 0);
				$('#phoneNumber').attr("readonly", true);
				$('#usrNation').attr("disabled", true);
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
</html>
