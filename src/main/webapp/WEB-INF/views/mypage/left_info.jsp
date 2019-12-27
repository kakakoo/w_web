<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
	
        <!-- Left Panel
        ============================================= -->
        <aside class="col-lg-3 not-mobile"> 
          
          <!-- Profile Details
          =============================== -->
          <div class="bg-light shadow-sm rounded text-center p-3 mb-4">
            <div class="profile-thumb mt-3 mb-4"> <img class="" src="${pageContext.request.contextPath}/imgView/${info.barcodeUrl }" alt="${info.barcode }" style="width: 100%;">
            </div>
            <p class="text-5 font-weight-500 mb-2" style="letter-spacing: 4px;">${info.barcode }</p>
          </div>
          <!-- Profile Details End -->
          
          <!-- Available Balance
          =============================== -->
          <div class="bg-light shadow-sm rounded text-center p-3 mb-4">
            <div class="text-15 text-light my-3"><i class="fas fa-hand-holding-usd"></i></div>
            <h3 class="text-9 font-weight-400">${info.rsvCnt }건</h3>
            <p class="mb-3 text-muted opacity-8">예약중</p>
            <hr class="mx-n3">
            <div class="d-flex"><a href="${pageContext.request.contextPath}/" class="btn-link mr-auto">예약하기</a> <a href="${pageContext.request.contextPath}/account/transactions" class="btn-link ml-auto">환전내역</a></div>
          </div>
          <!-- Available Balance End --> 
          
          <!-- Need Help?
          =============================== -->
          <div class="bg-light shadow-sm rounded text-center p-3 mb-4">
            <div class="text-15 text-light my-3"><i class="fas fa-comment-dots"></i></div>
            <h3 class="text-3 font-weight-400 my-4">도움이 필요하세요?</h3>
            <p class="text-muted opacity-8 mb-4">도움이 필요하시다면 24시간 언제나 채팅상담을 통해 도와드리겠습니다.</p>
            <a href="javascript:openChannel();" class="btn btn-primary btn-block" style="font-size: 14px;">채팅상담</a> </div>
          <!-- Need Help? End --> 
          
        </aside>
        <!-- Left Panel End --> 
        
</body>
<script type="text/javascript">
function openChannel(){
	ChannelIO('show');
}
</script>
</html>
