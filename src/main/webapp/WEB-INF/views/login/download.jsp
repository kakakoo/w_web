<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>싸고 편한 환전, 웨이즈(WEYS) - No. 1 모바일 환전 앱</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="WEYS" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="웨이즈로 환전하세요. 정부 등록 1호 환전 서비스로 저렴한 수수료, 빠르고 간편한 환전 절차, 편리한 수령 방법을 제공합니다. 인천공항 T1/T2, 김포공항역, 홍대입구역 픽업 가능!" />
	<meta property="fb:app_id" content="827947520730465" />
	<meta property="og:site_name" content="웨이즈" />
	<meta property="og:locale" content="ko_KR" />
	<meta property="og:url" content="https://weys.exchange/" />
	<meta property="og:title" content="환전 예약 후 공항에서 픽업하세요!" />
	<meta property="og:description" content="10개국 통화, 인천공항 T1/T2, 김포공항역, 홍대입구역 픽업 가능! 신규가입시 주요통화 100% 우대 쿠폰 지급" />
	<meta property="og:type" content="website" />
	<meta property="og:image" content="https://weys.exchange/weys/og.jpg" />

<style type="text/css">
	html,  body {
		margin: 0 !important;
		padding: 0 !important;
		height: 100% !important;
		width: 100% !important;
	}
	img {
		-ms-interpolation-mode: bicubic;
	}
	a[x-apple-data-detectors] {
		color: inherit !important;
	}
	.wrap {
		margin: 0; padding: 0; background: #f1f1f1; width: 100%; height: 100%;
	}
	.content {
		position: absolute;
		top: 50%;
		left: 50%;
		margin-top: -186px;
		margin-left: -150px;
		width: 300px;
		height: auto;
		text-align: center;
	}
	.logo {
		width: 217px;
		height: 217px;
	}
	.sub-logo {
		margin: 34px 0 34px 0;
	}
	.buttons {
		width: 100%;
		height: 60px;
		text-align: center;
	}
	</style>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-120220322-1"></script>
<script>
 window.dataLayer = window.dataLayer || [];
 function gtag(){dataLayer.push(arguments);}
 gtag('js', new Date());
 gtag('config', 'UA-120220322-1');

	window.onload = function() {
		   var uagent = navigator.userAgent.toLowerCase();
		   if (uagent.search("iphone") > -1){
			  location.href='itms-apps://itunes.apple.com/app/id983091615';
		   }else{
			  location.href='market://details?id=i4unetworks.weys';
			}
	}
	document.addEventListener('touchmove', function(event) {
        event = event.originalEvent || event;
        if (event.scale !== 1) {
           event.preventDefault();
        }
    }, false);
	</script>
	
</head>
<body>
    <div class="wrap">
    	<div class="content">
    		<img class="logo" src="${pageContext.request.contextPath}/resources/images/appicon.png" alt="WEYS">
    		<img class="sub-logo" src="${pageContext.request.contextPath}/resources/images/sub-logo.png" alt="수수료 없이 환전했다! 웨이즈">
    		<div class="buttons">
    			<a href="https://itunes.apple.com/kr/app/id983091615?mt=8" target="_blank" alt="Download on the App Store"><img class="apple" src="${pageContext.request.contextPath}/resources/images/btn_appstore.png"></a>
    			<a href="https://play.google.com/store/apps/details?id=i4unetworks.weys" target="_blank" alt="Get in on Google Play"><img class="google" src="${pageContext.request.contextPath}/resources/images/btn_googleplay.png"></a>
    		</div>
    	</div>
    </div>
</body>
</html>
