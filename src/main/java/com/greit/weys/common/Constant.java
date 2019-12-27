package com.greit.weys.common;

public class Constant {

	/**
	 * 인포뱅크 메시지 URL TEST & REAL 
	 */
	public static final String INFO_BANK_URL_TEST = "http://rest.supersms.co:6200/sms/xml";
	public static final String INFO_BANK_URL_REAL = "https://rest.supersms.co/sms/xml";

	/**
	 * 아임포트 API
	 */
	public static final String IAMPORT_GET_TOKEN_URL = "https://api.iamport.kr/users/getToken";	// 아임포트 토큰 URL 
	public static final String IAMPORT_PAYMENTS_URL = "https://api.iamport.kr/payments/";			// 아임포트 거래내역 조회 URL 
	public static final String IAMPORT_CANCEL_URL = "https://api.iamport.kr/payments/cancel";		// 아임포트 거래 취소 URL 
	public static final String IAMPORT_VBANK_URL = "https://api.iamport.kr/vbanks";		// 아임포트 가상계좌 개설 URL  
	
	/**
	 * 카카오 알림톡 URL 
	 */
	public static final String KAKAO_TALK_MSG = "https://msggw.supersms.co:9443/v1/send/kko";
	public static final String KAKAO_MAP = "https://dapi.kakao.com/v2/local/search/address.json";
	/**
	 * 예약 상태 
	 */
	public static final String RSV_START = "S";				// 1. 예약 완료
	public static final String RSV_INCOME = "I";			// 2. 입금 완료
	public static final String RSV_READY = "R";				// 3. 준비 완료
	public static final String RSV_FINISH = "F";			// 4. 거래 완료
	
	
	public static final String RSV_MISS = "M";				// 2-1. 입금 시간 초과 
	public static final String RSV_CANCEL_BEFORE = "CB";	// 2-2. 입금 전 취소 
	public static final String RSV_CANCEL = "C";			// 4-1. 예약 취소
	public static final String RSV_CANCEL_READY = "CR";		// 4-2. 환불 대기
	public static final String RSV_CANCEL_FINISH = "CF";	// 4-3. 환불 완료

	public static final String PUSH_MSG_ADM_CANCEL = "님의 예약이 취소되었습니다.";

	/**
	 * 회원가입 최초 쿠폰 코드
	 */
	public static final String JOIN_COUPON_CODE = "WEYSJOINPARTYTONIGHY";
}
