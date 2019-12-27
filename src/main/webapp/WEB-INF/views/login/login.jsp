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
			<h4 class="text-white">로그인</h4>
		  </div>
		</div>
	  </div>
	</section>
	<!-- Page Header End --> 
  <div class="login-signup-page mx-auto my-5">
      <div class="bg-light shadow-md rounded p-4 mx-2">
      <form id="loginForm" method="post">
          <div class="form-group">
                  <label for="youSend">휴대전화번호</label>
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
						<input type="tel" class="form-control" id="usrTel" value="${id }" required placeholder="휴대전화번호를 입력하세요">
					</div>
                </div>
          <div class="form-group">
          <label for="loginPassword">비밀번호</label>
          <input type="password" class="form-control" id="usrPw" onkeypress="if( event.keyCode==13 ){login();}" required placeholder="비밀번호를 입력하세요">
        </div>
          <div class="row">
          <div class="col-sm">
              <div class="form-check custom-control custom-checkbox">
              <input id="remember-me" name="remember" class="custom-control-input" type="checkbox" <c:if test="${not empty id}">checked="checked"</c:if>>
              <label class="custom-control-label" for="remember-me">기억하기</label>
            </div>
            </div>
          <div class="col-sm text-right"><a class="btn-link" href="${pageContext.request.contextPath}/reset_password">비밀번호 재설정</a></div>
        </div>
          <button class="btn btn-primary btn-block my-4" onclick="login()" type="button">로그인</button>
        </form>
<%--       <p class="text-3 text-muted text-center mb-0">아직 계정이 없으신가요? <a class="btn-link" href="${pageContext.request.contextPath}/signup">회원가입</a></p> --%>
    </div>
    </div>
    </div>
  <!-- Content end -->
  
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	
	<div class="wrap-loading display-none">
		<div><img width="42px" src="${pageContext.request.contextPath}/resources/images/loading.gif" /></div>
	</div>
</body>
<jsp:include page="../common/common_js.jsp"></jsp:include> 
<%-- <script src="${pageContext.request.contextPath}/resources/work/login.js"></script> --%>
<script type="text/javascript">

$(function() {
	var tel = $('#usrTel').val();
	if(tel == ''){
		$('#usrTel').focus();
	} else {
		$('#usrPw').focus();
	}
});


function login() {
	var data = {};
	var tel = $('#usrTel').val();
	var chk = $("input:checkbox[id='remember-me']").is(":checked");
	data["usrTel"] = tel.replace(/-/gi, '');
	data["usrPw"] = $('#usrPw').val();
	data["usrNation"] = $('#usrNation').val();
	data["chk"] = chk;

	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/login",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				var msg = result.msg;
				alert(msg);
			} else {
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
</script>
<jsp:include page="../common/naver_js.jsp"></jsp:include>
</html>
