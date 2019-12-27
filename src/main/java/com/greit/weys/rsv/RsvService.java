package com.greit.weys.rsv;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;

import org.apache.commons.collections.MapUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.greit.weys.common.Constant;
import com.greit.weys.common.IdentifyUtils;
import com.greit.weys.common.KakaoClient;
import com.greit.weys.common.Utils;
import com.greit.weys.mail.EmailVO;
import com.greit.weys.mail.Mailer;

@Service
public class RsvService {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private RsvDao rsvDao;
	@Autowired
	private EmailVO emailVO;
	@Autowired
	private Mailer mailer;

	@Value("#{props['ENC.KEY']}")
	private String ENC_KEY;
	@Value("#{props['EMAIL.ID']}")
	private String EMAIL_ID;

	@Value("${SERVER.PATH}")
	private String SERVER_PATH;
	@Value("${SERVER.TYPE}")
	private String SERVER_TYPE;

	//알림톡
	@Value("#{props['IB.FROM.TEL']}")
	private String IB_FROM_TEL;
	@Value("#{props['IB.KAKAO.ID']}")
	private String IB_KAKAO_ID;
	@Value("#{props['IB.KAKAO.PWD']}")
	private String IB_KAKAO_PWD;
	@Value("#{props['IB.KAKAO.SENDER.KEY']}")
	private String IB_KAKAO_SENDER_KEY;

	// 나이스 평가모듈 
	@Value("#{props['NAME.CHECK.CODE']}")
	private String NAME_CHECK_CODE;
	@Value("#{props['NAME.CHECK.PWD']}")
	private String NAME_CHECK_PWD;
	
	@Value("#{props['RSV.MAX']}")
	private int RSV_MAX;

	public int updateBeforeCancel(RsvVO reqVO) {

		reqVO.setEncKey(ENC_KEY);
		int res = rsvDao.updateRsvCancelBefore(reqVO);
		
		if(res > 0){
			Map<String, Object> emailInfo = rsvDao.selectCancelEmail(reqVO);

			/**
			 * 예약일 당일 전 쿠폰을 사용했더라면 
			 */
			int couponId = MapUtils.getIntValue(emailInfo, "COUPON_ID", 0);
			if(couponId > 0){
				rsvDao.updateCouponReturn(couponId);
			}

			/**
			 * 보너스 쿠폰 사용 여부
			 */
			int bonusId = MapUtils.getIntValue(emailInfo, "BONUS_ID", 0);
			if(bonusId > 0){
				rsvDao.updateCouponReturn(bonusId);
			}
			
			/**
			 * 메일 보내기
			 */
			String rsvForm = MapUtils.getString(emailInfo, "RSV_FORM");
			String addr = "";
			String emailDt = "";
			if(rsvForm.equals("R")){
				addr = MapUtils.getString(emailInfo, "STORE_NM");
				emailDt = MapUtils.getString(emailInfo, "RSV_DT") + " " + MapUtils.getString(emailInfo, "RSV_TM");
			} else {
				addr = MapUtils.getString(emailInfo, "RSV_ADDR") + " " + MapUtils.getString(emailInfo, "RSV_ADDR_DETAIL");
				
				String tm = MapUtils.getString(emailInfo, "RSV_TM");
				int deliverTm = MapUtils.getIntValue(emailInfo, "DELIVER_TIME");
				StringTokenizer st = new StringTokenizer(tm, ":");
				String hour = st.nextToken();
				String min = st.nextToken();
				
				int iHour = Integer.parseInt(hour) + deliverTm;
				hour = iHour + ":" + min;
				emailDt = MapUtils.getString(emailInfo, "RSV_DT") + " " + MapUtils.getString(emailInfo, "RSV_TM") + " ~ " + hour + " 경 ";
			}

			if(SERVER_TYPE.equals("USER")){
				String template = "";
				String subject = "";
				Map<String, Object> mailMap = new HashMap<>();
				mailMap.put("usrNm", MapUtils.getString(emailInfo, "RSV_NM"));
				mailMap.put("rsvNo", MapUtils.getString(emailInfo, "RSV_NO"));
				mailMap.put("regDttm", Utils.getTodayDate("yyyy년 MM월 dd일 a hh시 mm분"));
				
				mailMap.put("unit", MapUtils.getString(emailInfo, "UNIT_NM") + "(" + MapUtils.getString(emailInfo, "UNIT") + ")");
				mailMap.put("rsvAmnt", Utils.setStringFormatInteger(MapUtils.getString(emailInfo, "RSV_AMNT")));
				mailMap.put("addr", addr);
				mailMap.put("rsvDt", emailDt);
				template = "befCancel.vm";
				subject = MapUtils.getString(emailInfo, "RSV_NM") + " 고객님, 환전 예약이 취소되었습니다.";
				
				emailVO.setEmailMap(mailMap);
				emailVO.setSubject(subject);
				emailVO.setVeloTmp(template);
				emailVO.setFrom(EMAIL_ID);
				emailVO.setReceiver(MapUtils.getString(emailInfo, "RSV_EMAIL"));
				
				try{
					mailer.sendEmail(emailVO);
				} catch (Exception e) {
					logger.info("mail error : " + e.getMessage());
				}
			}
			
			/**
			 * 알림톡 메세지 보내기
			 	[웨이즈]

				조은용 고객님의 USD 1,200 예약이 취소되었습니다.
				
			 */
			String templete = "";
			String msg = "[웨이즈]\n\n";
			msg += MapUtils.getString(emailInfo, "RSV_NM") + " 고객님의 " + MapUtils.getString(emailInfo, "UNIT") + " " + Utils.setStringFormatInteger(MapUtils.getString(emailInfo, "RSV_AMNT"));
			msg += " 예약이 취소되었습니다.";
			templete = "reservation_cancel_before_v6";
			
			String nation = MapUtils.getString(emailInfo, "NATION");
			String usrTel = MapUtils.getString(emailInfo, "USR_TEL");
			if(nation.equals("82")){
				if(usrTel.startsWith("010")){
					usrTel = usrTel.substring(1);
				}
			}
			String tel = nation + usrTel;
			
			KakaoClient kakao = new KakaoClient(Constant.KAKAO_TALK_MSG, IB_KAKAO_ID, IB_KAKAO_PWD, IB_KAKAO_SENDER_KEY, IB_FROM_TEL);
			kakao.sendMsg(tel, msg, templete);

			if(reqVO.getUsrId() > 0){
				Map<String, Object> talk =  new HashMap<>();
				talk.put("usrId", reqVO.getUsrId());
				talk.put("msg", msg);
				talk.put("templete", templete);
				rsvDao.insertKakaoLog(talk);
			}
		}
		
		return res;
	}

	public int updateRsvCancel(RsvVO reqVO) {
		
		reqVO.setEncKey(ENC_KEY);
		int res = rsvDao.updateCancelRsv(reqVO);
		if(res > 0){
			Map<String, Object> emailInfo = rsvDao.selectCancelEmail(reqVO);
			int rsvId = MapUtils.getIntValue(emailInfo, "RSV_ID");
			String rsvDt = MapUtils.getString(emailInfo, "RSV_DT");
			/**
			 * 지점 인수부분
			 * 당일 취소시
			 * 센터 - 취소로 상태 변경. 회수가 필요함
			 */
			String storeCenter = MapUtils.getString(emailInfo, "STORE_CENTER"); 
			if(storeCenter.equals("Y") && Utils.diffTwoDate(rsvDt, Utils.getDiffDate(0)) <= 0){
//				rsvDao.updateRsvGrpCancelLog(rsvId);
				rsvDao.insertRsvRetLog(reqVO.getRsvId());
			}
			
			/**
			 * 메일 보내기
			 */
			String rsvForm = MapUtils.getString(emailInfo, "RSV_FORM");
			String addr = MapUtils.getString(emailInfo, "STORE_NM");
			String emailDt = MapUtils.getString(emailInfo, "RSV_DT") + " " + MapUtils.getString(emailInfo, "RSV_TM");
			if(rsvForm.equals("R")){
				addr = MapUtils.getString(emailInfo, "STORE_NM");
				emailDt = MapUtils.getString(emailInfo, "RSV_DT") + " " + MapUtils.getString(emailInfo, "RSV_TM");
			} else {
				addr = MapUtils.getString(emailInfo, "RSV_ADDR") + " " + MapUtils.getString(emailInfo, "RSV_ADDR_DETAIL");
				
				String tm = MapUtils.getString(emailInfo, "RSV_TM");
				int deliverTm = MapUtils.getIntValue(emailInfo, "DELIVER_TIME");
				StringTokenizer st = new StringTokenizer(tm, ":");
				String hour = st.nextToken();
				String min = st.nextToken();
				
				int iHour = Integer.parseInt(hour) + deliverTm;
				hour = iHour + ":" + min;
				emailDt = MapUtils.getString(emailInfo, "RSV_DT") + " " + MapUtils.getString(emailInfo, "RSV_TM") + " ~ " + hour + " 경 ";
			}

			if(SERVER_TYPE.equals("USER")){
				String template = "";
				String subject = "";
				Map<String, Object> mailMap = new HashMap<>();
				mailMap.put("usrNm", MapUtils.getString(emailInfo, "RSV_NM"));
				mailMap.put("rsvNo", MapUtils.getString(emailInfo, "RSV_NO"));
				mailMap.put("regDttm", Utils.getTodayDate("yyyy년 MM월 dd일 a hh시 mm분"));
				mailMap.put("getAmnt", Utils.setStringFormatInteger(MapUtils.getString(emailInfo, "GET_AMNT")));
				mailMap.put("cancelCms", "-" + Utils.setStringFormatInteger(MapUtils.getString(emailInfo, "CANCEL_CMS")));
				mailMap.put("cancelAmnt", Utils.setStringFormatInteger(MapUtils.getString(emailInfo, "CANCEL_AMNT")));
				mailMap.put("bankNm", reqVO.getrBankNm());
				mailMap.put("bankCd", reqVO.getrBankCd());
				template = "cancel.vm";
				subject = MapUtils.getString(emailInfo, "RSV_NM") + " 고객님, 환불이 접수되었습니다.";
				
				emailVO.setEmailMap(mailMap);
				emailVO.setSubject(subject);
				emailVO.setVeloTmp(template);
				emailVO.setFrom(EMAIL_ID);
				emailVO.setReceiver(MapUtils.getString(emailInfo, "RSV_EMAIL"));
				
				try{
					mailer.sendEmail(emailVO);
				} catch (Exception e) {
					logger.info("mail error : " + e.getMessage());
				}
			}
			
			/**
			 * 알림톡 메세지 보내기
			 	[웨이즈]

				조은용 고객님의 USD 1,200 예약이 취소되었습니다.
				
				[웨이즈]
				
				조은용 고객님의 USD 1,200 예약취소 및 환불요청이 접수되었습니다.
				
				■환불 요청내역
				- 결제하신 금액: 1,300,000원
				- 취소수수료: -8,240원
				- 환불받으실 금액: 1,296,500원
				
				(영업일 기준 2일 소요)
			 */
			String templete = "";
			String msg = "[웨이즈]\n\n";
			
			int cancelCms = MapUtils.getIntValue(emailInfo, "CANCEL_CMS");
			msg += MapUtils.getString(emailInfo, "RSV_NM") + " 고객님의 " + MapUtils.getString(emailInfo, "UNIT") + " " + Utils.setStringFormatInteger(MapUtils.getString(emailInfo, "RSV_AMNT"));
			msg += " 예약취소 및 환불요청이 접수되었습니다.\n\n";
			msg += "■환불 요청내역\n";
			msg += "- 결제하신 금액: " + Utils.setStringFormatInteger(MapUtils.getString(emailInfo, "GET_AMNT")) + "원\n";
			msg += "- 취소수수료: -" + Utils.setStringFormatInteger(cancelCms + "") + "원\n";
			msg += "- 환불받으실 금액: " + Utils.setStringFormatInteger(MapUtils.getString(emailInfo, "CANCEL_AMNT")) + "원\n\n";
			msg += "(영업일 기준 2일 소요)";
			templete = "reservation_cancel_after_v6";
			
			String nation = MapUtils.getString(emailInfo, "NATION");
			String usrTel = MapUtils.getString(emailInfo, "USR_TEL");
			if(nation.equals("82")){
				if(usrTel.startsWith("010")){
					usrTel = usrTel.substring(1);
				}
			}
			String tel = nation + usrTel;
			
			KakaoClient kakao = new KakaoClient(Constant.KAKAO_TALK_MSG, IB_KAKAO_ID, IB_KAKAO_PWD, IB_KAKAO_SENDER_KEY, IB_FROM_TEL);
			kakao.sendMsg(tel, msg, templete);
			
			if(reqVO.getUsrId() > 0){
				Map<String, Object> talk =  new HashMap<>();
				talk.put("usrId", reqVO.getUsrId());
				talk.put("msg", msg);
				talk.put("templete", templete);
				rsvDao.insertKakaoLog(talk);
			}
		}
		
		return res;
	}

	public Map<String, Object> selectGetUnit(RsvVO reqVO) {

		/**
		 * 사용 가능 한도
		 */
		int usdUsed = 0;
		int otherUsed = 0;
		if(reqVO.getUsrId() != 0){
			Map<String, Object> reqMap = new HashMap<>();
			reqMap.put("usrId", reqVO.getUsrId());
			reqMap.put("dt", Utils.getDiffDate(0));
			
			List<Map<String, Object>> limitMap = rsvDao.selectRsvTodayHist(reqMap);
			for(Map<String, Object> tmp : limitMap){
				String unit = MapUtils.getString(tmp, "UNIT");
				int rsvAmnt = MapUtils.getIntValue(tmp, "RSV_AMNT");
				if(unit.equals("USD")){
					usdUsed += rsvAmnt;
				} else {
					double basicRate = MapUtils.getDoubleValue(tmp, "BASIC_RATE_WEYS");
					int amount = (int) (rsvAmnt * basicRate);
					if(unit.equals("JPY")){
						amount = amount / 100;
					}
					otherUsed += amount;
				}
			}
		}
		
		/**
		 * 지점의 사용 가능 화폐 및 해당 화폐의 상태
		 */
		RsvUnitVO temp = rsvDao.selectRsvUnit(reqVO);

		double airCommis = temp.getAirCommis();
		double basicRate = temp.getBasicRate();
		
		double basicRateAir = basicRate + (basicRate * airCommis * 0.01);
		temp.setBasicRateAir(Double.parseDouble(String.format("%.2f", basicRateAir)));
		
		double USD_BASIC_USER = rsvDao.selectUSDRate();
		
		/**
		 * 해당 화폐 최대치 구하기
		 * 기준 : USD 2,000달러
		 */
		int unitMax = 0;
		int limitAmnt = 0;
		if(temp.getUnitCd().equals("USD")){
			unitMax = RSV_MAX;
			limitAmnt = RSV_MAX - usdUsed;
			if(otherUsed > 0){
				int otherUSD = (int) (otherUsed / USD_BASIC_USER);
				limitAmnt = limitAmnt - otherUSD;
			}
		} else {
			unitMax = (int) (RSV_MAX * USD_BASIC_USER / basicRate);
			if(temp.getUnitCd().equals("JPY")){
				unitMax = unitMax * 100;
			}
			/**
			 * 최대 1000달러 한도 체크
			 */
			String halfSt = rsvDao.selectUnitHalf(temp.getUnitCd());
			if(halfSt.equals("Y")){
				unitMax = unitMax / 2;
			}
			
			unitMax = (unitMax / temp.getUnitSize()) * temp.getUnitSize();
			
			limitAmnt = unitMax;
			
			int otherAmnt = 0;
			if(usdUsed > 0){
				otherAmnt = (int) (usdUsed * USD_BASIC_USER / basicRate);
				if(temp.getUnitCd().equals("JPY")){
					otherAmnt = otherAmnt * 100;
				}
				limitAmnt = limitAmnt - otherAmnt;
			}
			if(otherUsed > 0){
				otherAmnt = (int) (otherUsed / basicRate);
				if(temp.getUnitCd().equals("JPY")){
					otherAmnt = otherAmnt * 100;
				}
				limitAmnt = limitAmnt - otherAmnt;
			}

			limitAmnt = (limitAmnt / temp.getUnitSize()) * temp.getUnitSize();
		}
		if(limitAmnt < 0){
			limitAmnt = 0;
		}
		temp.setLimitAmnt(limitAmnt);
		temp.setUnitMax(unitMax);

		List<Map<String, Object>> couponList = new ArrayList<Map<String,Object>>();
		if(reqVO.getUsrId() != 0){
			couponList = rsvDao.selectEventBonus(reqVO);
		}
		
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("info", temp);
		resultMap.put("coupon", couponList);
		
		return resultMap;
	}

	public List<Map<String, Object>> selectStoreList() {
		return rsvDao.selectStoreList();
	}

	public List<Map<String, Object>> selectVBankList() {
		return rsvDao.selectVBankList();
	}

	public List<Map<String, Object>> selectUnitPaper(String unitCd) {
		return rsvDao.selectUnitPaper(unitCd);
	}

	public List<RsvStoreVO> selectUnitRsvList(String unitCd) throws Exception {

		/**
		 * 예약 가능한 지점 리스트 STORE_ST = 'Y' AND STORE_RSV = 'Y'
		 */
		List<RsvStoreVO> resultList = rsvDao.selectUnitStoreList(unitCd);

		/**
		 * 오늘 요일 계산.
		 */
		int dt = Utils.getDay(Utils.getDiffDate(0));

		for (RsvStoreVO temp : resultList) {
			int storeId = temp.getStoreId();

			/**
			 * 당일예약 가능여부 확인
			 * 24시간 지점여부 확인
			 */
			Map<String, Object> subInfo = rsvDao.selectCheckTodayRsv(storeId);
			String todayRsv = MapUtils.getString(subInfo, "TODAY_RSV");
			String allDaySt = MapUtils.getString(subInfo, "ALL_DAY_ST");
			
			/**
			 * 예약가능한 요일을 구해 해당 요일의 시작시간과 끝시간 구하기 해당 날짜에 쉬는날이 포함되어 있는지 확인
			 */
			List<Map<String, Object>> rsvData = new ArrayList<>();

			int index = 0;
			int i = 0;
			
			int before = 0;
			int after = 0;
			
			int dayCnt = 7;
//			if(temp.getStoreExc().equals("Y"))
//				dayCnt = 3;
			
			while (index < 7 || after < 2) {
				Map<String, Object> reqMap = new HashMap<>();
				reqMap.put("storeId", storeId);
				
				int val = dt + 1 + i;
//				if(temp.getStoreExc().equals("Y"))
//					val = dt + i;

				String rsvDt = Utils.getDiffDate(val - dt);

				if (val > 6){
					val = val % 7;
				}
				reqMap.put("day", val);
				reqMap.put("closeDt", rsvDt);
				String closeDt = rsvDao.selectCheckClose(reqMap);
				boolean holiday = false;
				if (closeDt != null) {
					holiday = true;
				}

				Map<String, Object> timeMap = rsvDao.selectRsvStoreTime(reqMap);
				String openSt = MapUtils.getString(timeMap, "OPEN_ST");
				if(openSt.equals("N")){
					holiday = true;
				}
				
				String startTm = MapUtils.getString(timeMap, "startTm");
				/**
				 * 24시간 지점일 경우 첫 시작은 5시부터
				 */
				if(i == 0 && allDaySt.equals("Y") && storeId == 10){
					startTm = "05:00";
				}

				if(index == 0 && holiday){
					before = before + 1;
				}
				if(index == dayCnt){
					holiday = true;
					after = after + 1;
				}
				if(!holiday && index < dayCnt){
					index = index + 1;
				}
				
				Map<String, Object> resMap = new HashMap<>();
				resMap.put("rsvYear", rsvDt.substring(0, 4));
				resMap.put("rsvDt", rsvDt.substring(5).replace(".", "/"));
				resMap.put("holiday", holiday);
				resMap.put("rsvDay", val);
				resMap.put("startTm", startTm);
				resMap.put("endTm", MapUtils.getString(timeMap, "endTm"));
				rsvData.add(resMap);
				i = i + 1;
			}
			
			if(before > 2){
				for(int x=0 ; x < before - 2 ; x++){
					rsvData.remove(0);
				}
			} else if (before < 2){

				Map<String, Object> resMap = rsvData.get(0);
				String year = MapUtils.getString(resMap, "rsvYear");
				String dat = MapUtils.getString(resMap, "rsvDt");
				String [] sDat = dat.split("/");
				int day = MapUtils.getIntValue(resMap, "rsvDay");
				
				int minus = 0;
				for(int x=0 ; x < 2 - before ; x++){
					minus = minus + 1;
					String thatDay = Utils.getDateFormat( 0 - minus, Integer.parseInt(year), Integer.parseInt(sDat[0]) - 1, Integer.parseInt(sDat[1]));

					String [] sTat = thatDay.split("\\.");
					year = sTat[0];
					String sMonth = sTat[1];
					String sDay = sTat[2];
					int beforeDay = day - minus;
					beforeDay = beforeDay < 0 ? 6 : beforeDay;

					Map<String, Object> beforeMap = new HashMap<>();
					beforeMap.put("rsvYear", year);
					beforeMap.put("rsvDt", sMonth + "/" + sDay);
					beforeMap.put("holiday", true);
					beforeMap.put("rsvDay", beforeDay);
					beforeMap.put("startTm", "");
					beforeMap.put("endTm", "");
					rsvData.add(0, beforeMap);
				}
			}
			Integer brkTm = rsvDao.selectBrkTm(storeId);
			if(brkTm == null)
				brkTm = 0;
			temp.setBrkTm(brkTm);
			temp.setRsvDate(rsvData);
		}
		return resultList;
	}

	public int insertRsv(RsvVO reqVO) throws Exception {

		reqVO.setEncKey(ENC_KEY);
		if(reqVO.getUsrTel() != null){
			String usrTel = reqVO.getUsrTel().replaceAll("-", "").trim();
			reqVO.setUsrTel(usrTel);
		}
		
		if(reqVO.getCerChk().equals("N")){
			IdentifyUtils idu = new IdentifyUtils(NAME_CHECK_CODE, NAME_CHECK_PWD);
			boolean chk = idu.checkIdentify(reqVO.getUsrNm(), reqVO.getUsrNmId().replaceAll("-", ""));
			
			if(!chk){
				return -2;
			}
			
		}

		/**
		 * 비회원 하루 예약 한도 체크
		 */
		if(reqVO.getUsrId() == 0){
			Integer amnt = rsvDao.selectPastRsv(reqVO);
			if(amnt != null && amnt > 0){
				double usdRate = rsvDao.selectUSDRate();
				int max = (int) (usdRate * 2000);
				
				int rAmnt = (int) (reqVO.getBasicRate() * reqVO.getRsvAmnt());
				if(reqVO.getUnitCd().equals("JPY"))
					rAmnt = rAmnt / 100;
				
				if(max < amnt + rAmnt){
					return -9;
				}
			}
		}

		/**
		 * RSV_NO 생성
		 */
		String rsvNo = "";
		while(true){
			rsvNo = Utils.makeCode(6);
			
			int cnt = rsvDao.selectCheckRsvNo(rsvNo);
			if(cnt == 0)
				break;
		}
		reqVO.setRsvNo(rsvNo);

		double basicRateUser = (reqVO.getBasicRate() + reqVO.getBasicRateBank()) / 2;
		reqVO.setBasicRateUser(Double.parseDouble(String.format("%.2f", basicRateUser)));
		reqVO.setRsvSt(Constant.RSV_START);
		
		/**
		 * 가상계좌 개설
		 * 1. 사용자 생성
		 * 2. 가상계좌 생성
		 */
		String type = SERVER_TYPE.equals("USER") ? "RSV" : "TSV";
		String pgUsrKey = type + reqVO.getUsrId() + "WEYS"; 
		
		String refId = type + "_" + rsvNo;
		String tid = pgUsrKey;
		String accntNo = "";
		String bankNm = "";
		String holder = "";
		
		List<Map<String, Object>> vbankList = rsvDao.selectVBankList();
		for(Map<String, Object> bnk : vbankList){
			String vbankCd = MapUtils.getString(bnk, "VBANK_CD");
			
			if(reqVO.getVbankCd().equals(vbankCd)){
				bankNm = MapUtils.getString(bnk, "VBANK_NM");
				accntNo = MapUtils.getString(bnk, "ACCNT_NO");
				holder = MapUtils.getString(bnk, "HOLDER");
				break;
			}
		}
		
		/**
		 * 예약하기 등록
		 */
		Date date = new Date(Utils.getAfter30Min(30) * 1000);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", Locale.KOREA);

		reqVO.setRefId(refId);			
		reqVO.setTid(tid);					
		reqVO.setVbankCd(accntNo);
		reqVO.setVbankNm(bankNm);
		reqVO.setVbankHolder(holder);
		reqVO.setVbankDue(sdf.format(date));
		
		int res = rsvDao.insertRsvInfo(reqVO);
		
		if(res == 0){
			throw new Exception("예약 등록 실패");
		}

		if(reqVO.getUsrId() > 0 && reqVO.getCerChk().equals("N")){
			/**
			 * 주민등록번호로 성별과 생년월일 구하기
			 */
			String birth = "";
			String backNum = "";
			String rsvNmId = reqVO.getUsrNmId();
			
			if(rsvNmId.contains("-")){
				StringTokenizer st = new StringTokenizer(rsvNmId, "-");
				birth = st.nextToken().trim();
				backNum = st.nextToken().trim();
			} else if(rsvNmId.length() == 13) {
				birth = rsvNmId.substring(0, 6).trim();
				backNum = rsvNmId.substring(6).trim();
			} else {
				return 0;
			}
			
			backNum = backNum.substring(0, 1);
			String gndr = "M";
			
			if(Integer.parseInt(backNum) < 5 && Integer.parseInt(backNum) > 2){
				birth = "20" + birth.substring(0, 2) + "." + birth.substring(2, 4) + "."  + birth.substring(4, 6);
			} else {
				birth = "19" + birth.substring(0, 2) + "." + birth.substring(2, 4) + "."  + birth.substring(4, 6);
			}
			
			if(Integer.parseInt(backNum) == 2 || Integer.parseInt(backNum) == 4 || Integer.parseInt(backNum) == 6){
				gndr = "F";
			}
			
			String usrNmId = reqVO.getUsrNmId();
			if(usrNmId.length() == 13){
				usrNmId = usrNmId.substring(0, 6) + "-" + usrNmId.substring(6);
			}
			
			Map<String, Object> reqMap = new HashMap<>();
			reqMap.put("usrId", reqVO.getUsrId());
			reqMap.put("usrNm", reqVO.getUsrNm());
			reqMap.put("usrNmId", usrNmId);
			reqMap.put("gndr", gndr);
			reqMap.put("birth", birth);
			reqMap.put("key", ENC_KEY);
			
			rsvDao.updateUsrCertify(reqMap);
		} 
		
		if(reqVO.getUsrId() == 0){

			String usrNmId = reqVO.getUsrNmId();
			if(usrNmId.length() == 13){
				usrNmId = usrNmId.substring(0, 6) + "-" + usrNmId.substring(6);
			}
			
			Map<String, Object> reqMap = new HashMap<>();
			reqMap.put("rsvId", reqVO.getRsvId());
			reqMap.put("usrNm", reqVO.getUsrNm());
			reqMap.put("usrNmId", usrNmId);
			reqMap.put("usrTel", reqVO.getUsrTel());
			reqMap.put("usrEmail", reqVO.getUsrEmail());
			reqMap.put("key", ENC_KEY);

			rsvDao.updateGuestinfo(reqMap);
		}
		
		/**
		 * 보너스 쿠폰 사용
		 */
		if(reqVO.getBonusId() > 0){
			rsvDao.updateBonusCouponUsed(reqVO);
		}
		
		/**
		 * 원화금액 
		 */
		int fakeCost = (int) (reqVO.getRsvAmnt() * reqVO.getBasicRate());
		if(reqVO.getUnitCd().equals("JPY")){
			fakeCost = fakeCost / 100;
		}

		/**
		 * 알림톡 전송
			조은용 고객님의 USD 1,200 환전 예약이 접수되었습니다.
			
			■환전 신청내역
			- 예약번호: WERWEW
			- 구매하실 외화: USD 1,200
			- 수령장소: #{r_delivery_location}
			- 수령일시: #{r_delivery_date}
			- 지불하실 금액: 1,302,000원
			
			■입금안내
			- 입금하실 금액: 1,302,000원
			- 입금계좌: KEB하나은행(110-311-119497)
			- 예금주: 웨이즈 조은용
			
			※ 2018/03/15 00:00까지 미입금시 자동 취소되며, 다시 환전 예약을 하셔야 합니다.
			※ 입금액 및 입금자 성명 불일치시 입금 확인 및 환전 거래가 지연될 수 있습니다.
		 */
		
		String storeNm = rsvDao.selectAddrDetail(reqVO.getStoreId());
		String msg = "";
		msg = reqVO.getUsrNm() + " 고객님의 " + reqVO.getUnitCd() + " " + Utils.setStringFormatInteger(reqVO.getRsvAmnt() + "") + " 환전 예약이 접수되었습니다.\n\n";

		msg += "■환전 신청내역\n";
		msg += "- 예약번호: " + reqVO.getRsvNo() + "\n";
		msg += "- 구매하실 외화: " + reqVO.getUnitCd() + " " + Utils.setStringFormatInteger(reqVO.getRsvAmnt() + "") + "\n";
		msg += "- 수령장소: " + storeNm + "\n";
		msg += "- 수령일시: " + reqVO.getRsvDt() + " " + reqVO.getRsvTm() + "\n";
		msg += "- 지불하실 금액: " + Utils.setStringFormatInteger(reqVO.getGetAmnt() + "") + "원\n\n";

		msg += "■입금안내\n";
		msg += "- 입금하실 금액: " + Utils.setStringFormatInteger(reqVO.getGetAmnt() + "") + "원\n";
		msg += "- 입금계좌: " + bankNm + "(" + accntNo + ")\n";
		msg += "- 예금주: " + holder + "\n\n";

		msg += "※ " + sdf.format(date) + "까지 미입금시 자동 취소되며, 다시 환전 예약을 하셔야 합니다.\n";
		msg += "※ 입금액 및 입금자 성명 불일치시 입금 확인 및 환전 거래가 지연될 수 있습니다.";
		
		
		/**
		 * 예약 접수 이메일 보내기
		 */
		String unitNm = rsvDao.selectUnitNm(reqVO.getUnitCd());
		String rsvDt = reqVO.getRsvDt() + " " + reqVO.getRsvTm();
		
		if(SERVER_TYPE.equals("USER")){

			Map<String, Object> mailMap = new HashMap<>();
			mailMap.put("usrNm", reqVO.getUsrNm());
			mailMap.put("rsvNo", reqVO.getRsvNo());
			mailMap.put("regDttm", Utils.getTodayDate("yyyy년 MM월 dd일 a hh시 mm분"));
			mailMap.put("unit", unitNm + "(" + reqVO.getUnitCd() + ")");
			mailMap.put("rsvAmnt", Utils.setStringFormatInteger(reqVO.getRsvAmnt() + ""));
			mailMap.put("basicRate", Utils.setStringFormatInteger(String.format("%.2f",reqVO.getBasicRate())));
			mailMap.put("wonBill", Utils.setStringFormatInteger(fakeCost + ""));
			mailMap.put("cost", Utils.setStringFormatInteger(reqVO.getWeysCommisVal() + ""));
			mailMap.put("cms", Utils.setStringFormatInteger(reqVO.getCms() + ""));

			mailMap.put("weysBonus", (int)reqVO.getWeysBonus());
			mailMap.put("weysBonusVal", Utils.setStringFormatInteger(reqVO.getWeysBonusVal() + ""));
			mailMap.put("weysCommis", reqVO.getWeysCommis());
			mailMap.put("bonusNm", reqVO.getBonusNm());
			mailMap.put("weysCommisVal", Utils.setStringFormatInteger(reqVO.getWeysCommisVal() + ""));
			
			mailMap.put("getAmnt", Utils.setStringFormatInteger(reqVO.getGetAmnt() + ""));

			mailMap.put("vbank", bankNm + "(" + accntNo + ")");
			mailMap.put("vbankHolder", holder);
			mailMap.put("vbankDue", sdf.format(date));

			mailMap.put("addr", storeNm);
			mailMap.put("rsvDt", rsvDt);
			
			Map<String, Object> reqMailMap = new HashMap<>();
			reqMailMap.put("usrId", reqVO.getUsrId());
			reqMailMap.put("key", ENC_KEY);
			
			emailVO.setEmailMap(mailMap);
			emailVO.setSubject(reqVO.getUsrNm() + " 고객님, 환전 예약이 접수되었습니다.");
			emailVO.setVeloTmp("submit.vm");
			emailVO.setFrom(EMAIL_ID);
			emailVO.setReceiver(reqVO.getUsrEmail());
			
			try{
				mailer.sendEmail(emailVO);
			} catch (Exception e) {
				logger.info("mail error : " + e.getMessage());
			}
		}

		String usrTel = reqVO.getUsrTel();
		String nation = "82";
		if(usrTel.startsWith("010"))
			usrTel = usrTel.substring(1);
		String tel = nation + usrTel;
		
		KakaoClient kakao = new KakaoClient(Constant.KAKAO_TALK_MSG, IB_KAKAO_ID, IB_KAKAO_PWD, IB_KAKAO_SENDER_KEY, IB_FROM_TEL);
		kakao.sendMsg(tel, msg, "reservation_order_v8");
		
		if(reqVO.getUsrId() > 0){

			Map<String, Object> talk =  new HashMap<>();
			talk.put("usrId", reqVO.getUsrId());
			talk.put("msg", msg);
			talk.put("templete", "reservation_order_v8");
			rsvDao.insertKakaoLog(talk);
			
			/**
			 * 예약 로그 등록
			 */
			Map<String, Object> logMap = new HashMap<>();
			logMap.put("rsvId", reqVO.getRsvId());
			logMap.put("usrId", reqVO.getUsrId());
			logMap.put("asIs", null);
			logMap.put("toBe", Constant.RSV_START);
			rsvDao.insertRsvLog(logMap);
		}
		
		if (res > 0)
			return 1;
		else{
			return 0;
		}
	}

	public Map<String, Object> selectRsvGuest(RsvVO reqVO) {
		reqVO.setEncKey(ENC_KEY);
		Map<String, Object> resultMap = rsvDao.selectRsvGuest(reqVO);
		if(resultMap == null){
			resultMap = new HashMap<>();
			resultMap.put("res", "fail");
			resultMap.put("msg", "존재하지 않는 예약입니다.");
		} else {
			resultMap.put("res", "success");
			
			String rsvSt = MapUtils.getString(resultMap, "RSV_ST");
			if(rsvSt.equals("R")){
				String rsvDt = MapUtils.getString(resultMap, "RSV_DT");
				long diff = Utils.diffTwoDate(rsvDt, Utils.getDiffDate(0));
				
				int cancelCms = 0;
				int cancelAmnt = MapUtils.getIntValue(resultMap, "GET_AMNT");
				if(diff <= 0){
					cancelCms = 3000;
					cancelAmnt = cancelAmnt - cancelCms;
				}
				resultMap.put("CANCEL_CMS", cancelCms);
				resultMap.put("CANCEL_AMNT", cancelAmnt);
			}
		}
		
		return resultMap;
	}
	
}
