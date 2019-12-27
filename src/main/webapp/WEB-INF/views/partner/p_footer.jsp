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
             
			<div class="col-sm-12 col-md-12 my-auto order-0 order-sm-1 text-center text-sm-left">
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
			<li class="nav-item"> <a class="nav-link" target="_blank" href="${pageContext.request.contextPath}/info/pickup">수령 장소 안내</a></li>
            <li class="nav-item"> <a class="nav-link" target="_blank" href="${pageContext.request.contextPath}/info/fee">수수료 안내</a></li>
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
              <li class="nav-item"> <a class="nav-link" target="_blank" href="${pageContext.request.contextPath}/info/terms">이용약관</a></li>
              <li class="nav-item"> <a class="nav-link" target="_blank" href="${pageContext.request.contextPath}/info/privacy">개인정보취급방침</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
  
  
<script type="text/javascript">
;window.channelPluginSettings = {
	    "pluginKey": "eda6cbf2-dd30-4ea7-8f09-69a0adcc3c7d"
	  };
	  (function() {
	    var w = window;
	    if (w.ChannelIO) {
	      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
	    }
	    var d = window.document;
	    var ch = function() {
	      ch.c(arguments);
	    };
	    ch.q = [];
	    ch.c = function(args) {
	      ch.q.push(args);
	    };
	    w.ChannelIO = ch;
	    function l() {
	      if (w.ChannelIOInitialized) {
	        return;
	      }
	      w.ChannelIOInitialized = true;
	      var s = document.createElement('script');
	      s.type = 'text/javascript';
	      s.async = true;
	      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
	      s.charset = 'UTF-8';
	      var x = document.getElementsByTagName('script')[0];
	      x.parentNode.insertBefore(s, x);
	    }
	    if (document.readyState === 'complete') {
	      l();
	    } else if (window.attachEvent) {
	      window.attachEvent('onload', l);
	    } else {
	      window.addEventListener('DOMContentLoaded', l, false);
	      window.addEventListener('load', l, false);
	    }
	  })();
	  
function openChannel(){
	ChannelIO('show');
}
</script>
</html>