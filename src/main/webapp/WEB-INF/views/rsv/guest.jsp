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
	<meta name="naver-site-verification" content="40f1e1caf022182cc0f5722e1bc427a4c51383b3"/>
	<meta name="google-site-verification" content="ITqYTGv1IF0YVKwFJ91BOYiu5p_ArIdLkNT3_-6e4jg" />
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
	
	 <!-- Content
  ============================================= -->
  <div id="content">
  <!-- Page Header
	============================================= -->
	<section class="page-header page-header-text-light bg-dark-3 py-5">
	  <div class="container">
		<div class="row text-center">
		  <div class="col-12">
			<h4 class="text-white">비회원 예약조회</h4>
		  </div>
		</div>
	  </div>
	</section>
	<!-- Page Header End --> 
  <div class="login-signup-page mx-auto my-5">
      <div class="bg-light shadow-md rounded p-4 mx-2">
          <div class="form-group">
                  <label for="youSend">휴대전화번호</label>
					<div class="input-group">
					  <div class="input-group-prepend"> <span class="input-group-text p-0">
						<select id="usrNation" data-style="custom-select bg-transparent border-0" data-container="body" data-live-search="true" class="selectpicker form-control bg-transparent" required="">
						  <optgroup label="자주찾는 국가">
						  <option data-icon="currency-flag currency-flag-krw mr-1" data-subtext="대한민국" selected="selected" value="82">+82</option>
						  <option data-icon="currency-flag currency-flag-usd mr-1" data-subtext="미국" value="1">+1</option>
						  <option data-icon="currency-flag currency-flag-jpy mr-1" data-subtext="일본" value="81">+81</option>
						  </optgroup>
						  <option value="" data-divider="true">divider</option>
						  <optgroup label="모든 국가">
						  <option data-icon="currency-flag currency-flag-usd mr-1" data-subtext="미국" value="1">+1</option>
                          <option data-icon="currency-flag currency-flag-cad mr-1" data-subtext="캐나다" value="1">+1</option>
                          <option data-icon="currency-flag currency-flag-gbp mr-1" data-subtext="영국" value="44">+44</option>
                          <option data-icon="currency-flag currency-flag-myr mr-1" data-subtext="말레이시아" value="60">+60</option>
                          <option data-icon="currency-flag currency-flag-aud mr-1" data-subtext="오스트레일리아" value="61">+61</option>
                          <option data-icon="currency-flag currency-flag-php mr-1" data-subtext="필리핀" value="63">+63</option>
                          <option data-icon="currency-flag currency-flag-nzd mr-1" data-subtext="뉴질랜드" value="64">+64</option>
                          <option data-icon="currency-flag currency-flag-thb mr-1" data-subtext="태국" value="66">+66</option>
                          <option data-icon="currency-flag currency-flag-huf mr-1" data-subtext="러시아" value="77">+77</option>
                          <option data-icon="currency-flag currency-flag-jpy mr-1" data-subtext="일본" value="81">+81</option>
                          <option data-icon="currency-flag currency-flag-krw mr-1" data-subtext="대한민국" value="82">+82</option>
                          <option data-icon="currency-flag currency-flag-hkd mr-1" data-subtext="홍콩" value="852">+852</option>
                          <option data-icon="currency-flag currency-flag-cny mr-1" data-subtext="중국" value="86">+86</option>
                          <option data-icon="currency-flag currency-flag-twd mr-1" data-subtext="대만" value="886">+886</option>
                          <option data-icon="currency-flag currency-flag-inr mr-1" data-subtext="인도" value="91">+91</option>
                          <option data-icon="currency-flag currency-flag-aed mr-1" data-subtext="아랍에미리트" value="971">+971</option>
						  </optgroup>
						</select>
						</span> </div>
						<input type="tel" class="form-control" id="usrTel" value="${rsvVO.usrTel }" required placeholder="휴대전화번호를 입력하세요">
					</div>
                </div>
          <div class="form-group">
          <label for="loginPassword">예약번호</label>
          <input type="text" class="form-control" id="rsvNo" onkeypress="if( event.keyCode==13 ){checkRsv();}" value="${rsvVO.rsvNo }" required placeholder="예약번호를 입력하세요">
        </div>
          
          <button class="btn btn-primary btn-block my-4" onclick="checkRsv()" type="button">조회</button>
        
        
        
        
            <!-- 입금대기 Modal
            =========================================== -->
            <a href="#RSV_S_M" id="s_triger" data-toggle="modal" style="display:none;"></a>
            <div id="RSV_S_M" class="modal fade" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered transaction-details" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="row no-gutters">
                      <div class="col-sm-5 d-flex justify-content-center bg-primary rounded-left py-4">
                        <div class="my-auto text-center">
                          <div class="text-15 text-white my-3"><i class="fas fa-money-check-alt"></i></div>
                          <h3 class="text-4 text-white font-weight-400 my-3"></h3>
                          <div id="s_unit_amnt" class="text-6 font-weight-700 text-white my-4">USD 2,000</div>
                          <p id="s_dt" class="text-white">15 March 2019</p>
                        </div>
                      </div>
                      <div class="col-sm-7">
                        <h5 class="text-5 font-weight-400 m-3"><span id="s_no">X9U2A0</span> <span style="color: darkgray; font-weight:200;">(입금대기)</span>
                          <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                        </h5>
                        <hr>
                        <div class="px-3">
                          <ul class="list-unstyled">
                            <li class="mb-2">구매하실 외화 <span id="s_unit_amnt_1" class="float-right text-3 font-weight-bold">USD 2,000</span></li>
                            <li class="mb-2">매매기준율 <span id="s_basicRate" class="float-right text-2">1,194.10원</span></li>
							<li class="mb-2">수수료<span id="s_bonus" style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">100% 우대</span> <span class="float-right text-2"><span id="s_bonusVal" style="color:darkgray; text-decoration:line-through;">1,044원</span>  <span id="s_commisVal">1,044원</span></span></li>
							<li class="mb-2">보관료 <span id="s_cms" class="float-right text-2">3,000원</span></li>
                          </ul>
                          <hr class="mb-2">
                          <p class="d-flex align-items-center font-weight-500 mb-4">입금하실 금액 <span id="s_getAmnt" class="text-3 ml-auto font-weight-bold">123,450원</span></p>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">수령장소:</li>
                            <li class="text-muted" id="s_storeNm">인천공항 T1 3층 한진택배 수하물보관소</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">수령일시:</li>
                            <li class="text-muted" id="s_rsvDt">2019년 9월 27일 금요일 08시 30분</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">수령인:</li>
                            <li class="text-muted" id="s_rsvNm">홍길동(01012341234)</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">입금계좌:</li>
                            <li class="text-muted"><span id="s_bankNm">KEB하나은행</span> <span id="s_bankCd" class="ml-auto font-weight-bold btn-link">338-910039-67304</span> <span id="s_bankHolder">주식회사 그레잇</span></li>
							<li class="text-muted"><p class="text-1 mb-0 text-danger" id="s_bankDue" style="padding-right:15px;">2019.10.01 11:54:58까지 미입금시 예약이 자동 취소됩니다.</p></li>
                          </ul>
						  <hr class="mb-2">
						  <ul class="list-unstyled" style="margin-top: 20px;">
                            <li class="text-muted"><a class="btn btn-primary" onclick="cancelRsvBefore()" href="#" style="font-size: 14px;">예약취소</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 입금대기 Modal -->
			<!-- 입금완료 Modal
            =========================================== -->
            <a href="#RSV_R_M" id="r_triger" data-toggle="modal" style="display:none;"></a>
            <div id="RSV_R_M" class="modal fade" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered transaction-details" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="row no-gutters">
                      <div class="col-sm-5 d-flex justify-content-center bg-primary rounded-left py-4">
                        <div class="my-auto text-center">
						  <h3 class="text-4 text-white font-weight-400 my-3">교환증</h3>
                          <div class="text-15 text-white my-3"><img id="r_rsvQrImg" class="" src="" alt="1234 5678" style="width: 120px; border: 10px solid #fff;">
							  <p class="text-5 font-weight-500 mb-2 text-black-50" id="r_rsvQr" style="letter-spacing: 4px; margin-top:10px;">1234 5678</p>
						  </div>
						  <hr class="mb-2">
                          <h3 class="text-4 text-white font-weight-400 my-3"></h3>
                          <div id="r_unit_amnt" class="text-6 font-weight-700 text-white my-4">USD 2,000</div>
                          <p id="r_dt" class="text-white">15 March 2019</p>
                        </div>
                      </div>
                      <div class="col-sm-7">
                        <h5 class="text-5 font-weight-400 m-3"><span id="r_no">X9U2A0</span> <span style="color: darkgray; font-weight:200;">(입금완료)</span>
                          <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                        </h5>
                        <hr>
                        <div class="px-3">
                          <ul class="list-unstyled">
                            <li class="mb-2">구매하신 외화 <span id="r_unit_amnt_1" class="float-right text-3 font-weight-bold">USD 2,000</span></li>
                            <li class="mb-2">매매기준율 <span id="r_basicRate" class="float-right text-2">1,194.10원</span></li>
							<li class="mb-2">수수료<span id="r_bonus" style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">100% 우대</span> <span class="float-right text-2"><span id="r_bonusVal" style="color:darkgray; text-decoration:line-through;">1,044원</span>  <span id="r_commisVal">1,044원</span></span></li>
							<li class="mb-2">보관료 <span id="r_cms" class="float-right text-2">3,000원</span></li>
                          </ul>
                          <hr class="mb-2">
                          <p class="d-flex align-items-center font-weight-500 mb-4">입금하신 금액 <span id="r_getAmnt" class="text-3 ml-auto font-weight-bold">123,450원</span></p>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">수령장소:</li>
                            <li id="r_storeNm" class="text-muted">인천공항 T1 3층 한진택배 수하물보관소</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">수령일시:</li>
                            <li id="r_rsvDt" class="text-muted">2019년 9월 27일 금요일 08시 30분</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">수령인:</li>
                            <li id="r_rsvNm" class="text-muted">홍길동(01012341234)</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">결제완료일시:</li>
                            <li id="r_icmDttm" class="text-muted">2019년 9월 26일 목요일 08시 11분</li>
                          </ul>
						  <hr class="mb-2">
						  <ul class="list-unstyled" style="margin-top: 20px;">
                            <li class="text-muted"><a class="btn btn-primary" href="#RSV_C_M" data-toggle="modal" style="font-size: 14px;">환불요청</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 입금완료 Modal -->
			<!-- 수령완료 Modal
            =========================================== -->
            <a href="#RSV_F_M" id="f_triger" data-toggle="modal" style="display:none;"></a>
            <div id="RSV_F_M" class="modal fade" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered transaction-details" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="row no-gutters">
                      <div class="col-sm-5 d-flex justify-content-center bg-primary rounded-left py-4">
                        <div class="my-auto text-center">
                          <div class="text-15 text-white my-3"><i class="fas fa-money-check-alt"></i></div>
                          <h3 class="text-4 text-white font-weight-400 my-3"></h3>
                          <div id="f_unit_amnt" class="text-6 font-weight-700 text-white my-4">USD 2,000</div>
                          <p id="f_dt" class="text-white">15 March 2019</p>
                        </div>
                      </div>
                      <div class="col-sm-7">
                        <h5 class="text-5 font-weight-400 m-3"><span id="f_no">X9U2A0</span> <span style="color: darkgray; font-weight:200;">(수령완료)</span>
                          <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                        </h5>
                        <hr>
                        <div class="px-3">
                          <ul class="list-unstyled">
                            <li class="mb-2">구매하신 외화 <span id="f_unit_amnt_1" class="float-right text-3 font-weight-bold">USD 2,000</span></li>
                            <li class="mb-2">매매기준율 <span id="f_basicRate" class="float-right text-2">1,194.10원</span></li>
							<li class="mb-2">수수료<span id="f_bonus" style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">100% 우대</span> <span class="float-right text-2"><span id="f_bonusVal" style="color:darkgray; text-decoration:line-through;">1,044원</span>  <span id="f_commisVal">1,044원</span></span></li>
							<li class="mb-2">보관료 <span id="f_cms" class="float-right text-2">3,000원</span></li>
                          </ul>
                          <hr class="mb-2">
                          <p class="d-flex align-items-center font-weight-500 mb-4">입금하신 금액 <span id="f_getAmnt" class="text-3 ml-auto font-weight-bold">123,450원</span></p>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">수령장소:</li>
                            <li id="f_storeNm" class="text-muted">인천공항 T1 3층 한진택배 수하물보관소</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">수령완료일시:</li>
                            <li id="f_modDttm" class="text-muted">2019년 9월 27일 금요일 08시 39분</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">수령인:</li>
                            <li id="f_rsvNm" class="text-muted">홍길동(01012341234)</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">결제완료일시:</li>
                            <li id="f_icmDttm" class="text-muted">2019년 9월 26일 목요일 08시 11분</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 수령완료  Modal -->
			<!-- 환불대기 Modal
            =========================================== -->
            <a href="#RSV_CR_M" id="cr_triger" data-toggle="modal" style="display:none;"></a>
            <div id="RSV_CR_M" class="modal fade" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered transaction-details" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="row no-gutters">
                      <div class="col-sm-5 d-flex justify-content-center bg-primary rounded-left py-4">
                        <div class="my-auto text-center">
                          <div class="text-15 text-white my-3"><i class="fas fa-money-check-alt"></i></div>
                          <h3 class="text-4 text-white font-weight-400 my-3"></h3>
                          <div id="cr_unit_amnt" class="text-6 font-weight-700 text-white my-4">USD 2,000</div>
                          <p id="cr_dt" class="text-white">15 March 2019</p>
                        </div>
                      </div>
                      <div class="col-sm-7">
                        <h5 class="text-5 font-weight-400 m-3"><span id="cr_no">X9U2A0</span> <span style="color: darkgray; font-weight:200;">(환불대기)</span>
                          <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                        </h5>
                        <hr>
                        <div class="px-3">
                          <ul class="list-unstyled">
                            <li class="mb-2">구매하신 외화 <span id="cr_unit_amnt_1" class="float-right text-3 font-weight-bold">USD 2,000</span></li>
                            <li class="mb-2">매매기준율 <span id="cr_basicRate" class="float-right text-2">1,194.10원</span></li>
							<li class="mb-2">수수료<span id="cr_bonus" style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">100% 우대</span> <span class="float-right text-2"><span id="cr_bonusVal" style="color:darkgray; text-decoration:line-through;">1,044원</span>  <span id="cr_commisVal">1,044원</span></span></li>
							<li class="mb-2">보관료 <span id="cr_cms" class="float-right text-2">3,000원</span></li>
                          </ul>
                          <hr class="mb-2">
                          <p class="d-flex align-items-center font-weight-500 mb-4">입금하신 금액 <span id="cr_getAmnt" class="text-3 ml-auto font-weight-bold">123,450원</span></p>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">환불요청일시:</li>
                            <li id="cr_cancelDttm" class="text-muted">2019년 9월 26일 목요일 08시 11분</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">환불계좌:</li>
                            <li class="text-muted"><span id="cr_bankNm">KEB하나은행</span> <span id="cr_bankCd" class="ml-auto font-weight-bold btn-link">338-910039-67304</span> <span id="cr_bankHolder">주식회사 그레잇</span></li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">취소수수료:</li>
                            <li id="cr_cancelCms" class="text-muted">0원</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">환불예정금액:</li>
                            <li id="cr_cancelAmnt" class="text-muted">244,830원</li>
							<li class="text-muted"><p class="text-1 mb-0 text-danger" style="padding-right:15px;">환불은 영업일 기준 최대 2일 소요됩니다.</p></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 환불대기 Modal -->
			<!-- 환불완료 Modal
            =========================================== -->
            <a href="#RSV_CF_M" id="cf_triger" data-toggle="modal" style="display:none;"></a>
            <div id="RSV_CF_M" class="modal fade" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered transaction-details" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="row no-gutters">
                      <div class="col-sm-5 d-flex justify-content-center bg-primary rounded-left py-4">
                        <div class="my-auto text-center">
                          <div class="text-15 text-white my-3"><i class="fas fa-money-check-alt"></i></div>
                          <h3 class="text-4 text-white font-weight-400 my-3"></h3>
                          <div id="cf_unit_amnt" class="text-6 font-weight-700 text-white my-4">USD 2,000</div>
                          <p id="cf_dt" class="text-white">15 March 2019</p>
                        </div>
                      </div>
                      <div class="col-sm-7">
                        <h5 class="text-5 font-weight-400 m-3"><span id="cf_no">VVVVVV</span> <span style="color: darkgray; font-weight:200;">(환불완료)</span>
                          <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                        </h5>
                        <hr>
                        <div class="px-3">
                          <ul class="list-unstyled">
                            <li class="mb-2">구매하신 외화 <span id="cf_unit_amnt_1" class="float-right text-3 font-weight-bold">USD 2,000</span></li>
                            <li class="mb-2">매매기준율 <span id="cf_basicRate" class="float-right text-2">1,194.10원</span></li>
							<li class="mb-2">수수료<span id="cf_bonus" style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">100% 우대</span> <span class="float-right text-2"><span id="cf_bonusVal" style="color:darkgray; text-decoration:line-through;">1,044원</span>  <span id="cf_commisVal">1,044원</span></span></li>
							<li class="mb-2">보관료 <span id="cf_cms" class="float-right text-2">3,000원</span></li>
                          </ul>
                          <hr class="mb-2">
                          <p class="d-flex align-items-center font-weight-500 mb-4">입금하신 금액 <span id="cf_getAmnt" class="text-3 ml-auto font-weight-bold">123,450원</span></p>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">환불완료일시:</li>
                            <li id="cf_modDttm" class="text-muted">2019년 9월 26일 목요일 08시 11분</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">환불계좌:</li>
                            <li class="text-muted"><span id="cf_bankNm">KEB하나은행</span> <span id="cf_bankCd" class="ml-auto font-weight-bold btn-link">338-910039-67304</span> <span id="cf_bankHolder">주식회사 그레잇</span></li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">취소수수료:</li>
                            <li id="cf_cancelCms" class="text-muted">0원</li>
                          </ul>
                          <ul class="list-unstyled">
                            <li class="font-weight-500">환불완료금액:</li>
                            <li id="cf_cancelAmnt" class="text-muted">244,830원</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 환불완료 Modal -->
			<!-- 환불요청 Modal
            =========================================== -->
            <div id="RSV_C_M" class="modal fade" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered transaction-details" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="row no-gutters">
                      <div class="col-sm-5 d-flex justify-content-center bg-primary rounded-left py-4">
                        <div class="my-auto text-center">
                          <div class="text-15 text-white my-3"><i class="fas fa-money-check-alt"></i></div>
                          <h3 class="text-4 text-white font-weight-400 my-3"></h3>
                          <div id="c_unit_amnt" class="text-6 font-weight-700 text-white my-4">USD 2,000</div>
                          <p id="c_dt" class="text-white">15 March 2019</p>
                        </div>
                      </div>
                      <div class="col-sm-7">
                        <h5 class="text-5 font-weight-400 m-3"><span id="c_no">X9U2A0</span> <span style="color: darkgray; font-weight:200;">(환불요청)</span>
                          <button type="button" class="close font-weight-400" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                        </h5>
                        <hr>
                        <div class="px-3">
                          <ul class="list-unstyled">
                            <li class="mb-2">구매하신 외화 <span id="c_unit_amnt_1" class="float-right text-3 font-weight-bold">USD 2,000</span></li>
                            <li class="mb-2">매매기준율 <span id="c_basicRate" class="float-right text-2">1,194.10원</span></li>
							<li class="mb-2">수수료<span id="c_bonus" style="padding:5px 10px; margin-left: 10px; border-radius: 20px; background: #0065ff; color: #fff; width: 60px; height: 28px; font-size: 11px;">100% 우대</span> <span class="float-right text-2"><span id="c_bonusVal" style="color:darkgray; text-decoration:line-through;">1,044원</span>  <span id="c_commisVal">1,044원</span></span></li>
							<li class="mb-2">보관료 <span id="c_cms" class="float-right text-2">3,000원</span></li>
                          </ul>
                          <hr class="mb-2">
                          <p class="d-flex align-items-center font-weight-500 mb-1">입금하신 금액 <span id="c_getAmnt" class="text-3 ml-auto font-weight-bold">123,450원</span></p>
						  <p class="d-flex align-items-center mb-1">취소수수료 <span id="c_cancelCms" class="ml-auto">3,000원</span></p>
						  <p class="d-flex align-items-center font-weight-500 mb-4">환불받을 금액 <span id="c_cancelAmnt" class="text-3 ml-auto font-weight-bold">123,450원</span></p>
                          <ul class="list-unstyled">
							  <div class="form-group">
							    <label for="newPassword">환불받을 은행</label>
							    <select class="custom-select" id="rbankNm" name="rbankNm">
								  <c:forEach var="banks" items="${bankList }">
						    		<option value="${banks.RBANK_CD }">${banks.RBANK_NM }</option>
						    	  </c:forEach>
								</select>
						  	  </div>
							  <div class="form-group">
							    <label for="rbankCd">환불받을 계좌번호</label>
							    <input type="text" class="form-control" data-bv-field="rbankCd" id="rbankCd" required placeholder="환불받을 계좌번호를 입력하세요">
						  	  </div>
							  <div class="form-group">
							    <label for="newPassword">예금주</label>
							    <input type="text" class="form-control" data-bv-field="newpassword" id="rbankCdHolder" value="홍길동" readonly>
								<p class="text-1 mb-0 text-danger" style="margin-top: 20px; padding-right:15px; line-height: 15px;">환불은 영업일 기준 최대 2일 소요됩니다. 환불 계좌는 예약자 본인 명의의 계좌만 가능합니다. 계좌번호가 다른 경우 환불 처리가 지연될 수 있습니다. 환불시 이미 사용된 쿠폰은 반환되지 않습니다.</p>
						  	  </div>
						 	  <div class="form-group">
						 	  <button class="btn btn-primary btn-block mt-4" onclick="cancelRsv()" type="button">환불요청</button>
							  </div>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 환불요청 Modal -->
            
            
            
    </div>
    </div>
    </div>
  <!-- Content end -->
  <form name="formBody" action="${pageContext.request.contextPath}/guest" method="post">
	<input type="hidden" name="usrTel" id="f_usrTel">
	<input type="hidden" name="rsvNo" id="f_rsvNo">
</form>
  <input type="hidden" id="cancelCms_val">
  
		<jsp:include page="../common/footer.jsp"></jsp:include>
	</div>
	
	<div class="wrap-loading display-none">
		<div><img width="42px" src="${pageContext.request.contextPath}/resources/images/loading.gif" /></div>
	</div>
</body>
<jsp:include page="../common/common_js.jsp"></jsp:include> 
<%-- <script src="${pageContext.request.contextPath}/resources/work/login.js"></script> --%>
<script type="text/javascript">

$(function() {
	var tel = $('#usrTel').val();
	var rsvNo = $('#rsvNo').val();
	
	if(tel != '' && rsvNo != ''){
		checkRsv();
	}
});


function cancelRsv(){
	if(confirm('정말로 취소하시겠습니까?')){
		var cancelCms = $('#cancelCms_val').val();
		var rBankCd = $('#rbankCd').val();
		var rBankNm = $("#rbankNm option:selected").val();

		var tel = $('#usrTel').val();
		var rsvNo = $('#rsvNo').val();

		var data = {};
		data["rsvNo"] = rsvNo;
		data["usrTel"] = tel;
		data["cancelCms"] = cancelCms;
		data["rBankNm"] = rBankNm;
		data["rBankCd"] = rBankCd;
		
		console.log(data);
		
		$.ajax({
			contentType : "application/json",
			dataType : "json",
			type : "post",
			url : "${pageContext.request.contextPath}/rsv/cancel",
			data : JSON.stringify(data),
			success : function(result) {
				var res = result.res;
				if (res == 'fail') {
					alert('다시 시도해주세요.');
				} else {
					alert('환불이 접수되었습니다.');

					$('#f_rsvNo').val(rsvNo);
					$('#f_usrTel').val(tel);

					var FORM_BODY = $('form[name=formBody]');
					FORM_BODY.attr('action', '${pageContext.request.contextPath}/guest');
					FORM_BODY.submit();
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
}


function cancelRsvBefore(){
	if(confirm('정말로 취소하시겠습니까?')){
		
		var tel = $('#usrTel').val();
		var rsvNo = $('#rsvNo').val();

		var data = {};
		data["usrTel"] = tel;
		data["rsvNo"] = rsvNo;
		
		$.ajax({
			contentType : "application/json",
			dataType : "json",
			type : "post",
			url : "${pageContext.request.contextPath}/rsv/beforeCancel",
			data : JSON.stringify(data),
			success : function(result) {
				var res = result.res;
				if (res == 'fail') {
					alert('다시 시도해주세요.');
				} else {
					alert('예약이 취소되었습니다.');
					location.href='${pageContext.request.contextPath}/';
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
	
}

function checkRsv() {
	var data = {};
	var tel = $('#usrTel').val();
	var rsvNo = $('#rsvNo').val();

	data["usrTel"] = tel;
	data["rsvNo"] = rsvNo;

	$.ajax({
		contentType : "application/json",
		dataType : "json",
		type : "post",
		url : "${pageContext.request.contextPath}/rsv/guest",
		data : JSON.stringify(data),
		success : function(result) {
			var res = result.res;
			if (res == 'fail') {
				var msg = result.msg;
				alert(msg);
			} else {
				var rsvSt = result.RSV_ST;
				
				var unit = result.UNIT;
				var rsvAmnt = result.RSV_AMNT;
				var getAmnt = result.GET_AMNT;
				
				var storeNm = result.STORE_NM;
				var storeAddr = result.STORE_ADDR;
				
				var rsvNo = result.RSV_NO;
				var rsvDt = result.RSV_DT;
				var sRsvDt = result.S_RSV_DT;
				var rsvTm = result.RSV_TM;
				var rsvWk = result.RSV_WK;

				var basicRate = result.BASIC_RATE_WEYS.toFixed(2);
				var cms = result.CMS;
				var rsvQr = result.RSV_QR;
				var rsvQrImg = result.RSV_QR_IMG;
				var weysBonus = result.WEYS_BONUS;
				var weysBonusVal = result.WEYS_BONUS_VAL;
				var weysCommisVal = result.WEYS_COMMIS_VAL;

				var rsvTel = result.RSV_TEL;
				var rsvNm = result.RSV_NM;
				var rsvNmId = result.RSV_NM_ID;
				var cancelDttm = result.CANCEL_DTTM;
				var cancelCms = result.CANCEL_CMS;
				var cancelAmnt = result.CANCEL_AMNT;
				var vbankNm = result.VBANK_NM;
				var vbankCd = result.VBANK_CD;
				var vbankHolder = result.VBANK_HOLDER;
				var vbankDue = result.VBANK_DUE;
				var icmDttm = result.ICM_DTTM;
				var modDttm = result.MOD_DTTM;
				var regDttm = result.REG_DTTM;

				var retBankNm = result.RET_BANK_NM;
				var retBankCd = result.RET_BANK_CD;
				
				if(rsvSt == 'S'){
					$('#s_unit_amnt').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#s_dt').html(regDttm);
					
					$('#s_no').html(rsvNo);
					$('#s_unit_amnt_1').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#s_basicRate').html(basicRate.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					
					if(weysBonus > 0){
						$('#s_bonusVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
						weysCommisVal = weysCommisVal - weysBonusVal;
						$('#s_bonus').css('background', '#0065ff');
						$('#s_bonus').html(weysBonus.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '% 우대');
					} else {
						$('#s_bonus').css('background', '#fff');
						$('#s_bonus').html('');
						$('#s_bonusVal').html('');
					}

					$('#s_commisVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#s_cms').html(cms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

					$('#s_getAmnt').html(getAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#s_storeNm').html(storeNm);
					$('#s_rsvDt').html(rsvDt + ' ' + rsvWk + ' ' + rsvTm);

					$('#s_rsvNm').html(rsvNm + '(' + rsvTel + ')');
					$('#s_bankNm').html(vbankNm);
					$('#s_bankCd').html(vbankCd);
					$('#s_bankHolder').html(vbankHolder);
					$('#s_bankDue').html(vbankDue + '까지 미입금시 예약이 자동 취소됩니다.');
					
		            $('#s_triger').trigger('click');
				} else if(rsvSt == 'R'){
					
					$('#r_rsvQrImg').attr('src', '${pageContext.request.contextPath}/imgView/' + rsvQrImg);
					$('#r_rsvQr').html(rsvQr);
					
					$('#r_unit_amnt').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#r_dt').html(regDttm);
					
					$('#r_no').html(rsvNo);
					$('#r_unit_amnt_1').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#r_basicRate').html(basicRate.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');


					if(weysBonus > 0){
						$('#r_bonusVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
						weysCommisVal = weysCommisVal - weysBonusVal;
						$('#r_bonus').css('background', '#0065ff');
						$('#r_bonus').html(weysBonus.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '% 우대');
					} else {
						$('#r_bonus').css('background', '#fff');
						$('#r_bonus').html('');
						$('#r_bonusVal').html('');
					}
					$('#r_commisVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#r_cms').html(cms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

					$('#r_getAmnt').html(getAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#r_storeNm').html(storeNm);
					$('#r_rsvDt').html(rsvDt + ' ' + rsvWk + ' ' + rsvTm);

					$('#r_rsvNm').html(rsvNm + '(' + rsvTel + ')');
					$('#r_icmDttm').html(icmDttm);
					
		            $('#r_triger').trigger('click');

		            // ==================
		            // ==================
		            // ==================
		            
		            $('#c_unit_amnt').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#c_dt').html(regDttm);
					
					$('#c_no').html(rsvNo);
					$('#c_unit_amnt_1').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#c_basicRate').html(basicRate.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

					if(weysBonus > 0){
						$('#c_bonusVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
						weysCommisVal = weysCommisVal - weysBonusVal;
						$('#c_bonus').css('background', '#0065ff');
						$('#c_bonus').html(weysBonus.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '% 우대');
					} else {
						$('#c_bonus').css('background', '#fff');
						$('#c_bonus').html('');
						$('#c_bonusVal').html('');
					}
					$('#c_commisVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#c_cms').html(cms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

					$('#c_getAmnt').html(getAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#c_cancelCms').html(cancelCms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#c_cancelAmnt').html(cancelAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#rbankCdHolder').val(rsvNm);
					$('#cancelCms_val').val(cancelCms);
				} else if(rsvSt == 'F'){

					$('#f_unit_amnt').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#f_dt').html(regDttm);
					
					$('#f_no').html(rsvNo);
					$('#f_unit_amnt_1').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#f_basicRate').html(basicRate.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');


					if(weysBonus > 0){
						$('#f_bonusVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
						weysCommisVal = weysCommisVal - weysBonusVal;
						$('#f_bonus').css('background', '#0065ff');
						$('#f_bonus').html(weysBonus.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '% 우대');
					} else {
						$('#f_bonus').css('background', '#fff');
						$('#f_bonus').html('');
						$('#f_bonusVal').html('');
					}
					$('#f_commisVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#f_cms').html(cms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

					$('#f_getAmnt').html(getAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#f_storeNm').html(storeNm);
					$('#f_modDttm').html(modDttm);

					$('#f_rsvNm').html(rsvNm + '(' + rsvTel + ')');
					$('#f_icmDttm').html(icmDttm);
					
		            $('#f_triger').trigger('click');
				} else if(rsvSt == 'CR'){
					$('#cr_unit_amnt').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#cr_dt').html(regDttm);
					
					$('#cr_no').html(rsvNo);
					$('#cr_unit_amnt_1').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#cr_basicRate').html(basicRate.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					
					if(weysBonus > 0){
						$('#cr_bonusVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
						weysCommisVal = weysCommisVal - weysBonusVal;
						$('#cr_bonus').css('background', '#0065ff');
						$('#cr_bonus').html(weysBonus.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '% 우대');
					} else {
						$('#cr_bonus').css('background', '#fff');
						$('#cr_bonus').html('');
						$('#cr_bonusVal').html('');
					}

					$('#cr_commisVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#cr_cms').html(cms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

					$('#cr_getAmnt').html(getAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#cr_cancelDttm').html(cancelDttm);

					$('#cr_bankNm').html(retBankNm);
					$('#cr_bankCd').html(retBankCd);
					$('#cr_bankHolder').html(rsvNm);

					$('#cr_cancelCms').html(cancelCms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#cr_cancelAmnt').html(cancelAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

		            $('#cr_triger').trigger('click');
				} else if(rsvSt == 'CF'){
					$('#cf_unit_amnt').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#cf_dt').html(regDttm);
					
					$('#cf_no').html(rsvNo);
					$('#cf_unit_amnt_1').html(unit + ' ' + rsvAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
					$('#cf_basicRate').html(basicRate.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					
					if(weysBonus > 0){
						$('#cf_bonusVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
						weysCommisVal = weysCommisVal - weysBonusVal;
						$('#cf_bonus').css('background', '#0065ff');
						$('#cf_bonus').html(weysBonus.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '% 우대');
					} else {
						$('#cf_bonus').css('background', '#fff');
						$('#cf_bonus').html('');
						$('#cf_bonusVal').html('');
					}

					$('#cf_commisVal').html(weysCommisVal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#cf_cms').html(cms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

					$('#cf_getAmnt').html(getAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#cf_modDttm').html(modDttm);

					$('#cf_bankNm').html(retBankNm);
					$('#cf_bankCd').html(retBankCd);
					$('#cf_bankHolder').html(rsvNm);

					$('#cf_cancelCms').html(cancelCms.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');
					$('#cf_cancelAmnt').html(cancelAmnt.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '원');

					
					$('#cf_triger').trigger('click');
				}
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
<jsp:include page="../common/naver_js.jsp"></jsp:include>
</html>
