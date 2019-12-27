<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Mobile App
    ============================================= -->
     <section class="section pt-5 pb-0" style="background: #2a333d;">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-lg-12 col-xl-12 mx-auto">
            <div class="row">
              <div class="col-sm-8 col-md-8 my-auto order-0 order-sm-1 text-center text-sm-left">
                <h2 class="text-6 font-weight-400 mb-3 text-white">웨이즈 앱을 설치하세요!</h2>
                <p class="text-3 text-white font-weight-300">웨이즈는 편리한 환전 서비스를 제공합니다.<br>여행의 시작부터 어려움을 느끼시지 않도록 도와드릴게요.</p>
                <div class="pt-2 mb-4 mb-sm-0" style="padding-bottom: 50px;"> <a href="https://weys.page.link/iDVw" target="_blank" class="btn btn-light" style="color:#2a333d; margin-right:20px;"><i class="fab fa-apple"></i> iOS 설치하기</a><a href="https://weys.page.link/iDVw" target="_blank" class="btn btn-light" style="color:#2a333d;"><i class="fab fa-google-play"></i> 안드로이드 설치하기</a> </div> </div>
				<div class="col-sm-4 col-md-4 my-auto order-0 order-sm-1 text-center text-sm-left">
                <h2 class="text-6 font-weight-400 mb-3 text-white">고객센터</h2>
                <p class="text-3 text-white font-weight-300"><b>1670-2160</b>(평일 오전 9시 ~ 오후 6시)<br>카카오톡 <b>@weys</b> (24시간)</p>
				<div class="pt-2 mb-4 mb-sm-0" style="padding-bottom: 50px;"> <a href="javascript:openChannel();" class="btn btn-light" style="color:#2a333d;">실시간 채팅상담</a> </div> 
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Mobile App end --> 
<!--FOOTER-->
<footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-lg d-lg-flex align-items-center">
          <ul class="nav justify-content-center justify-content-lg-start text-3">
            <li class="nav-item"> <a class="nav-link" href="#">서비스 소개</a></li>
			<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/info/pickup">수령 장소 안내</a></li>
            <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/info/fee">수수료 안내</a></li>
          </ul>
        </div>
      </div>
      <div class="footer-copyright pt-3 pt-lg-2 mt-2" style="margin-top:30px !important; padding-top: 30px !important;">
        <div class="row">
          <div class="col-lg" style="margin-bottom:20px;">
            <p class="text-center text-lg-left mb-2 mb-lg-0"><b>주식회사 그레잇</b> | 대표 : 조은용<br>사업자 등록번호 : 135-88-00906 | 환전영업자 : 010A01729<br>통신판매업 등록번호 : 2018-서울강남-00453 | 개인정보처리책임자 : 권용근<br>서울 강남구 학동로 11길 6 에땅빌딩 5층 (06045)</p>
          </div>
          <div class="col-lg d-lg-flex justify-content-lg-end">
            <ul class="nav justify-content-center">
              <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/info/terms">이용약관</a></li>
              <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/info/privacy">개인정보취급방침</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
  
  
<script type="text/javascript">
function openChannel(){
	ChannelIO('show');
}
</script>
</html>