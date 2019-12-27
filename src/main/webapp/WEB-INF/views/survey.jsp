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
		
		<div class="row row-height">
			<div class="col-lg-12" style="height: 160px; background: #0065ff; padding: 40px 0px 0px 20px; ">
				<div style="text-align: left; margin-bottom: 10px;"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="" width="120px;"></div>
				<div style="text-align: left; font-size: 28px; color: #fff; font-weight: 100;">고객 만족도 조사</div>
			</div>

			<div class="col-lg-12 content-right" id="start">
				
				<input type="hidden" id="rsvId" value="${rsvNo }">
				<div id="wizard_container">
					<div id="top-wizard">
							<div id="progressbar"></div>
						</div>
						<!-- /top-wizard -->
							<input id="website" name="website" type="text" value="">
							<!-- Leave for security protection, read docs for details -->
							<div id="middle-wizard">
								<div class="submit step">
									<div style="margin-bottom: 30px; padding: 20px; border: 1px solid #d2d8dd; border-radius: 3px;">
										<span style="font-size: 14px; line-height: 18px;"><b>${usrNm } 님, 웨이즈를 이용해주셔서 감사합니다!<br /><br /></b> 웨이즈는 고객님의 의견에 귀 기울이며 보다 나은 서비스 제공을 위해 노력합니다.<br><br>준비된 설문 항목에 대하여 고객님의 소중한 의견 부탁드립니다. 시간 내어 설문에 참여해주셔서 감사합니다.<br><br></span><span style="font-size: 14px; line-height: 18px;">(매월 10일 공지사항을 통해 발표되며 기프티콘은 가입 시 등록된 휴대전화 번호로 발송)</span>
									</div>
									<h3 class="main_question">1. 웨이즈 서비스는 어떻게 알게되셨나요?</h3>
									<div class="form-group">
										<div class="styled-select clearfix">
											<select class="wide required" id="first_q" name="country" onchange="getVals(this, 'country');">
												<option value="">선택하세요.</option>
												<option value="FRND">지인 추천</option>
												<option value="PORTAL">포털사이트 검색</option>
												<option value="BLOG">블로그</option>
												<option value="CAFE">카페</option>
												<option value="STORE">앱스토어 검색</option>
												<option value="SNS">SNS 검색</option>
												<option value="ETC">기타</option>                      
											</select>
										</div>
									</div>
									<br />
									<h3 class="main_question">2. 웨이즈 서비스 만족도 평가 <span style="color: darkgray">(복수선택가능)</span></h3>
									<div class="form-group">
										<label class="container_check version_2">24시간 예약 시스템
											<input type="checkbox" name="question_2" value="24_HOUR" class="required" onchange="getVals(this, 'question_1');">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="form-group">
										<label class="container_check version_2">실시간 매매기준율 적용
											<input type="checkbox" name="question_2" value="BASIC_RATE" class="required" onchange="getVals(this, 'question_1');">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="form-group">
										<label class="container_check version_2">투명한 환전 수수료 확인
											<input type="checkbox" name="question_2" value="CLEAR_RATE" class="required" onchange="getVals(this, 'question_1');">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="form-group">
										<label class="container_check version_2">환전 수수료 우대 쿠폰
											<input type="checkbox" name="question_2" value="COUPON" class="required" onchange="getVals(this, 'question_1');">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="form-group">
										<label class="container_check version_2">인천국제공항 수령
											<input type="checkbox" name="question_2" value="ICN_SERVICE" class="required" onchange="getVals(this, 'question_1');">
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="form-group">
										<label class="container_check version_2">웨이즈 외화 봉투(환전왔습니다)
											<input type="checkbox" name="question_2" value="PACKAGE" class="required" onchange="getVals(this, 'question_1');">
											<span class="checkmark"></span>
										</label>
									</div>
									<br />
									<h3 class="main_question">3. 외화 배송 만족도 평가 <span style="color: darkgray">(5점 만점)</span></h3>
									<div class="form-group rating_wp clearfix">
										<label class="rating_type">외화 수령 안내는 명확했나요?</label>
										<span class="rating">
											<input type="radio" class="required rating-input" id="rating-input-1-5" name="rating_input_1" value="5" onchange="getVals(this, 'rating_input_1');">
											<label for="rating-input-1-5" class="rating-star"></label>
											<input type="radio" class="required rating-input" id="rating-input-1-4" name="rating_input_1" value="4" onchange="getVals(this, 'rating_input_1');">
											<label for="rating-input-1-4" class="rating-star"></label>
											<input type="radio" class="required rating-input" id="rating-input-1-3" name="rating_input_1" value="3" onchange="getVals(this, 'rating_input_1');">
											<label for="rating-input-1-3" class="rating-star"></label>
											<input type="radio" class="required rating-input" id="rating-input-1-2" name="rating_input_1" value="2" onchange="getVals(this, 'rating_input_1');">
											<label for="rating-input-1-2" class="rating-star"></label>
											<input type="radio" class="required rating-input" id="rating-input-1-1" name="rating_input_1" value="1" onchange="getVals(this, 'rating_input_1');">
											<label for="rating-input-1-1" class="rating-star"></label>
										</span>
									</div>
									<div class="form-group rating_wp clearfix">
										<label class="rating_type">외화 수령 과정이 편리하셨나요?</label>
										<span class="rating">
										<input type="radio" class="required rating-input" id="rating-input-3-5" name="rating_input_3" value="5" onchange="getVals(this, 'rating_input_3');">
										<label for="rating-input-3-5" class="rating-star"></label>
										<input type="radio" class="required rating-input" id="rating-input-3-4" name="rating_input_3" value="4" onchange="getVals(this, 'rating_input_3');">
										<label for="rating-input-3-4" class="rating-star"></label>
										<input type="radio" class="required rating-input" id="rating-input-3-3" name="rating_input_3" value="3" onchange="getVals(this, 'rating_input_3');">
										<label for="rating-input-3-3" class="rating-star"></label>
										<input type="radio" class="required rating-input" id="rating-input-3-2" name="rating_input_3" value="2" onchange="getVals(this, 'rating_input_3');">
										<label for="rating-input-3-2" class="rating-star"></label>
										<input type="radio" class="required rating-input" id="rating-input-3-1" name="rating_input_3" value="1" onchange="getVals(this, 'rating_input_3');">
										<label for="rating-input-3-1" class="rating-star"></label>
										</span>
									</div>
									<div class="form-group rating_wp clearfix">
										<label class="rating_type">배송 담당자는 친절했나요?</label>
										<span class="rating">
										<input type="radio" class="required rating-input" id="rating-input-4-5" name="rating_input_4" value="5" onchange="getVals(this, 'rating_input_4');">
										<label for="rating-input-4-5" class="rating-star"></label>
										<input type="radio" class="required rating-input" id="rating-input-4-4" name="rating_input_4" value="4" onchange="getVals(this, 'rating_input_4');">
										<label for="rating-input-4-4" class="rating-star"></label>
										<input type="radio" class="required rating-input" id="rating-input-4-3" name="rating_input_4" value="3" onchange="getVals(this, 'rating_input_4');">
										<label for="rating-input-4-3" class="rating-star"></label>
										<input type="radio" class="required rating-input" id="rating-input-4-2" name="rating_input_4" value="2" onchange="getVals(this, 'rating_input_4');">
										<label for="rating-input-4-2" class="rating-star"></label>
										<input type="radio" class="required rating-input" id="rating-input-4-1" name="rating_input_4" value="1" onchange="getVals(this, 'rating_input_4');">
										<label for="rating-input-4-1" class="rating-star"></label>
										</span>
									</div>
									<br />
									<h3 class="main_question">4. 의견이 있으시면 자유롭게 남겨주세요.</h3>
									<div class="form-group add_top_30">
										<textarea name="additional_message" class="form-control required" id="msg" style="height:150px;" placeholder="내 답변" onkeyup="getVals(this, 'additional_message');"></textarea>
									</div>
								</div>
								<!-- /step-->

							</div>
							<!-- /middle-wizard -->
							<div id="bottom-wizard">
<!-- 								<button type="button" name="backward" class="backward">Prev</button> -->
<!-- 								<button type="button" name="forward" class="forward">Next</button> -->
								<button type="submit" name="process" onclick="submitSurvey()" class="submit">제출하기</button>
							</div>
							<!-- /bottom-wizard -->
					</div>
					<!-- /Wizard container -->
			</div>
			<!-- /content-right-->
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
<script type="text/javascript">

$(function () {

});

function submitSurvey(){

	var first_q = $('#first_q').val();
	var second_q = '';
	
	$("input[name=question_2]:checked").each(function(){
		var val = $(this).val();
		if(second_q == ''){
			second_q = val;
		} else {
			second_q = second_q + ',' + val;
		}
	});
	
	var third_q = $(":input:radio[name=rating_input_1]:checked").val();
	var fourth_q = $(":input:radio[name=rating_input_3]:checked").val();
	var fifth_q = $(":input:radio[name=rating_input_4]:checked").val();
	var memo = $('#msg').val();

	if(first_q == ''){
		alert('문항을 선택해 주세요!');
		$('#first_q').focus();
		return;
	}

	if(second_q == ''){
		alert('서비스 만족도 평가를 선택해 주세요!');
		return;
	}

	if(third_q == null){
		alert('배송 만족도 평가를 선택해 주세요!');
		return;
	}

	if(fourth_q == null){
		alert('배송 만족도 평가를 선택해 주세요!');
		return;
	}

	if(fifth_q == null){
		alert('배송 만족도 평가를 선택해 주세요!');
		return;
	}

	var data = {};
	data["first_a"] = first_q;
	data["second_a"] = second_q;
	data["third_a"] = third_q;
	data["fourth_a"] = fourth_q;
	data["fifth_a"] = fifth_q;
	data["memo"] = memo;
	data["rsvNo"] = $('#rsvId').val();
	
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/survey",
		data: JSON.stringify(data),
		async : false,
		contentType: "application/json",
		success : function(result){
			
			var res = result.result;
			if(res == 'success'){
				alert('설문이 등록되었습니다. 감사합니다.');
				location.reload(true);
			} else {
				alert('다시 시도해 주세요.');				
			}

		},
		error : function(result){
			

		}
	});
}


</script>
</html>