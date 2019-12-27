<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../common/common.jsp"></jsp:include>
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

	<div id="container">
		<div class="page_content">
			<c:forEach var="items" items="${info.imgList }" varStatus="status">
				<img src="${pageContext.request.contextPath}/imgView/${items }" style="width: 100%;">
				
				<c:if test="${status.count == info.btnPst }">
					<div class="btn_area">
						<div class="join_btn" onclick="joinEvent()">${btnTitle }</div>
					</div>
				</c:if>
			</c:forEach>
			
		</div>
	</div>

	<div class="body_cont">
		<div class="noti_area">
			${info.eventTxt }
		</div>
	</div>

</body>

<jsp:include page="../common/common_js.jsp"></jsp:include>
<script type="text/javascript">
	var offset = 0;

	$(function() {

	});

	function joinEvent() {

		var tp = '${info.eventTp}';
		var web = '${web}';

		if (tp == 'E') {
			if (web == 'T') {
				alert('웨이즈 앱 다운로드 링크로 이동합니다.');
				var uagent = navigator.userAgent.toLowerCase();
				if (uagent.search("iphone") > -1) {
					location.href = 'itms-apps://itunes.apple.com/app/id983091615';
				} else {
					location.href = 'market://details?id=i4unetworks.weys';
				}
			} else {
				alert('rsv');
			}
		} else {
			var usrId = '${userVO.usrId}';

			if (usrId == 0) {
				if (web == 'T') {
					alert('로그인을 먼저 진행해 주세요');
					location.href = '${pageContext.request.contextPath}/login';
					return;
				} else {
					alert('login');
					return;
				}
			}

			if (offset == 1) {
				alert('이벤트에 참여하셨습니다.');
				return;
			}

			var data = {};
			data["usrId"] = usrId;
			data["web"] = web;

			$.ajax({
				contentType : "application/json",
				dataType : "json",
				type : "post",
				url : "${pageContext.request.contextPath}/event/${info.eventId}",
				data : JSON.stringify(data),
				success : function(result) {
					var res = result.result;
					var web = result.web;
					if (res == 'fail') {
						alert(result.msg);
					} else {
						alert('이벤트에 참여했습니다.');
						offset = 1;
					}
				},
				beforeSend : function() {
					$('.wrap-loading').removeClass('display-none');
				},
				complete : function() {
					$('.wrap-loading').addClass('display-none');
				},
				error : function(result) {

				}
			});
		}
	}
</script>
<jsp:include page="../common/naver_js.jsp"></jsp:include>
</html>