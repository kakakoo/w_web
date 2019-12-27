<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no">
    <meta name="description" content="웨이즈를 이용해주셔서 감사합니다! 웨이즈는 고객님의 의견에 귀 기울이며 보다 나은 서비스 제공을 위해 노력합니다.">
	<title>고객 만족도 조사 | 웨이즈</title>

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/custom.css" rel="stylesheet">
	
	<!-- MODERNIZR MENU -->
	<script src="${pageContext.request.contextPath}/resources/js/modernizr.js"></script>
	
</head>
<body>
<div id="preloader">
		<div data-loader="circle-side"></div>
	</div><!-- /Preload -->
	
	<div id="loader_form">
		<div data-loader="circle-side-2"></div>
	</div><!-- /loader_form -->
	
	<div class="container-fluid full-height">
		<div class="row" style="height: 100vh;">
			<div class="col-lg-12 content-left">
				<div class="content-left-wrapper">
					
					<div>
						<figure><img src="${pageContext.request.contextPath}/resources/images/info_graphic_1.svg" alt="" class="img-fluid"></figure>
						<h2>${txt1 }</h2>
						<p>${txt2 }</p>
						<a href="/" class="btn_1 rounded mobile_btn">웨이즈 홈페이지로 이동하기</a>
					</div>
				</div>
				<!-- /content-left-wrapper -->
			</div>
			<!-- /content-left -->

			
		</div>
		<!-- /row-->
	</div>
	<!-- /container-fluid -->

	<div class="cd-overlay-nav">
		<span></span>
	</div>
	<!-- /cd-overlay-nav -->

	<div class="cd-overlay-content">
		<span></span>
	</div>
	<!-- /cd-overlay-content -->

	
	<!-- COMMON SCRIPTS -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/common_scripts.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/velocity.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/functions.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/pw_strenght.js"></script>

	<!-- Wizard script -->
	<script src="${pageContext.request.contextPath}/resources/js/registration_func.js"></script>

</body>
</html>