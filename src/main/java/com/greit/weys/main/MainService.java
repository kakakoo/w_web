package com.greit.weys.main;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.MapUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.greit.weys.common.AriaUtils;
import com.greit.weys.common.Barcode;
import com.greit.weys.common.Constant;
import com.greit.weys.common.SMSUtil;
import com.greit.weys.common.Utils;
import com.greit.weys.config.UserVO;

@Service
public class MainService {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private MainDao mainDao;

	@Value("#{props['ENC.KEY']}")
	private String ENC_KEY;
	@Value("${SERVER.TYPE}")
	private String SERVER_TYPE;
	@Value("#{props['IB.SERVICE.ID']}")
	private String IB_SERVICE_ID;
	@Value("#{props['IB.SERVICE.PWD']}")
	private String IB_SERVICE_PWD;
	@Value("#{props['IB.FROM.TEL']}")
	private String IB_FROM_TEL;
	@Value("#{props['JOIN.MEMBER.PERIOD']}")
	private int JOIN_MEMBER_PERIOD;
	@Value("${UPLOAD.PATH}")
	private String UPLOAD_PATH;
	@Value("${FRD.COUPON.ID}")
	private int FRD_COUPON_ID;
	
	public void insertErrLog(Exception e, HttpServletRequest req, Object reqVO, UserVO userVO) {
		
		Map<String, Object> errMap = new HashMap<>();
		errMap.put("url", "web:" + req.getRequestURI());
		errMap.put("req", reqVO == null ? null : reqVO.toString());
		errMap.put("msg", e.getMessage());
		errMap.put("usrId", userVO == null ? 0 : userVO.getUsrId());
		
		mainDao.insertErrLog(errMap);
	}

	public int updateCheckLogin(LoginVO reqVO, HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String usrTel = reqVO.getUsrTel();
		String nation = reqVO.getUsrNation();
		
		if(nation.equals("82") && !usrTel.startsWith("0") && usrTel.length() == 10){
			usrTel = "0" + usrTel;
			reqVO.setUsrTel(usrTel);
		}
		reqVO.setEncKey(ENC_KEY);

		Map<String, Object> userInfo = mainDao.selectUserInfo(reqVO);
		
		if(userInfo == null){
			/**
			 * 존재하지 않는 사용자
			 */
			return -1;
		}
		String usrPw = reqVO.getUsrPw();
		
		String usrId = MapUtils.getString(userInfo, "USR_ID");
		String ori_pw = MapUtils.getString(userInfo, "USR_PW");
		String pw = AriaUtils.encryptPassword(usrPw, usrId);
		
		if(pw.equals(ori_pw)){
			String usrNm = MapUtils.getString(userInfo, "USR_NM", "");
			
			UserVO userVO = new UserVO();
			userVO.setUsrId(Integer.parseInt(usrId));
			userVO.setUsrNm(usrNm);
			userVO.setUsrTel(reqVO.getUsrTel());
			
			req.getSession().setAttribute("login", userVO);
			
			String chk = reqVO.getChk();
			if (chk.equals("true")) {
				Cookie cookie = new Cookie("LWOEGYISN", usrTel);
				cookie.setMaxAge(60 * 60 * 24 * 30);
				res.addCookie(cookie);
			} else {
				// 체크 없을 경우 쿠키 확인해서 삭제
				Cookie[] cookies = req.getCookies();
				if (cookies != null) {
					for (int i = 0; i < cookies.length; i++) {
						if (cookies[i].getName().equals("LWOEGYISN")) {
							cookies[i].setMaxAge(0);
							res.addCookie(cookies[i]);
						}
					}
				}
			}
		} else {
			/**
			 * 비밀번호 틀림
			 */
			return -10;
		}
		
		
		return 1;
	}

	public Map<String, Object> updateCertifyNum(LoginVO reqVO) throws Exception {
		
		String newSt = reqVO.getChk();
		reqVO.setEncKey(ENC_KEY);
		Map<String, Object> userInfo = mainDao.selectUserInfo(reqVO);
		
		if(newSt.equals("N")){
			if(userInfo == null){
				return null;
			}
		} else {
			if(userInfo != null){
				return null;
			}
		}
		
		/**
		 * 휴대폰 SNS 모듈과 연동 필요
		 * 랜덤 숫자 6자리 고객 폰에게 전송. 
		 */
		int ran = (int) (Math.random() * 1000000);
		String random = "";
		
		if(ran < 10){
			random = "00000" + ran;
		} else if(ran < 100){
			random = "0000" + ran;
		} else if(ran < 1000){
			random = "000" + ran;
		} else if(ran < 10000){
			random = "00" + ran;
		} else if(ran < 100000){
			random = "0" + ran;
		} else{
			random = ran + "";
		}
		
		String msg = "[웨이즈] 인증번호 [ " + random + " ] 입력해주세요.";
		
		String tel = reqVO.getUsrTel();
		String nation = reqVO.getUsrNation();
		
		if(nation.equals("82") && tel.length() == 11 && tel.startsWith("010")){
			tel = tel.substring(1);
		}

		String url = SERVER_TYPE.equals("USER") ? Constant.INFO_BANK_URL_REAL : Constant.INFO_BANK_URL_TEST;
		
		url = url + "?id=" + IB_SERVICE_ID
				+ "&pwd=" + IB_SERVICE_PWD
				+ "&message=" + URLEncoder.encode(msg, "UTF-8")
				+ "&from=" + IB_FROM_TEL
				+ "&to_country=" + nation
				+ "&to=" + tel
				+ "&report_req=1";
		
		String smsResult = SMSUtil.sendSms(url);
		
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("random", random);
		resultMap.put("res", "success");
		
		return resultMap;
	}

	public int updateUserPwd(LoginVO reqVO) throws Exception {
		reqVO.setEncKey(ENC_KEY);
		String usrId = mainDao.selectUsrId(reqVO);
		if(usrId == null){
			return -1;
		}
		String pw = AriaUtils.encryptPassword(reqVO.getUsrPw(), usrId);
		reqVO.setUsrPw(pw);
		reqVO.setUsrId(Integer.parseInt(usrId));
		return mainDao.updateUsrPwd(reqVO);
	}

	public int updateSignUp(LoginVO reqVO) throws Exception {

		reqVO.setEncKey(ENC_KEY);

		String usrTel = reqVO.getUsrTel().replaceAll("-", "").trim();
		String nation = reqVO.getUsrNation();
		
		if(nation.equals("82") && !usrTel.startsWith("0") && usrTel.length() == 10){
			usrTel = "0" + usrTel;
		}
		reqVO.setUsrTel(usrTel);
		
		int res = mainDao.selectTelCnt(reqVO);
		if(res > 0){
			return -1;
		}
		res = mainDao.selectEmailCnt(reqVO);
		if(res > 0){
			return -2;
		}

		String targetFrdCd = reqVO.getFrdCd();
		/**
		 * 친구추천 코드 생성
		 */
		String frdCd = "";
		while(true){
			frdCd = Utils.makeCode(6);
			int frdCnt = mainDao.checkFrdCd(frdCd);
			if(frdCnt == 0){
				break;
			}
		}
		reqVO.setFrdCd(frdCd);
		
		res = mainDao.insertUserInfo(reqVO);
		if (res > 0) {
			String pwd = reqVO.getUsrPw();
			String usrId = reqVO.getUsrId() + "";
			
			String pw = AriaUtils.encryptPassword(pwd, usrId);
			String ak = AriaUtils.encryptPassword(SERVER_TYPE, usrId).replaceAll("/", "");
			ak = ak.replaceAll("\\+", "");

			reqVO.setUsrPw(pw);
			reqVO.setAk(ak);
			
			res = mainDao.updateUserPwAk(reqVO);
			

			/**
			 * 첫 회원가입이라면
			 * 회원 가입시 가입쿠폰 발행
			 */
			int existCnt = mainDao.selectUsrTelCnt(usrId);
			if(existCnt == 0){
				
				String code = Constant.JOIN_COUPON_CODE;
				List<Integer> couponList = mainDao.selectJoinCouponList(code);
				for(int couponId : couponList){
					Map<String, Object> joinMap = new HashMap<>();
					joinMap.put("usrId", usrId);
					joinMap.put("couponId", couponId);
					joinMap.put("dueDt", Utils.getDiffDate(30));
					mainDao.insertJoinCoupon(joinMap);
				}
			}
			
			/**
			 * 추천인 코드 있을경우 쿠폰 지급
			 */
			if(targetFrdCd != null && !targetFrdCd.equals("")){
				targetFrdCd = targetFrdCd.toUpperCase();
				int targetUsrId = mainDao.selectFrdId(targetFrdCd);
				if(targetUsrId > 0){
					
					Map<String, Object> frdMap = new HashMap<>();
					frdMap.put("targetUsrId", reqVO.getUsrId());
					frdMap.put("dutDt", Utils.getDiffMonth(3));
					frdMap.put("couponId", FRD_COUPON_ID);
					mainDao.insertFrdCoupon(frdMap);

					int frdCnt = mainDao.selectFrdCnt(targetUsrId);
					if(frdCnt == 0){
						frdMap.put("targetUsrId", targetUsrId);
						int fr = mainDao.insertFrdCoupon(frdMap);
						if(fr > 0){
							frdMap.put("reqUsrId", reqVO.getUsrId());
							mainDao.insertFrdMap(frdMap);
						}
					}
				}
			}
		
			// 바코드 생성
			// 중복 바코드 없는것 찾기
			boolean checkBarcode = true;
			String barcode = "";
			while(checkBarcode){
				barcode = Barcode.CreateQrCode();
				int checkCnt = mainDao.selectMemberBarcodeCnt(barcode);
				if(checkCnt == 0){
					checkBarcode = false;
				}
			}
			// QR CODE 이미지 생성
			String qrCodeUrl = Barcode.CreateQRCodePng(barcode, UPLOAD_PATH, "qrmem");
			if(qrCodeUrl == null){
				throw new Exception("서버 내부 에러");
			}
			
			int joinCost = 0;
			
			String endDt = Utils.getDiffMonth(JOIN_MEMBER_PERIOD);
			Map<String, Object> insertMap = new HashMap<>();
			insertMap.put("usrId", usrId);
			insertMap.put("barcode", barcode);
			insertMap.put("barcodeUrl", qrCodeUrl);
			insertMap.put("endDt", endDt);
			insertMap.put("cost", joinCost);
			insertMap.put("txt", "신규가입");
			
			res = mainDao.insertMemberInfo(insertMap);
			
		}
		
		return res;
	}

	public List<Map<String, Object>> selectUnit() {
		return mainDao.selectUnit();
	}

	public String getUsrNm(String rsvNo) {

		int cnt = mainDao.selectCheckSurvey(rsvNo);
		if(cnt > 0){
			return "A";
		}

		int cntRsv = mainDao.selectCheckRsv(rsvNo);
		if(cntRsv == 0){
			return null;
		}
		
		Map<String, Object> reqMap = new HashMap<>();
		reqMap.put("rsvNo", rsvNo);
		reqMap.put("encKey", ENC_KEY);
		
		return mainDao.selectUsrNm(reqMap);
	}

	public int insertSurvey(Map<String, Object> reqMap) {
		reqMap.put("sId", 1);
		return mainDao.insertSurvey(reqMap);
	}
	
}
