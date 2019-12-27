<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>웨이즈 이용 가이드</title>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background: #fff;
}
body, table, td, p, a, li, blockquote {
	-webkit-text-size-adjust: none!important;
	font-family: sans-serif;
	font-style: normal;
	font-weight: 400;
}
	#wrap {
	}
	.header { position: relative; background: #4ab289; height: 220px; padding-top:30px; }
	.content { padding: 0px; }
	.content p { padding: 30px 30px 0px 30px; font-size: 11pt; color: #485465; line-height: 22pt; letter-spacing: -1px; }
	.content img { width: 100%; margin: 30px 0px 30px 0px; }
	.content b { color: #121212; font-weight: 800; }
	.footer {	}
	.service-title { padding: 50px 30px 30px 30px; font-size: 12pt; color: #fff; font-weight: 100; }
	.service-desc { padding: 10px 30px 30px 30px; font-size: 22pt; color: #fff; font-weight: 700; letter-spacing: -1px; }
	.service-btn { 
		position: absolute; 
		left: 5%; 
		bottom: 70px; 
		width: 90%; 
		padding: 15px 0px;
		background: #fff; 
		border-radius: 7px;
		font-weight: 600;
		color: #121212;
		text-align: center;
		-webkit-box-shadow: 0px 0px 61px -6px rgba(0,0,0,0.2);
		-moz-box-shadow: 0px 0px 61px -6px rgba(0,0,0,0.2);
		box-shadow: 0px 0px 61px -6px rgba(0,0,0,0.2);
	}
	.service-btn2 { 
		position: relative; 
		left: 5%;
		width: 90%; 
		padding: 15px 0px;
		margin-top: 50px; 
		margin-bottom: 100px;
		background: #0065ff; 
		border-radius: 7px;
		font-weight: 600;
		color: #fff;
		text-align: center;
		-webkit-box-shadow: 0px 0px 61px -6px rgba(0,0,0,0.2);
		-moz-box-shadow: 0px 0px 61px -6px rgba(0,0,0,0.2);
		box-shadow: 0px 0px 61px -6px rgba(0,0,0,0.2);
	}
	.service-info { 
		position: absolute; 
		left: 5%; 
		bottom: 14px; 
		width: 90%; 
		padding: 15px 0px;
		font-weight: 200;
		font-size: 10pt; 
		color: #fff;
		text-align: center;

	}
	.athor-info {
		position: absolute; 
		left: 5%; 
		bottom: 14px; 
		width: 90%; 
		padding: 15px 0px;
		font-weight: 200;
		font-size: 10pt; 
		color: #fff;
		text-align: center;
	}
	.mini-btn { 
		border-radius: 4px;
		padding: 5px 10px; 
		margin-bottom: 10px;
		margin-left: 14px;
		font-size: 9pt;
		border: 1px solid #dce3ed;
		color: #485465;	
	}
	
	/* Style the element that is used to open and close the accordion class */
p.accordion {
    color: #444;
    cursor: pointer;
    padding: 14px 0px;
    text-align: left;
    border-bottom: 1px solid #dce3ed;
    outline: none;
    margin: 0px;
	font-size: 16px;
	font-weight: 800;
	margin: 0px 30px;
	-webkit-tap-highlight-color: rgba(0,0,0,0);
}

/* Add a background color to the accordion if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */

/* Unicode character for "plus" sign (+) */
p.accordion:after {
    float: right;
	background-image: url("../resources/img/btn_arrow.png");
    background-size: 14px 9px;
    display: inline-block;
    width: 14px; 
    height: 9px;
	margin-top: 10px;
    content:"";
}
	p.accordion.active { color: #0065ff; border-bottom: 0px solid #dce3ed;}
	
/* Unicode character for "minus" sign (-) */
p.accordion.active:after {
    float: right;
	background-image: url("../resources/img/btn_arrow_up.png");
    background-size: 14px 9px;
    display: inline-block;
    width: 14px; 
    height: 9px;
    content:"";
}
	
	div.panel {
    padding: 0 30px;
    background-color: #EDF1F4;
    max-height: 0;
    overflow: hidden;
    opacity: 0;
	border-top: 1px solid #dce3ed;
	border-bottom: 1px solid #dce3ed;
}

div.panel.show {
    opacity: 1;
    max-height: 1000px; /* Whatever you like, as long as its more than the height of the content (on all screen sizes) */
}

/* Style the element that is used for the panel class */
	table {border-collapse: collapse; border: 1px solid #dce3ed; margin-bottom: 30px; }
	
	table th {font-size: 11px; padding: 10px; background: #fff;}
	table td {font-size: 11px; padding: 10px; background: #fff;}
</style>
<script>
document.addEventListener("DOMContentLoaded", function(event) { 


var acc = document.getElementsByClassName("accordion");
var panel = document.getElementsByClassName('panel');

for (var i = 0; i < acc.length; i++) {
    acc[i].onclick = function() {
        var setClasses = !this.classList.contains('active');
        setClass(acc, 'active', 'remove');
        setClass(panel, 'show', 'remove');

        if (setClasses) {
            this.classList.toggle("active");
            this.nextElementSibling.classList.toggle("show");
        }
    }
}

function setClass(els, className, fnName) {
    for (var i = 0; i < els.length; i++) {
        els[i].classList[fnName](className);
    }
}

});
</script>
</head>
<body>
	<div id="wrap">
		<div class="header">
			<div class="service-title">이용 가이드</div>
			<div class="service-desc">웨이즈 환전<br>외화 수령장소 안내</div>
		</div>
		<div class="content">
		
			<c:if test="${store == 'ICNT13F' }">
				<p class="accordion active">인천공항 1터미널 3층</p>
				<div class="panel show">
					<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/img/map_icn_t1_3f1.png">
					<table width="100%">
					  <tbody>
						<tr>
					  <th scope="row" width="20%">위치</th>
					  <td>인천국제공항 제 1터미널 3층 출국층 N카운터 부근(14번 출입구 앞)</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">영업시간</th>
					  <td>매일 오전 5시 ~ 오후 9시 (9/30 종료)</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">비고</th>
					  <td><b>본 지점은 부스가 아닌 담당자 직접 배송 지역입니다.</b> 해당 위치 도착시 미리 안내된 배송담당자에게 연락주시면 즉시 수령이 가능합니다.</td>
					</tr>
					  </tbody>
					</table>
				</div>
			</c:if>
			
			<c:if test="${store == 'ICN1HJ' }">
				<p class="accordion active">인천공항 T1 3층 한진택배 수하물보관소</p>
				<div class="panel show">
					<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/ICN1HJ.png">
					<table width="100%">
					  <tbody>
						<tr>
					  <th scope="row" width="20%">위치</th>
					  <td>인천국제공항 제 1터미널 3층 M카운터 부근</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">영업시간</th>
					  <td>매일 24시간(오전 1시~2시 휴게시간)</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">비고</th>
					  <td><b>3층 출국층 M카운터 부근에 위치한 한진택배 수하물보관소에 방문하여 수령하시면 됩니다.(혼잡 시간의 경우 약간의 대기시간이 발생할 수 있습니다.)</td>
					</tr>
					  </tbody>
					</table>
				</div>
			</c:if>
			
			<c:if test="${store == 'ICN2HJ' }">
				<p class="accordion active">인천공항 T2 3층 한진택배 수하물보관소</p>
				<div class="panel show">
					<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/ICN2HJ.png">
					<table width="100%">
					  <tbody>
						<tr>
					  <th scope="row" width="20%">위치</th>
					  <td>인천국제공항 제 2터미널 3층 H카운터 부근</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">영업시간</th>
					  <td>매일 오전 7시 ~ 오후 10시</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">비고</th>
					  <td><b>3층 출국층 H카운터 부근에 위치한 한진택배 수하물보관소에 방문하여 수령하시면 됩니다.(혼잡 시간의 경우 약간의 대기시간이 발생할 수 있습니다.)</td>
					</tr>
					  </tbody>
					</table>
				</div>
			</c:if>
			
			<c:if test="${store == 'ICNT11B' }">
				<p class="accordion active">인천공항 1터미널역 트래블스토어(공항철도)</p>
				<div class="panel show">
					<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/ICNT11B.png">
					<table width="100%">
					  <tbody>
						<tr>
					  <th scope="row" width="20%">위치</th>
					  <td>인천공항 1터미널역 지하 1층 공항철도 일반열차 개찰구 옆</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">영업시간</th>
					  <td>매일 오전 8시 - 오후 9시 30분</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">비고</th>
					  <td>문의전화: 032-743-0213</td>
					</tr>
					  </tbody>
					</table>
				</div>
			</c:if>
			
			<c:if test="${store == 'KIMPO' }">
				<p class="accordion active">김포공항역 트래블센터(공항철도)</p>
				<div class="panel show">
					<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/KIMPO.png">
					<table width="100%">
					  <tbody>
						<tr>
					  <th scope="row" width="20%">위치</th>
					  <td>김포공항역 지하 1층 공항철도 개찰구 옆(4번 출구 부근)</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">영업시간</th>
					  <td>매일 오전 9시 ~ 오후 9시</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">비고</th>
					  <td>문의전화: 02-2665-0211</td>
					</tr>
					  </tbody>
					</table>
				</div>
			</c:if>
				
			<c:if test="${store == 'HD' }">
				<p class="accordion active">홍대입구역 트래블센터(공항철도)</p>
				<div class="panel show">
					<img width="100%" class="top_title" src="${pageContext.request.contextPath}/resources/images/HD.png">
					<table width="100%">
					  <tbody>
						<tr>
					  <th scope="row" width="20%">위치</th>
					  <td>홍대입구역 지하 2층 공항철도 개찰구 안(5번 출구 부근)</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">영업시간</th>
					  <td>오전 10시 - 오후 8시 30분</td>
					</tr>
					<tr>
					  <th scope="row" width="20%">비고</th>
					  <td>해당 지점은 개찰구 안쪽에 위치하고 있습니다. 개찰구 인터폰을 통해 "트래블센터에 왔습니다"라고 말씀하시면 지하철 요금 지불없이 입장이 가능합니다.<br>문의전화: 02-334-0211</td>
					</tr>
					  </tbody>
					</table>
				</div>
			</c:if>
			
			<p>
				<b>■ 유의사항</b><br><br>
				<b>1. 예약한 외화는 해당 지점 영업시간 중 수령 가능합니다.</b><br>지점 영업시간 중 미수령 시 고객님의 귀책사유로 인정되어 취소수수료가 부과됩니다.<br><br>
				<b>2. 예약한 장소에서만 수령이 가능합니다.</b><br>수령 장소 변경은 24시간 전까지만 가능하며, 이후 수령 장소 변경은 불가능합니다.<br><br>
				<b>3. 늦거나 일찍 도착해도 수령이 가능합니다.</b><br>해당 지점 영업시간 중이라면 도착 즉시 수령이 가능합니다.<br><br>
				<b>4. 출국 심사 후에는 수령이 불가능합니다.</b><br>출국 심사를 받은 후 면세구역으로 진입하셨거나 김해, 제주 등 다른 공항에서 경유하시는 경우 수령이 불가능합니다.<br><br>
				<b>5. 교환증, 실명확인증표 확인이 필요합니다.</b><br>안전하고 빠른 외화 전달을 위해 교환증과 실명확인증표(여권, 주민등록증, 운전면허증 중 택 1) 확인을 진행하고 있습니다. 협조 부탁드립니다.<br><br>
				<b>6. 예약자 본인이 아닌 경우 수령이 불가능합니다.</b><br>금융실명제 및 외국환거래규정에 따라 본인이 아닌 경우 외화 수령이 불가능하며, 이 경우 고객님의 귀책사유로 인정되어 환불 요청 시 취소수수료가 부과됩니다.</p>
			<p><b>■ 고객센터</b><br/><br/>ᆞ앱 내 채팅 상담(24시간 운영)<br/>ᆞ카카오톡 @weys 채팅 상담(24시간 운영)<br/>ᆞ전화 상담(평일 오전 9시 - 오후 6시)<br/><a href="tel:1670-2160"><button class="mini-btn">웨이즈 고객센터 1670-2160</button></a></p>
			<p></p>
		</div>
		<div class="footer">
			
		</div>
	</div>
</body>
</html>
