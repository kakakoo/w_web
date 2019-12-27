<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <div class="bg-primary">
    <div class="container d-flex justify-content-center">
      <ul class="nav secondary-nav">
        <li class="nav-item"> <a class="nav-link <c:if test="${subTitle == 'left_account'}">active</c:if>" href="${pageContext.request.contextPath}/account">내정보</a></li>
        <li class="nav-item"> <a class="nav-link <c:if test="${subTitle == 'left_transactions'}">active</c:if>" href="${pageContext.request.contextPath}/account/transactions">환전내역</a></li>
        <li class="nav-item"> <a class="nav-link <c:if test="${subTitle == 'left_coupon'}">active</c:if>" href="${pageContext.request.contextPath}/account/coupon">쿠폰함</a></li>
        <li class="nav-item"> <a class="nav-link <c:if test="${subTitle == 'left_noti'}">active</c:if>" href="${pageContext.request.contextPath}/account/notification">알림설정</a></li>
      </ul>
    </div>
  </div>
</html>