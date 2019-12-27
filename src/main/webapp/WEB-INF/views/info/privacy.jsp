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
			<h4 class="text-white">개인정보취급방침</h4>
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
                              <p>주식회사 그레잇(이하 ‘회사’)은 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법, 통신비밀보호법, 전기통신사업법 등 정보통신 서비스 제공자가 준수하여야 할 관련 법령상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다. 회사는 개인정보처리방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 개인정보처리방침을 개정하는 경우 서비스 공지사항(또는 개별공지)을 통하여 공지할 것입니다. 본 방침은 2018년 3월 1일부터 시행됩니다.</p>
                              <p>&nbsp;</p>
                              <p><strong>제1장 개인정보 수집ㆍ이용에 관한 동의</strong></p>
                              <p>&nbsp;</p>
                              <p><strong>제1조 (개인정보 수집ㆍ이용에 관한 동의)</strong></p>
                              <ol>
                                <li>수집하는 개인정보의 항목 및 수집방법<br>
                                  1)수집하는 개인정보의 항목<br>
                                  ①회사는 제공하는 서비스에 따라 다음과 같은 개인정보를 필수항목으로 수집하고 있습니다.<br>
                                  – 공통: 휴대전화번호, 전자우편주소, 비밀번호, 닉네임<br>
                                  – 멤버십: 성명, 휴대전화번호<br>
                                  – 예약환전: 성명, 주민등록번호, 휴대전화번호, 전자우편주소<br>
                                  ②회사는 다음과 같은 회원의 개인정보를 선택항목으로 수집할 수 있습니다.<br>
                                  – 프로필 사진<br>
                                  2) 서비스 이용 과정이나 사업 처리 과정에서 다음과 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>
                                  – IP주소, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록, 기기 정보, 채팅 기록, 앱 설치정보, 네트워크정보 등<br>
                                  3) 서비스 이용과정에서 다음과 같은 정보들이 수집될 수 있습니다.<br>
                                  – 신용카드 결제 시: 카드사명, 카드번호 등<br>
                                  – 휴대전화 결제 시: 휴대전화번호, 통신사, 결제승인번호 등<br>
                                  – 환불 요청 시: 은행명, 계좌번호, 예금주명 등</li>
                                <li>개인정보 수집방법</li>
                              </ol>
                              <p>회사는 다음과 같은 방법으로 개인정보를 수집합니다.</p>
                              <p>– 홈페이지(회원가입, 경품 응모, 제휴), 모바일, 경품 행사 응모, 배송 요청</p>
                              <p>– 제휴사로부터의 제공</p>
                              <p>– 생성 정보 수집 툴을 통한 수집</p>
                              <p>&nbsp;</p>
                              <p><strong>제2조 (개인정보의 수집 및 이용목적)</strong></p>
                              <p>회사는 회원의 동의가 있거나 법령의 규정에 의한 경우를 제외하고는 본 조에서 고지한 범위를 넘어 이용자의 개인정보를 활용하지 않습니다. 수집한 개인정보 활용의 목적은 아래와 같습니다.</p>
                              <ol>
                                <li>회원 관리: 회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 가입 및 가입횟수 제한, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록 보존, 연령확인, 불만처리 등 민원처리, 고지사항 등 최신 정보 전달</li>
                                <li>서비스 운영: 서비스 제공에 관한 계약 이행 및 멤버십 서비스 제공에 따른 이용료 정산, 콘텐츠 제공, 물품배송 또는 청구서 등 발송, 금융거래 실명 인증 및 외국환 환전 서비스 제공</li>
                                <li>마케팅 및 광고: 신규 서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 전달, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계</li>
                                <li>관세청 및 국세청 신고를 위한 수집 및 이용</li>
                              </ol>
                              <p>&nbsp;</p>
                              <p><strong>제3조 (개인정보의 보유 및 이용기간)</strong></p>
                              <ol>
                                <li>회사는 회원이 회원자격을 유지하고 있는 동안 수집된 회원의 개인정보를 보유ㆍ이용할 수 있습니다.</li>
                                <li>회원이 탈퇴하거나 자격을 상실할 경우, 회사는 회원의 별도 요청이 없더라도 수집된 회원정보를 삭제 및 파기합니다. 단, 회원의 탈퇴 또는 자격상실에도 불구하고 다음의 정보는 아래의 이유로 명시 기간 동안 보존됩니다.<br>
                                  1) 회사 내부 방침에 의한 정보 보유<br>
                                  – 회원 간의 분쟁 및 문제 해결을 위한 회원정보 기록 : 1개월<br>
                                  – 이용 제한 회원 및 부정이용자의 재가입 제한을 위한 회원정보 기록: 제한기간에 따라 1년 또는 영구(별도저장)<br>
                                  2) 관계법령에 의한 정보 보유<br>
                                  – 표시/광고에 관한 기록: 6개월 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
                                  – 계약 또는 청약철회 등에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
                                  – 대금결제 및 재화 등의 공급에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
                                  – 외국환 환전 거래에 관한 기록: 5년 (외국환거래법 등에서의 환전장부 보관에 관한 법률)<br>
                                  – 소비자의 불만 또는 분쟁 처리에 관한 기록: 3년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
                                  – 로그인 기록: 3개월 (통신비밀보호법)</li>
                              </ol>
                              <p>&nbsp;</p>
                              <p><strong>제4조 (동의의 거부권 및 거부 시의 불이익 고지)</strong></p>
                              <p>회원은 개인정보 수집ㆍ이용에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 및 이행 등을 위해 필요한 최소한의 개인정보 수집ㆍ이용에 관한 동의를 거부하는 경우에는 서비스 이용이 불가하고, 마케팅 활동 및 홍보를 위한 개인정보 수집ㆍ이용 및/또는 선택적 수집ㆍ이용에 관한 동의를 거부하는 경우에는 이벤트, 혜택에 대한 정보를 제공받지 못하거나 사은품ㆍ판촉물 제공, 제휴서비스 이용, 할인 혜택 적용 등의 불이익이 있을 수 있습니다.</p>
                              <p>&nbsp;</p>
                              <p><strong>제5조 (개인정보의 파기절차 및 방법)</strong></p>
                              <p>회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 회사의 개인정보 파기절차 및 방법은 다음과 같습니다.</p>
                              <ol>
                                <li>파기절차<br>
                                  1) 회원이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 데이터베이스로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다.<br>
                                  2) 별도의 데이터베이스로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유 목적 이외의 다른 목적으로 이용되지 않습니다.</li>
                              </ol>
                              <ol>
                                <li>파기방법<br>
                                  1) 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br>
                                  2) 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</li>
                              </ol>
                              <p>&nbsp;</p>
                              <p><strong>제6조 (회원 및 법정대리인의 권리와 그 행사방법)</strong></p>
                              <ol>
                                <li>회원은 언제든지 등록되어 있는 자신의 개인정보를 열람하거나 수정할 수 있으며, 회사의 개인정보의 처리에 동의하지 않는 경우 동의를 거부하거나 가입해지(회원탈퇴)를 요청할 수 있습니다.</li>
                                <li>회원의 개인정보 조회 및 수정을 위해서는 “개인정보변경”(또는 “회원정보수정” 등)을, 가입해지(동의철회)를 위해서는 “회원탈퇴”를, 각 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 혹은 개인정보관리책임자에게 서면 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.</li>
                                <li>회원이 개인정보의 오류에 대한 정정을 요청하신 경우에는, 회사는 당해 정정을 완료하기 전까지 당해 개인정보를 이용하거나 제3자에게 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.</li>
                                <li>회사는 회원의 요청에 의해 해지 또는 삭제된 개인정보는 제3조에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</li>
                                <li>서비스에 가입할 수 있는 자는 만 19세 이상이며, 개인정보의 수집∙이용에 법정 대리인의 동의가 필요한 만 14세 미만 아동의 개인정보는 원칙적으로 수집하지 않습니다.</li>
                              </ol>
                              <p>&nbsp;</p>
                              <p><strong>제7조 (개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항)</strong></p>
                              <p>회사는 회원의 정보를 수시로 저장하고 찾아내는 ‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 회사의 웹사이트를 운영하는데 이용되는 서버가 회원의 브라우저에 보내는 아주 작은 텍스트 파일로서 회원의 컴퓨터 하드디스크에 저장됩니다. 쿠키의 사용 목적 및 쿠키 설정 거부 방법은 다음과 같습니다.</p>
                              <ol>
                                <li>쿠키 등 사용 목적<br>
                                  회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 회원의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스를 제공하기 위해 사용합니다.</li>
                                <li>쿠키 설정 거부 방법<br>
                                  1) 회원은 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 회원은 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.<br>
                                  2) 쿠키 설치 허용 여부를 설정하는 방법(인터넷 익스플로러의 경우)은 다음과 같습니다.<br>
                                  – 웹 브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보<br>
                                  3) 단, 회원이 쿠키 설치를 거부하였을 경우 기술 지원 및 서비스 제공에 어려움이 있을 수 있으며, 이 경우 회사는 책임을 지지 않습니다.</li>
                              </ol>
                              <p>&nbsp;</p>
                              <p><strong>제2장 개인정보 제공에 관한 동의</strong></p>
                              <p>&nbsp;</p>
                              <p><strong>제8조 (개인정보의 제3자 제공 및 공유)</strong></p>
                              <ol>
                                <li>회사는 회원의 개인정보를 제2조에서 고지한 범위 내에서 처리하며, 고객의 사전 동의없이는 본래의 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다. 다만, 다음의 각호의 경우에는 고객 또는 제3자의 이익을 부당하게 침해할 우려가 있을 때를 제외하고는 개인정보를 목적 외의 용도로 이용하거나 이를 제3자에게 제공할 수 있습니다.<br>
                                  1) 회원이 사전에 제3자 제공에 동의한 경우<br>
                                  2) 다른 법률에 특별한 규정이 있는 경우<br>
                                  3) 고객 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는 경우로서 명백히 고객 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우<br>
                                  4) 통계작성 및 학술연구 등의 목적을 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 개인정보를 제공하는 경우</li>
                                <li>회사는 회원에게 보다 나은 서비스 제공을 위하여 회원의 개인정보를 제휴사에게 제공하거나 또는 제휴사와 공유할 수 있습니다. 개인정보를 제3자에게 제공하거나 공유할 경우에는 사전에 동의절차를 거치게 되며, 개인정보를 제공받는 자, 개인정보를 제공받는 자의 개인정보 이용목적, 제공하는 개인정보의 항목, 개인정보를 제공받는 자의 개인정보 보유 및 이용기간, 정보제공 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익 등을 명시하여 회원님께 동의를 구합니다. 회사가 회원의 개인정보를 제공 또는 공유할 수 있는 회사의 제휴사 및 가맹점 현황은 아래와 같습니다.</li>
                              </ol>
                              <p>&nbsp;</p>
                              <table width="452">
                                <tbody>
                                  <tr>
                                    <td width="113"><strong>제공 받는 자</strong></td>
                                    <td width="113"><strong>개인정보 이용 목적</strong></td>
                                    <td width="113"><strong>개인정보 제공항목</strong></td>
                                    <td width="113"><strong>이용 및 보유기간</strong></td>
                                  </tr>
                                  <tr>
                                    <td width="113">나이스평가정보 주식회사</td>
                                    <td width="113">실명확인서비스 운영</td>
                                    <td width="113">성명, 주민등록번호</td>
                                    <td width="113">(해당 업체에서 이미 보유하고 있는 개인정보로 별도 저장하지 않음)</td>
                                  </tr>
                                  <tr>
                                    <td width="113">세틀뱅크 주식회사</td>
                                    <td width="113">신용카드, 무통장입금, 실시간 계좌이체 결제 대행</td>
                                    <td width="113"></td>
                                    <td rowspan="4" width="113">위탁계약 종료시까지</td>
                                  </tr>
                                  <tr>
                                    <td width="113">인포뱅크 주식회사</td>
                                    <td width="113">휴대전화번호 관련 문자발송시스템 운영</td>
                                    <td width="113">휴대전화번호</td>
                                  </tr>
                                  <tr>
                                    <td width="113">비즈톡 주식회사</td>
                                    <td width="113">카카오톡 알림톡 발송시스템 운영</td>
                                    <td width="113">휴대전화번호</td>
                                  </tr>
                                  <tr>
                                    <td width="113">주식회사 링크허브</td>
                                    <td width="113">현금영수증 발행시스템 운영</td>
                                    <td width="113">사업자등록번호, 주민등록번호, 휴대전화번호 등</td>
                                  </tr>
                                </tbody>
                              </table>
                              <p>&nbsp;</p>
                              <p><strong>제9조 (제공 정보의 제3자 보유 및 이용 기간)</strong></p>
                              <p>개인정보 제공 목적 달성 시까지 또는 본인의 제공 동의 철회 요청 시까지</p>
                              <p>&nbsp;</p>
                              <p><strong>제10조 (동의의 거부권 및 거부 시의 불이익 고지)</strong></p>
                              <p>회원은 위와 같은 본인의 개인정보 제공에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 등을 위해 필요한 최소한의 개인정보 제공에 관한 동의를 거부하는 경우 서비스 이용이 불가능하거나 처리 업무가 지연되는 등의 불이익이 있을 수 있습니다.</p>
                              <p>※ 본 제공 동의 이외에도 회사는 회원이 별도로 동의한 경우, 회원이 동의한 바에 따라 제3자에게 개인정보를 제공할 수 있습니다.</p>
                              <p>&nbsp;</p>
                              <p><strong>제3장 개인정보 보호 대책과 책임자</strong></p>
                              <p>&nbsp;</p>
                              <p><strong>제11조 (개인정보의 기술적ㆍ관리적 보호 대책)</strong></p>
                              <p>회사는 회원의 개인정보를 보호하기 위해 기술적 대책과 관리적 대책을 마련하고 있으며, 이를 적용하고 있습니다.</p>
                              <ol>
                                <li>기술적 대책<br>
                                  회사는 회원의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.<br>
                                  1) 회원의 개인정보는 비밀번호에 의해 보호되며 파일 및 전송데이터를 암호화하거나 파일 잠금기능(Lock)을 사용하여 중요한 데이터는 별도의 보안기능을 통해 보호되고 있습니다.<br>
                                  2) 회사는 백신프로그램을 이용하여 컴퓨터 바이러스에 의한 피해를 방지하기 위한 조치를 취하고 있습니다. 백신프로그램은 주기적으로 업데이트되며 갑작스런 바이러스가 출현할 경우 백신이 나오는 즉시 이를 제공함으로써 개인정보가 침해되는 것을 방지하고 있습니다.<br>
                                  3) 회사는 암호알고리즘을 이용하여 네트워크 상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL 또는 SET)를 채택하고 있습니다.<br>
                                  4) 회사는 해킹 등 외부침입에 대비하여 각 서버마다 침입차단시스템 및 취약점 분석시스템 등을 이용하여 보안에 만전을 기하고 있습니다.</li>
                                <li>관리적 대책<br>
                                  1) 회사는 개인정보의 안전한 보호를 위하여 주요 시스템 및 설비에 대하여 방화벽 구성 및 외부 전문기관의 보안관제 서비스를 이용합니다.<br>
                                  2) 회사는 회원의 개인정보에 대한 접근 및 관리에 필요한 절차 등을 마련하여 소속 직원으로 하여금 이를 숙지하고 준수하도록 하고 있습니다.<br>
                                  3) 회사는 회원의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다. 그 최소한의 인원에 해당하는 자는 다음과 같습니다.<br>
                                  ①회원을 직접 상대로 하여 마케팅 업무를 수행하는 자<br>
                                  ②개인정보관리책임자 및 담당자 등 개인정보관리업무를 수행하는 자<br>
                                  ③기타 업무상 개인정보의 취급이 불가피한 자<br>
                                  4) 회사는 회원의 개인정보를 취급하는 직원을 대상으로 새로운 보안 기술 습득 및 개인정보보호 의무 등에 관해 정기적인 사내 교육 및 외부 위탁교육을 실시하고 있습니다.<br>
                                  5) 개인정보 관련 취급자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확히 하고 있습니다.<br>
                                  6) 전산실 및 자료 보관실 등을 특별 보호구역으로 설정하여 물리적ㆍ논리적으로 접근을 통제하고 있습니다.<br>
                                  7) 회사는 컴퓨터를 이용하여 회원의 개인정보를 처리하는 경우 개인정보에 대한 접근권한을 가진 담당자를 지정하여 아이디 및 패스워드를 부여하고, 해당 비밀번호를 정기적으로 갱신하고 있습니다.<br>
                                  8) 회사는 신규직원 채용 시 정보보호서약서 또는 개인정보보호서약서에 서명하도록 하여 직원에 의한 정보유출을 사전에 방지하고 개인정보처리방침에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하여 지속적으로 시행하고 있습니다.<br>
                                  9) 회사는 직원 퇴직 시 비밀유지서약서에 서명하도록 하여 회원의 개인정보를 취급하였던 자가 직무상 알게 된 개인정보를 훼손/ 침해 또는 누설하지 않도록 하고 있습니다.<br>
                                  10) 회사는 서비스이용계약체결 또는 서비스제공을 위하여 회원의 신용카드번호, 은행결제계좌 등 대금결제에 관한 정보를 수집하거나 회원께 제공하는 경우 당해 회원이 본인임을 확인하기 위하여 필요한 조치를 취하고 있습니다.<br>
                                  11) 회사는 정보통신망법 제29조의2 제2항 및 같은 법 시행령 제16조에 따라, 회사의 서비스를 1년의 기간 동안 이용하지 아니하는 회원의 개인정보를 보호하기 위하여, 해당 회원의 개인정보를 다른 회원들의 개인정보와 분리하여 별도로 저장ㆍ관리하고 있습니다.<br>
                                  12) 회사는 회원 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 회원의 경우 개개인이 본인의 개인정보를 보호하기 위해서 자신의 아이디와 패스워드를 적절하게 관리하고 여기에 대한 책임을 져야 합니다. 또한, 다른 사람이 추측할 수 있는 쉬운 패스워드는 사용을 피하시기를 권장하며, 정기적으로 패스워드를 변경하시는 것이 바람직합니다.<br>
                                  13) 공동으로 사용하는 PC에서 저희 홈페이지를 접속하여 로그인 한 상태에서 다른 사이트로 이동하는 경우, 서비스 이용을 종료하는 경우에는 반드시 로그아웃 처리 후 해당 홈페이지를 종료하시기 바랍니다. 그렇지 않을 경우, 해당 브라우저를 통해 아이디, 패스워드 등 회원의 정보가 타인에게 쉽게 유출될 위험이 있습니다.<br>
                                  14) 그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 회사는 지체 없이 회원께 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.</li>
                              </ol>
                              <p>&nbsp;</p>
                              <p><strong>제12조 (개인정보보호 업무 관련 담당부서 및 개인정보 관리책임자)</strong></p>
                              <p>회사는 회원의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보 관리책임자를 지정하고 있습니다. 회원은 회사의 서비스를 이용하며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고할 수 있습니다. 회사는 회원들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</p>
                              <p>&nbsp;</p>
                              <p>개인정보관리책임자</p>
                              <p>성명: 권용근</p>
                              <p>직책: 이사</p>
                              <p>이메일: privacy@weys.exchange</p>
                              <p>&nbsp;</p>
                              <p>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</p>
                              <p>개인정보침해신고센터 (http://www.1336.or.kr/국번없이 118)</p>
                              <p>정보보호마크인증위원회 (http://www.eprivacy.or.kr/02-580-0533~4)</p>
                              <p>대검찰청 첨단범죄수사과 (http://spo.go.kr/02-3480-2000)</p>
                              <p>경찰청 사이버테러대응센터 (http://www.ctrc.go.kr/02-392-0330)</p>
                              <p>&nbsp;</p>
                              <p><strong>제4장 고지의무</strong></p>
                              <p>개인정보처리방침에 대하여 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 ‘공지사항’을 통해 고지합니다. 다만, 개인정보의 수집 및 활용, 제3자 제공 등과 같이 회원 권리의 중요한 변경이 있을 경우에는 최소 30일 전에 고지합니다.</p>
                            </div>
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
