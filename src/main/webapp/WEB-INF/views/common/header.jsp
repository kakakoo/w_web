<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <header id="header">
    <div class="container">
      <div class="header-row">
        <div class="header-column justify-content-start"> 
          
		  <!-- Logo
          ============================= -->
          <div class="logo"> <a class="d-flex" href="${pageContext.request.contextPath}/" title="웨이즈"><img src="${pageContext.request.contextPath}/resources/images/logo.png" class="headerLogo" alt="웨이즈" /></a> </div>
          <!-- Logo end --> 
          
          
          <!-- Primary Navigation
          ============================== -->
          <nav class="primary-menu navbar navbar-expand-lg">
            <div id="header-nav" class="collapse navbar-collapse">
              <ul class="navbar-nav mr-auto">
                <li class="active"><a href="${pageContext.request.contextPath}/">예약하기</a></li>
                <li><a href="${pageContext.request.contextPath}/event">이벤트</a></li>
              </ul>
            </div>
          </nav>
          <!-- Primary Navigation end -->
        </div>
        <div class="header-column justify-content-end"> 
          <!-- Login & Signup Link
          ============================== -->
          <nav class="login-signup navbar navbar-expand">
            <ul class="navbar-nav">
            	<c:if test="${empty userVO }">
            		<li><a href="${pageContext.request.contextPath}/login">로그인</a> </li>
<%--               		<li class="align-items-center h-auto ml-sm-3"><a class="btn btn-primary" href="${pageContext.request.contextPath}/signup">회원가입</a></li> --%>
            	</c:if>
            	<c:if test="${not empty userVO }">
            		<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a> </li>
              		<li class="align-items-center h-auto ml-sm-3"><a class="btn btn-primary" href="${pageContext.request.contextPath}/account">내정보</a></li>
            	</c:if>
            </ul>
          </nav>
          <!-- Login & Signup Link end -->
		  <!-- Collapse Button
          ============================== -->
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#header-nav"> <span></span> <span></span> <span></span> </button>
          <!-- Collapse Button end --> 
        </div>
      </div>
    </div>
  </header>

<script>
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
  
</script>
</html>