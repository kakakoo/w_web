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
			<h4 class="text-white">이용약관</h4>
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
        <div class="row mb-5">
        	<div class="ui twelve wide tablet twelve wide computer twelve wide widescreen twelve wide large screen column">
                              <strong>제1장 총칙</strong>
                              <p>&nbsp;</p>
                              <strong>제1조 (목적)</strong>
                              <p>본 약관은 주식회사 그레잇(이하 ‘회사’)가 제공하는 웨이즈 온라인 환전 서비스(이하 ‘서비스’)의 이용과 관련하여 회사와 회원 간의 권리, 의무 및 책임 사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제2조 (용어의 정의)</strong>
                              <p>①본 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
                              <ol>
                                <li>회원: 본 약관을 승인하고 회원가입을 하여 회사와 서비스 이용계약을 체결한 자를 말합니다.</li>
                                <li>아이디: 회원의 식별과 서비스 이용을 위하여 회원이 가입 시 입력한 전자우편 주소를 말합니다.</li>
                                <li>서비스페이지: 회원이 회사의 서비스를 이용하게 하려고 회사가 제공하는 서비스 내에서 제공되는 세부 페이지들을 말합니다.</li>
                                <li>비밀번호: 회원의 동일성 확인과 회원 정보의 보호를 위하여 회원이 회사가 승인한 문자와 숫자의 조합대로 설정한 것을 말합니다.</li>
                                <li>멤버십: 회원이 결제를 통해 회사가 제공하는 수수료 없는 환전 서비스를 이용할 수 있는 자격을 말합니다.</li>
                                <li>예약환전: 회원이 서비스를 통해 신청, 입금하고 약속된 장소에서 외화를 받는 거래를 말합니다.</li>
                              </ol>
                              <p>②본 약관에서 사용하는 용어 중 본조에서 정하지 아니한 것은 웨이즈 서비스의 안내 및 관계 법령에서 정하는 바에 따르며, 그 외에는 일반 상 관례에 따릅니다.</p>
                              <p>&nbsp;</p>
                              <p><strong>제3조 (약관의 명시, 효력 변경)</strong></p>
                              <p>①본 약관의 사본을 회사의 서비스 페이지, 팝업화면, 전자문서의 전송(전자우편 또는 기타 전자적 장치를 이용한 전송) 또는 기타의 방법으로 사용자에게 제공해야하며, 고객과 환전 업무와 관련한 계약을 체결할 때 약관을 명시하여야 합니다.</p>
                              <p>②이용자가 회원으로 가입 시 본 약관에 동의함으로써 본 약관의 효력이 발생합니다.</p>
                              <p>③회사는 ‘약관의 규제에 관한 법률’, ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’ 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.</p>
                              <p>④회사가 약관을 개정할 경우에는 적용 일자 및 개정 사유를 명시하여 현행약관과 함께 회사 사이트의 서비스페이지, 팝업화면 또는 기타의 방법으로 개정약관을 시행 일자 7일 이전부터 시행 일자 전날까지 공지합니다.</p>
                              <p>⑤회원이 개정약관의 적용에 동의하지 않는 경우에는 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다.</p>
                              <p>⑥회사는 회원이 본 약관의 내용에 대한 설명을 요청하는 경우 다음의 각호의 어느 하나의 방법으로 고객에게 약관의 중요 내용을 설명하여야 합니다.</p>
                              <ol>
                                <li>약관의 중요내용을 고객에게 직접 설명</li>
                                <li>약관의 중요 내용에 대한 설명을 전자적 장치를 통해 회원이 알기 쉽게 표시하고 고객으로부터 해당 내용을 충분히 인지하였다는 의사표시를 전자적 장치를 통해 수령</li>
                              </ol>
                              <p>⑦회사가 전항에 따라 회원에게 통지하면서 공지/고지일로부터 개정약관 시행일 7일 후까지 거부 의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 알렸음에도 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 제8조 1항의 규정에 따라 이용계약을 해지할 수 있습니다.</p>
                              <p>⑧회원은 회사가 제공하는 서비스를 이용하면서 전자상거래 등에서의 소비자보호에 관한 법률(예시: 공급서, 반품 등 통신판매에 관한 규정), 전자문서 및 전자거래 기본법(예시: 사업자의 의무에 관한 규정), 정보통신망 이용촉진 및 정보보호 등에 관한 법률(예시: 개인정보보호에 관한 규정) 등 관련 법령을 준수하여야 하며, 본 약관의 규정을 들어 관련 법령 위반에 대한 면책을 주장할 수 없습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제4조 (약관 외 준칙)</strong>
                              <p>본 약관에서 정하지 아니한 사항과 본 약관의 해석에 관하여는 외국환거래법, 전자금융거래법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 제정한 전자상거래 등에서의 소비자 보호 지침 및 관련 법령의 규정 등 관련 법규 및 일반관례에 의합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제2장 서비스 이용 신청 및 승낙 (회원가입 및 탈퇴)</strong>
                              <p>&nbsp;</p>
                              <strong>제5조 (이용계약의 성립)</strong>
                              <p>①이용자는 회사가 정한 가입 양식에 따라 회원 정보를 기재한 후 본 약관에 동의한다는 의사표시를 함으로써 회원가입을 신청합니다.</p>
                              <p>②이용 계약은 회원 ID 단위로 체결합니다. 이용계약이 성립되면, 이용신청자는 회원으로 등록됩니다.</p>
                              <p>③민법상 미성년자의 회원이 유료 서비스를 이용할 경우, 미성년자인 회원은 결제 전 법정대리인의 동의를 얻어야 합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제6조 (이용신청)</strong>
                              <p>①이용신청은 온라인으로 회사가 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 신청합니다.</p>
                              <p>②회사는 회원에게 다양하고 유익한 정보를 제공하기 위하여 이용 신청자에게 직업, 취미, 관심 분야 등의 정보를 제공할 것을 요청할 수 있습니다. 다만, 이용신청자는 그러한 정보의 제공을 거절할 수 있습니다.</p>
                              <p>③서비스 가입신청 양식에 기재하는 모든 회원 정보는 실제 데이터인 것으로 간주하며 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스 이용에 제한을 받을 수 있습니다.</p>
                              <p>④사실과 다른 정보, 거짓 정보를 기재하거나 추후 그러한 정보임이 밝혀질 경우 회사는 서비스 이용을 일시 정지하거나 영구정지 및 이용 계약을 해지할 수 있습니다. 이로 인하여 회사 또는 제3자에게 발생한 손해는 해당 회원이 모든 책임을 집니다.</p>
                              <p>⑤회원은 서비스 사용에 있어, 본 서비스를 불법재산 은닉, 자금세탁행위 등 탈법행위를 목적으로 사용하지 않음을 동의합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제7조 (회원정보사용에 대한 동의 및 이용신청의 승낙)</strong>
                              <p>①회사는 회원의 개인정보를 본 이용계약의 이행과 본 이용 계약상의 서비스 제공을 위한 목적으로만 이용합니다.</p>
                              <p>②회사는 회원이 회사 소정의 가입신청 양식에서 요구하는 모든 사항을 정확히 기재하여 이용신청을 한 경우 회원가입을 승낙할 수 있습니다.</p>
                              <p>③회사는 다음 각호에 해당하는 이용신청에 대하여는 승낙을 유보할 수 있습니다.</p>
                              <ol>
                                <li>설비에 여유가 없는 경우</li>
                                <li>기술상 지장이 있는 경우</li>
                                <li>기타 회사의 사정상 이용승낙이 곤란한 경우</li>
                              </ol>
                              <p>④회사는 다음 각호에 해당하는 이용신청에 대하여는 이를 승낙하지 아니할 수 있습니다.</p>
                              <ol>
                                <li>실명이 아닌 경우</li>
                                <li>타인의 명의를 사용하여 신청한 경우</li>
                                <li>이용 신청 시 필요 내용을 허위로 기재하여 신청한 경우</li>
                                <li>기타 회사가 정한 이용신청 요건이 미비한 경우</li>
                              </ol>
                              <p>⑤회사는 이용계약을 위하여 회원이 제공한 개인정보를 회사 서비스 운영을 위한 목적 이외의 용도로 사용하거나 이용자의 동의 없이 제3자에게 제공하지 않습니다. 단, 다음 각 호의 경우에는 예외로 합니다.</p>
                              <ol>
                                <li>법령에 근거하여 회원정보의 이용과 제3자에 대한 정보제공을 허용하고 있는 경우</li>
                                <li>기타 회사의 약관 및 정책에 따라 이용자의 동의를 구한 경우</li>
                              </ol>
                              <p>⑥회사는 회원의 개인정보를 보호하기 위해 ‘개인정보처리방침’을 수립하고 개인정보 보호 책임자를 지정하여 이를 게시하고 운영합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제8조 (이용계약 중지 및 해지)</strong>
                              <p>①회원이 이용계약을 해지하고자 할 때는 회원 본인이 서비스 내 회원탈퇴 기능, 전자우편, 또는 기타의 방법을 통해 회사에 해지 신청을 하여야 합니다. 다만, 회원은 해지 의사를 통지하기 전에 모든 거래 중인 절차를 완료, 철회 또는 취소해야만 합니다. 이 경우 철회 또는 취소로 인한 불이익은 회원 본인이 부담하여야 합니다.</p>
                              <p>②회원이 계약을 해지하는 경우, 회원이 작성한 인적사항 및 거래 내용,&nbsp; 멤버십 등 회원 정보와 관련된 일체의 정보는 삭제됩니다.</p>
                              <p>③전 항에 따라 해지를 한 회원은 본 약관이 정하는 회원 가입절차와 관련 조항에 따라 회원으로 다시 가입할 수 있습니다.</p>
                              <p>④회사는 서비스의 신뢰성 및 안전을 위해서 아래와 같은 행위를 금지하며, 이를 위반 시 서비스 이용을 제한하거나 이용계약을 해지할 수 있습니다.</p>
                              <ol>
                                <li>서비스 운영을 고의로 방해한 경우</li>
                                <li>가입한 이름이 실명이 아닌 경우</li>
                                <li>서비스의 안정적 운영을 방해할 목적으로 다량의 정보를 전송하거나 광고정보를 전송하는 경우</li>
                                <li>정보통신설비의 오작동이나 정보 등의 파괴를 유발하는 컴퓨터 바이러스 프로그램 등을 유포하는 경우</li>
                                <li>타인의 개인정보, ID 및 비밀번호로 부정하게 사용하는 경우</li>
                                <li>회사의 서비스 정보를 이용하여 얻은 정보를 회사의 사전승낙 없이 복제 또는 유통하거나 상업적으로 이용하는 경우</li>
                                <li>같은 사용자가 다른 ID로 이중등록을 한 경우</li>
                                <li>방송통신심의위원회 등 외부기관의 시정요구가 있거나 불법 선거운동과 관련하여 선거관리위원회의 유권해석을 받은 경우</li>
                                <li>본 약관을 포함하여 기타 회사가 정한 이용조건에 위반한 경우</li>
                                <li>회사가 정하지 않은 비정상적인 방법으로 서비스를 이용하거나 시스템에 접근하는 행위</li>
                                <li>기타 관계 법령에 어긋나는 행위라고 객관적으로 판단되는 행위</li>
                              </ol>
                              <p>⑤회사는 이용제한을 하고자 하는 경우에는 그 사유, 일시 및 기간을 정하여 전자우편 또는 전화, 모바일 메시지 기능 등의 방법을 이용하여 해당 회원에게 통지합니다. 다만, 회사가 긴급하게 이용을 중지해야 할 필요가 있다고 인정하는 경우에는 본 항의 과정 없이 서비스 이용을 제한할 수 있습니다.</p>
                              <p>⑥서비스 이용중지를 통지받은 회원은 이용중지에 대하여 이의가 있으면 제29조 (분쟁처리절차)에 의해 이의 신청을 할 수 있으며, 이용 중지 사유가 해소된 것이 확인된 경우에는 이용 중지 조치를 해제합니다.</p>
                              <p>⑦회사가 서비스 이용을 중지 또는 제한시킨 후 같은 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우, 또는 본조 4항의 위반 행위가 있는 경우, 회사는 이용계약을 해지할 수 있습니다.</p>
                              <p>⑧회사가 이용계약을 해지하는 경우에는 회원등록을 말소합니다. 회사는 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.</p>
                              <p>⑨제8조 4항에 따라 회사가 이용계약을 해지하는 경우, 회사는 별도의 통지 없이 해당 회원과 관련된 거래를 취소할 수 있습니다. 이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하여야 하고, 회사는 일체의 책임을 지지 않습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제9조 (회원 정보의 변경)</strong>
                              <p>①회원은 서비스페이지에서 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 정보(성명, 주민등록번호 등)는 수정할 수 없습니다.</p>
                              <p>②회원은 회원가입 신청 시 기재한 사항이 변경되었을 경우 서비스페이지에서 수정하거나 전자우편 등 기타 방법으로 회사에 대하여 그 변경사항을 알려야 합니다.</p>
                              <p>③본조 2항의 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제3장 회사 및 회원의 의무</strong>
                              <p>&nbsp;</p>
                              <strong>제10조 (회사의 의무)</strong>
                              <p>①회사는 관계 법령과 본 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 웨이즈 서비스를 제공하기 위하여 최선을 다하여 노력합니다.</p>
                              <p>②회사는 회원이 안전하게 서비스를 이용할 수 있도록 개인정보보호를 위한 보안시스템을 갖추며, 개인정보보호 정책을 공지하고 이를 준수합니다.</p>
                              <p>③회사는 서비스이용과 관련하여 회원으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. 회원이 제기한 의견이나 불만 사항에 대해서는 전화, 전자우편 등의 방법을 통하여 회원에게 처리 과정 또는 결과를 전달합니다.</p>
                              <p>④회사는 공인된 결제대금예치업자에게 결제 대금을 예치하고, 이행(지급)보증보험을 가입하여 회원의 환전대금을 안전하게 보호합니다.</p>
                              <p>⑤회사는 ‘외국환거래법’에 따른 ‘외국환 환전 영업’ 업무를 수행하며 관계 법령을 준수합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제11조 (회원의 의무)</strong>
                              <p>①회원은 본 약관 및 회사가 서비스 화면에서 알리는 내용을 준수하여야 합니다.</p>
                              <p>②회원은 회사의 서비스를 이용할 경우 실명으로 거래하여야 하며, 회사가 실명확인을 위해 회원에게 실명확인증표 등 필요한 자료를 요구할 경우 이에 따릅니다.</p>
                              <p>③회원은 회사가 서비스를 안전하게 제공할 수 있도록 회사에 협조하여야 하며, 회사가 회원의 약관 위반행위를 발견하여 회원에게 해당 위반행위에 대하여 소명을 요청할 경우 회원은 회사의 요청에 적극적으로 응하여야 합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제12조 (거래기록 보존 및 비밀보장의 의무)</strong>
                              <p>①회사는 외국환거래법 및 관련 법령에 따라 고객과의 환전거래 기록을 5년간 보관해야 합니다.</p>
                              <p>②회사는 ‘회원의 인적사항, 계좌정보, 회사와의 환전거래 내용 및 실적에 관한 자료 등 외국환 환전 업무 수행을 통하여 알게 된 일체의 회원 정보’(이하 ‘회원 정보’)에 대하여 관계법령에서 정한 경우를 제외하고는 회원의 동의 없이 제3자에게 제공하거나 업무 목적 외에 누설하거나 이용하여서는 아니 됩니다.</p>
                              <p>③회사가 관리소홀 등 회사의 귀책사유로 본조 2항을 위반하거나 회원정보의 도난 또는 유출이 발생한 경우 회사가 피해회원에게 배상 책임이 있습니다. 다만, 회사가 고의 또는 과실이 없음을 증명한 경우에는 그 책임을 면할 수 있습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제4장 서비스 이용</strong>
                              <p>&nbsp;</p>
                              <strong>제13조 (서비스의 종류 및 이용)</strong>
                              <p>①회사에서 제공하는 서비스에는 외국환 환전 멤버십 서비스, 예약 환전, 외화 배송 등이 있습니다.</p>
                              <p>②전항의 제공 서비스 중 일부는 회사의 정책에 따라 유료로 제공될 수 있습니다.</p>
                              <p>③서비스 이용은 회원의 이용계약 승낙 직후부터 가능합니다. 다만 유료 서비스의 경우 회사가 요금 납부를 확인한 직후부터 가능하게 할 수 있습니다.</p>
                              <p>④회사가 제공하는 서비스의 종류는 회사의 사정으로 변경될 수 있습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제14조 (서비스 내용의 공지 및 변경)</strong>
                              <p>①회사는 서비스의 종류에 따라 각 서비스의 특성, 절차 및 방법에 대한 사항을 서비스 화면을 통하여 공지하며, 회원은 회사가 공지한 각 서비스에 관한 사항을 이해하고 서비스를 이용해야 합니다.</p>
                              <p>②회사가 신규 서비스의 개시 등의 사유로 서비스 내용이 변경되거나 서비스가 종료되는 경우 회사는 회원의 등록된 전자우편 주소로 이메일을 통하여 서비스 내용의 변경 사항 또는 종료를 통지할 수 있습니다. 단, 제휴 서비스는 제외합니다.</p>
                              <p>③전항의 경우 불특정 다수인을 상대로 통지를 함에서는 서비스 내 공지사항, 웹사이트 팝업 등을 통하여 회원들에게 통지할 수 있습니다. 단, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항은 상당한 기간 게시판을 통해 이를 공지하고 전자우편 또는 기타 수단을 통하여 통지합니다.</p>
                              <p>④회사의 사유로 회원이 신청한 유료 서비스가 종료되는 경우에는 서비스를 이용하는 회원에게는 반드시 전자우편 또는 기타 방법으로 이를 알리며 환불이 필요한 회원에게는 회사의 규정에 따라 환불 처리합니다.</p>
                              <p>⑤회사는 이용 감소로 인한 원활한 서비스 제공의 곤란 및 수익성 악화, 기술 진보에 따른 차세대 서비스로의 전환 필요성, 서비스 제공과 관련한 회사 정책의 변경 등 기타 타당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 서비스를 변경 또는 중단할 수 있습니다.</p>
                              <p>⑥회사는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요로 수정, 중단, 변경할 수 있으며, 이에 대하여 관련 법령에 특별한 규정이 없는 한 회원에게 별도의 보상을 하지 않습니다.</p>
                              <p>⑦회사는 이미 제공 중인 서비스 내용, 이용방법, 이용시간에 대하여 변경 또는 서비스 중단이 있는 경우, 적어도 변경 30일 이전에 공지하여야 하며, 회원이 공지 내용을 조회하지 않아 입은 손해에 대해서는 책임지지 않습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제15조 (서비스의 유지 및 중지)</strong>
                              <p>①서비스의 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 정기 점검 등의 필요로 회사가 정한 날이나 시간은 그러하지 않습니다.</p>
                              <p>②회사는 서비스를 일정 범위로 나누어 각 범위별로 이용 가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공지합니다.</p>
                              <p>③회사는 다음 각호에 해당하면 서비스 제공을 중지할 수 있습니다.</p>
                              <ol>
                                <li>서비스용 설비의 보수 등 공사로 인한 부득이한 경우</li>
                                <li>전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우</li>
                                <li>회사가 직접 제공하는 서비스가 아닌 제휴업체 등의 제3자를 이용하여 제공하는 서비스의 경우 제휴업체 등 제3자가 서비스를 중지했을 경우</li>
                                <li>회원이 유료 서비스의 비용을 지불하지 않을 경우</li>
                                <li>기타 불가항력적 사유가 있는 경우</li>
                              </ol>
                              <p>④회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다.</p>
                              <p>⑤회사는 새로운 서비스로 교체 또는 기타 회사가 서비스를 제공할 수 없는 사유 발생 시 제공되는 서비스를 중단할 수 있습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제16조 (정보의 제공 및 광고의 게재)</strong>
                              <p>①회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 서비스 내 공지사항, 서비스 화면, 전자우편 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 관련법에 따른 거래 관련 정보 및 고객 문의 등에 대한 답변 등을 제외하고는 언제든지 위 정보제공에 대해서 수신 거절을 할 수 있습니다.</p>
                              <p>②회사는 서비스의 운영과 관련하여 회사가 제공하는 서비스 화면 및 홈페이지 등에 광고를 게재할 수 있습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제17조 (회원에 대한 통지)</strong>
                              <p>①회사가 회원에 대해 통지를 하는 경우 본 약관에 별도 규정이 없는 한 전자우편, 공지사항 등으로 할 수 있습니다.</p>
                              <p>②회사는 회원 전체에 대한 통지의 경우 7일 이상 회사의 웹사이트 또는 서비스 내 공지사항 화면에 게시함으로써 전항의 통지에 갈음할 수 있습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제5장 멤버십 서비스 이용료 및 수수료</strong>
                              <p>&nbsp;</p>
                              <strong>제18조 (멤버십 서비스 이용료의 내용)</strong>
                              <p>①회사는 회원에게 멤버십 서비스를 이용하는 대가로 이용료를 부과합니다.</p>
                              <p>②회사는 멤버십 회원에게 환전수수료를 부과하지 않고 공시된 매매기준율을 적용합니다.</p>
                              <p>③회사는 멤버십 서비스의 형태와 내용을 추가하거나 변경 등을 통해 다양화할 수 있습니다.</p>
                              <p>④회사는 이벤트 또는 프로모션을 통해 선정된 회원에게 멤버십 서비스를 무료로 제공할 수 있습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제19조 (멤버십 서비스 이용료의 환불)</strong>
                              <p>①회원의 귀책사유 없이 회원이 회사에 멤버십 서비스를 신청하여 지정계좌에 입금하고, 서비스 장애 등 회사의 사정으로 서비스를 정상적으로 이용할 수 없는 경우 환불을 요청할 수 있습니다.</p>
                              <p>②회사는 회원으로부터 제1항의 환불신청을 받은 경우 특별한 사정이 있는 경우를 제외하고는 애초 회원이 지정계좌에 입금한 금액 및 제27조 (손해배상)에 따른 해당금액 등을 고객에게 지급하여야 합니다.</p>
                              <p>③다음 각호에 해당하면 멤버십 서비스 이용료에 대한 환불이 불가능합니다.</p>
                              <ol>
                                <li>멤버십 서비스 유효 기간의 경과</li>
                                <li>멤버십 서비스를 이용하여 1회 이상 환전 서비스를 이용한 경우(멤버십 회원이 예약환전을 통해 환전 신청 및 입금 후 취소한 경우에도 1회 환전한 것으로 판단합니다.)</li>
                                <li>결제를 통하지 않고 이벤트 또는 프로모션을 통해 지급받은 멤버십</li>
                              </ol>
                              <p>&nbsp;</p>
                              <strong>제20조 (수수료의 내용)</strong>
                              <p>①회사는 회원에게 서비스를 이용하는 대가로 수수료를 부과합니다. 수수료는 환전수수료, 외화배송료 등 세부 항목별로 구분하여 그 내용을 회원에게 제공해야 합니다.</p>
                              <p>②수수료의 세부 항목 및 내용은 다음과 같습니다.</p>
                              <ol>
                                <li>환전수수료: 환율 스프레드(통화별 차이가 있으며, 서비스 내 실시간 환율 및 스프레드 고지)</li>
                                <li>외화배송료: 건당부과(수령방법 및 장소에 따라 서비스 내 별도 고지)</li>
                              </ol>
                              <p>③수수료는 환전 영업점 방문, 예약환전 서비스 모두 같이 적용됩니다.</p>
                              <p>④수수료를 회사가 부과하면서 회사가 취득하게 되는 이자 수입 및 환차손익은 회사의 서비스 운영 시 발생하는 부가적인 수익 또는 손실로서의 성질을 가지며, 회원은 이에 대한 반환을 청구할 수 없습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제6장 예약환전 지급 및 수령</strong>
                              <p>&nbsp;</p>
                              <strong>제21조 (적용환율)</strong>
                              <p>①회사는 회원에게 적용할 환율에 관한 사항을 제공하여야 합니다.</p>
                              <p>②회사는 회원의 구분(멤버십 여부)에 따라 적용환율을 다르게 제공할 수 있습니다.</p>
                              <p>③회사는 회원에게 적용할 환율에 관한 사항을 서비스 페이지 등에 게시하고 이를 최신 내용으로 관리하여야 합니다.</p>
                              <p>④회사는 회원에게 적용할 환율을 KEB하나은행 고시 환율을 기반으로 제공합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제22조 (지급, 수령금액)</strong>
                              <p>①회원은 환전신청 시 환전금액 및 수령방법(장소), 수령일시를 지정해 회사에 고지(통보)하여야 합니다. 다만 수령장소와 수령일시는 회사가 허용하는 장소와 시간인 경우에 한정합니다.</p>
                              <p>②회사는 회원으로부터 예약환전 서비스 이용신청을 받은 경우 회원이 지급 또는 수령하는 자금의 원화 표시 및 외화 표시 금액에 관한 사항을 회원에게 제공하여야 합니다.</p>
                              <p>③회사는 예약환전 서비스를 신청한 회원이 지정계좌에 입금할 경우 수수료를 차감한 금액을 외화로 환전하여 고객이 요청한 시간과 장소에서 고객에게 전달해야 합니다.</p>
                              <p>④회사는 회원이 요청한 수령방법이 불가한 경우 또는 수령시점에 전달이 불가한 경우에는 해당 사유를 즉시 통보하여야 합니다.</p>
                              <p>⑤회원은 외국환거래법에 따라 외국통화의 매입만 가능하며, 수령일 기준 1일 최대 USD 2,000 이하로 환전을 요청할 수 있습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제23조 (소요기간)</strong>
                              <p>①회사는 회원으로부터 예약환전 서비스 이용신청을 받은 경우 회원에게 지급 또는 수령에 드는 예상 기간에 관한 사항을 제공하여야 합니다.</p>
                              <p>②회사는 회원이 예약환전 서비스를 이용할 경우 지급 또는 수령에 드는 예상 기간에 관한 사항을 서비스페이지 등에 게시하고 이를 최신 내용으로 관리하여야 합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제24조 (예약의 변경, 취소)</strong>
                              <p>①회원은 예약환전 서비스를 신청하여 외화배송이 완료되지 않은 건에 대하여 유선 또는 고객센터 등을 통하여 회사에 변경 또는 취소를 신청할 수 있습니다. 단, 회원에게 외화배송이 완료된 건에 대해서는 변경 또는 취소를 신청할 수 없습니다.</p>
                              <p>②회사는 회원으로부터 예약환전 건에 대한 변경 또는 취소를 요청받은 경우 해당 요청사항을 처리하고 그 결과를 회원에게 통보하여야 합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제 25 조 (예약환전 과정과 결과의 통보)</strong>
                              <p>회사는 예약환전을 신청한 회원에게 예약 접수, 입금 확인 및 지급 또는 수령이 완료된 경우 즉시 그 결과를 회원이 사전에 등록한 연락처 등을 통하여 회원에게 통지하여야 합니다.</p>
                              <p>&nbsp;</p>
                              <p><strong>제26조 (환불)</strong></p>
                              <p>①회원의 귀책사유 없이 회원이 회사에 본 서비스를 신청하여 지정계좌에 입금하고, 고객이 지정한 수령예정일에 외화를 정상적으로 받지 못한 경우 환불을 요청할 수 있습니다.</p>
                              <p>②회사는 회원으로부터 제1항의 환불신청을 받은 경우 특별한 사정이 있는 경우를 제외하고는 애초 회원이 지정계좌에 입금한 금액 및 제27조 (손해배상)에 따른 해당금액 등을 고객에게 지급하여야 합니다.</p>
                              <p>③회원의 귀책사유로 환불을 진행할 경우 환전업무와 관련되어 발생된 비용에 대해 차감 후 지급할 수 있으며, 이에 대한 사항은 회사 홈페이지 또는 앱 등을 통해 고객의 환전 신청 및 환급 요청시 고객에게 제공하여야 합니다.</p>
                              <p>④회원의 귀책사유로 환불을 진행할 경우 다음 각호에 따라 해당 금액 등을 3영업일 이내 고객에게 지급하여야 합니다.</p>
                              <ol>
                                <li>멤버십 회원 환전</li>
                              </ol>
                              <p>1) 예약수령일 전날 23시 59분 이전 취소 시: 입금액 전액 환불(멤버십 한도는 차감)<br>
                                2) 예약수령일 당일 00시 이후 취소 시: 제20조 2항의 외화배송료를 제외한 금액 환불(멤버십 한도는 차감)</p>
                              <ol start="2">
                                <li>일반 회원 환전</li>
                              </ol>
                              <p>1) 예약수령일 전날 23시 59분 이전 취소 요청 시: 제20조 2항의 환전수수료를 제외한 금액 환불<br>
                                2) 예약수령일 당일 00시 이후 취소 요청 시: 제20조 2항의 환전수수료와 외화배송료를 제외한 금액 환불</p>
                              <p>⑤전항의 내용에 명시한 회원의 귀책사유는 다음 각호와 같습니다.</p>
                              <ol>
                                <li>회원의 변심에 의한 경우</li>
                                <li>기타 회원의 과실에 의한 경우(등록한 수령예정일시에 미수령 등)</li>
                              </ol>
                              <p>&nbsp;</p>
                              <strong>제7장 손해배상 및 면책조항</strong>
                              <p>&nbsp;</p>
                              <strong>제27조 (손해배상)</strong>
                              <p>①회사의 책임 있는 사유로 인하여 회원에게 손해가 발생한 경우 회사의 손해배상 범위는 민법에서 정하고 있는 통상손해를 포함하고, 특별한 사정으로 인한 손해는 회사가 그 사정을 알았거나 알 수 있었을 때만 배상 책임이 있습니다.</p>
                              <p>②회사는 본조 1항의 내용을 제외하거나 본 약관에서 규정한 내용을 벗어난 거래를 통해서 발생한 손해에 대해서 책임을 지지 않습니다.</p>
                              <p>&nbsp;</p>
                              <strong>제28조 (면책조항)</strong>
                              <p>①회사는 다음 각호에 해당하는 경우에는 책임을 지지 않습니다.</p>
                              <ol>
                                <li>전시, 사변, 천재지변 또는 이에 준하는 국가 비상사태 등 어쩔 수 없는 경우</li>
                                <li>이용자의 고의 또는 과실로 인하여 손해가 발생한 경우</li>
                              </ol>
                              <p>&nbsp;</p>
                              <strong>제29조 (분쟁처리절차)</strong>
                              <p>①회사는 ‘외국환 환전 업무’와 관련하여 회원이 제기하는 정당한 의견이나 불만을 반영하고 회원이 외국환 환전 업무와 관련하여 입은 손해를 배상하기 위한 절차’(이하 ‘분쟁처리절차’) 및 분쟁처리 책임자를 정하고 있습니다.</p>
                              <ol>
                                <li>분쟁처리 책임자: 조은용</li>
                                <li>전화: 1670-2160</li>
                                <li>전자우편: help@weys.exchange</li>
                              </ol>
                              <p>②회원은 서면(전자 문서 포함) 또는 전자적 장치를 이용하여 회사에 분쟁처리를 신청할 수 있으며, 회사는 15일 이내에 이에 대해 조사 또는 처리결과를 회원에게 서면(전자 문서 포함) 또는 전자적 장치를 이용하여 안내합니다.</p>
                              <p>③회사는 다음 각호에 해당하는 회원의 이의 제기 내용에 대해 아래와 같이 처리합니다.</p>
                              <ol>
                                <li>단순불만 사항: 회원이 신청한 내용에 대해서 분쟁처리책임자의 책임으로 조사 또는 처리하며, 그 결과를 15일 이내에 회원에게 서면(전자문서 포함) 또는 전자적 장치를 이용하여 안내합니다.</li>
                                <li>손해배상요구사항 : 회원이 신청한 내용에 대해서 분쟁처리책임자의 책임으로 조사 또는 처리하며, 그 결과를 15일 이내에 회원에게 서면(전자문서 포함) 또는 전자적 장치를 이용하여 안내합니다.</li>
                              </ol>
                              <p>④회원은 회사의 분쟁 처리결과에 대해 이의가 있으면 금융감독원의 금융분쟁조정위원회나 한국 소비자원의 소비자분쟁조정위원회에서 서비스의 이용과 관련한 분쟁조정을 신청할 수 있습니다.</p>
                              <p>⑤금융감독원의 분쟁조정결과 이용과정에서 회사에 책임이 있는 사실이 밝혀질 경우 회사는 이용대금의 전액을 부담합니다. 다만 회원 또는 회사가 금융감독원 또는 한국소비자원의 분쟁조정결과에 불복하여 관할법원에 민사소송을 제기하는 경우에는 그러하지 아니합니다.</p>
                              <p>&nbsp;</p>
                              <strong>제30조 (관할법원 및 준거법)</strong>
                              <p>①이 거래와 관련한 분쟁이 발생할 경우 양 당사자의 합의에 따라 해결함을 원칙으로 합니다. 다만 당사자 간에 합의할 수 없거나 합의가 이루어지지 않아 이 거래와 관련하여 소송이 제기되는 경우 관할법원은 민사소송법에서 정하는 바에 따르기로 합니다.</p>
                              <p>②서비스 이용과 관련하여 회사와 회원 간의 소송에는 대한민국 법을 적용합니다.</p>
                              <p>&nbsp;</p>
                              <p><strong>부칙</strong></p>
                              <p>본 약관은 2018년 5월 1일부터 적용됩니다.</p>
                            </div>
        </div>
      </div>
    </section>
    
    <!-- Mobile App end -->
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
