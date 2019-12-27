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
          
          <!-- Notifications
          ============================================= -->
          <div class="bg-light shadow-sm rounded p-4 mb-4">
            <h3 class="text-5 font-weight-400">알림설정</h3>
            <p class="text-muted">선택한 알림이 <span class="text-body">${info.usrEmail }</span> 또는 앱 푸시 알림으로 전달됩니다.</p>
            <hr class="mx-n4">
            <form id="notifications" method="post">
              <div class="form-check custom-control custom-checkbox">
                <input id="agree" name="notifications" class="custom-control-input" type="checkbox" <c:if test="${notiInfo.AGREE == 'Y' }">checked</c:if>>
                <label class="custom-control-label text-3" for="agree">마케팅 정보</label>
                <p class="text-muted line-height-3 mt-2">새로운 혜택을 가장 빠르게 안내 받을 수 있습니다.</p>
              </div>
              <hr class="mx-n4">
<!--               <div class="form-check custom-control custom-checkbox"> -->
<%--                 <input id="excNoti" name="notifications" class="custom-control-input" type="checkbox" <c:if test="${notiInfo.EXC_NOTI == 'Y' }">checked</c:if>> --%>
<!--                 <label class="custom-control-label text-3" for="excNoti">실시간 환율 정보</label> -->
<!--                 <p class="text-muted line-height-3 mt-2">매일 아침 9시 실시간 환율 정보를 보내드립니다.</p> -->
<!--               </div> -->
<!--               <hr class="mx-n4"> -->
              <button class="btn btn-primary mt-1" onclick="updateNoti()" type="button">저장</button>
            </form>
          </div>
          <!-- Notifications End --> 
          
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
<script type="text/javascript">
function updateNoti(){
	
	var data = {};
	data["agree"] = $("input:checkbox[id='agree']").is(":checked");
	data["excNoti"] = $("input:checkbox[id='excNoti']").is(":checked");
	
	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/updateNoti",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				$('#m_title').html('알람설정 변경 실패');
				$('#m_desc').html('다시 시도해 주세요.');
				$('#md_trig').trigger('click');
			} else {
				$('#m_title').html('알람설정 변경 완료');
				$('#m_desc').html('알람설정이 성공적으로 변경되었습니다.');
				$('#md_trig').trigger('click');
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
