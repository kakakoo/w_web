package com.greit.weys.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.MapUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.greit.weys.common.AriaUtils;
import com.greit.weys.common.IdentifyUtils;
import com.greit.weys.common.Paging;
import com.greit.weys.common.Utils;

@Service
public class MypageService {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private MypageDao mypageDao;
	
	@Value("#{props['ENC.KEY']}")
	private String ENC_KEY;
	// 나이스 평가모듈 
	@Value("#{props['NAME.CHECK.CODE']}")
	private String NAME_CHECK_CODE;
	@Value("#{props['NAME.CHECK.PWD']}")
	private String NAME_CHECK_PWD;
	
	public MypageVO selectUsrInfo(int usrId) {
		
		Map<String, Object> reqMap = new HashMap<>();
		reqMap.put("usrId", usrId);
		reqMap.put("encKey", ENC_KEY);
		
		MypageVO result = mypageDao.selectUsrInfo(reqMap);
		if(result.getUsrNm() == null){
			result.setIdentified("N");
		} else {
			result.setIdentified("Y");
		}
		
		return result;
	}

	public int updateUserPwd(MypageVO reqVO) throws Exception {
		
		String exist = mypageDao.selectUsrPwd(reqVO);
		String pw = AriaUtils.encryptPassword(reqVO.getExistPwd(), String.valueOf(reqVO.getUsrId()));
		
		if(pw.equals(exist)){
			String newPw = AriaUtils.encryptPassword(reqVO.getNewPwd(), String.valueOf(reqVO.getUsrId()));
			reqVO.setNewPwd(newPw);
		} else {
			return -1;
		}
		
		return mypageDao.updateUserPwd(reqVO);
	}

	public int updateUserEmail(MypageVO reqVO) {
		reqVO.setEncKey(ENC_KEY);
		return mypageDao.updateUserEmail(reqVO);
	}

	public int updateUserTel(MypageVO reqVO) {
		reqVO.setEncKey(ENC_KEY);
		int resCnt = mypageDao.selectUsrTel(reqVO);
		if(resCnt > 0){
			return -1;
		}
		return mypageDao.updateUserTel(reqVO);
	}

	public int updateUserSignout(MypageVO reqVO) throws Exception {
		
		String exist = mypageDao.selectUsrPwd(reqVO);
		String pw = AriaUtils.encryptPassword(reqVO.getExistPwd(), String.valueOf(reqVO.getUsrId()));
		
		if(!exist.equals(pw)){
			return -1;
		}
		mypageDao.updateUserDeleteToken(reqVO.getUsrId());
		
		int resCnt = mypageDao.updateUserSignout(reqVO.getUsrId());
		if(resCnt > 0){
			
		}
		return resCnt;
	}

	public int updateUserIdentified(MypageVO reqVO) {
		
		IdentifyUtils idu = new IdentifyUtils(NAME_CHECK_CODE, NAME_CHECK_PWD);
		boolean chk = idu.checkIdentify(reqVO.getUsrNm(), reqVO.getUsrNmId().replaceAll("-", ""));
		if(!chk){
			return -1;
		}  
		String usrNmId = reqVO.getUsrNmId();
		if(usrNmId.length() == 13){
			usrNmId = usrNmId.substring(0, 6) + "-" + usrNmId.substring(6);
			reqVO.setUsrNmId(usrNmId);
		}
		reqVO.setEncKey(ENC_KEY);
		return mypageDao.updateUserIdentified(reqVO);
	}

	public List<CouponVO> selectCouponInfo(Paging paging) {
		paging.setSearchPage((paging.getPageNo() - 1) * paging.getPageSize());
		return mypageDao.selectCouponInfo(paging);
	}

	public int selectCouponCnt(Paging paging) {
		return mypageDao.selectCouponCnt(paging);
	}

	public int updateCoupon(CouponVO reqVO) {
		
		Map<String, Object> couponInfo = mypageDao.selectCoupon(reqVO.getCouponCode());
		String type = "A";
		
		if(couponInfo == null){
			/**
			 * 1개의 쿠폰에 여러 코드가 발급
			 */
			couponInfo = mypageDao.selectCouponInfoGroup(reqVO.getCouponCode());
			type = "B";
		}
		
		/**
		 * 존재하는 쿠폰이 없음
		 */
		if(couponInfo == null){
			return -1;
		}
		
		if(type.equals("A")){
			/**
			 * 사용여부 확인
			 */
			int cnt = mypageDao.checkCouponUsed(reqVO);
			if(cnt > 0){
				return -2;
			}
			
			/**
			 * 쿠폰 수량 마감 체크
			 */
			int couponLimit = MapUtils.getIntValue(couponInfo, "COUPON_LIMIT");
			if(couponLimit > 0){
				int couponCnt = MapUtils.getIntValue(couponInfo, "COUPON_CNT");
				if(couponLimit <= couponCnt){
					return -3;
				}
			}
			
		} else {
			/**
			 * 사용여부 확인
			 */
			String useSt = MapUtils.getString(couponInfo, "USE_ST");
			if(useSt.equals("Y")){
				return -2;
			}
		}
		
		/**
		 * 쿠폰 기한 체크
		 */
		String endDt = MapUtils.getString(couponInfo, "END_DT");
		String today = Utils.getDiffDate(0);
		long diff = Utils.diffTwoDate(endDt, today);
		if(diff < 0){
			return -10;
		}

		String couponTp = MapUtils.getString(couponInfo, "COUPON_TP");
		String periodTp = MapUtils.getString(couponInfo, "PERIOD_TP");
		
		String due = endDt;
		if(periodTp.equals("D")){
			int period = MapUtils.getIntValue(couponInfo, "MEMBER_PERIOD");
			due = Utils.getDiffMonth(period);
		}

		couponInfo.put("dueDt", due);
		couponInfo.put("usrId", reqVO.getUsrId());
		mypageDao.insertCouponHist(couponInfo);
		
		if(type.equals("B")){
			mypageDao.updateCouponUsed(reqVO.getCouponCode());
		}
		
		return 1;
	}

	public Map<String, Object> selectNotiInfo(int usrId) {

		return mypageDao.selectNotiInfo(usrId);
	}

	public int updateNoti(MypageVO reqVO) {
		
		return mypageDao.updateNoti(reqVO);
	}

	public List<Map<String, Object>> selectRsvHist(Paging paging) {
		paging.setEncKey(ENC_KEY);
		paging.setSearchPage((paging.getPageNo() - 1) * paging.getPageSize());
		
		List<Map<String, Object>> resultList = mypageDao.selectRsvHist(paging);
		for(Map<String, Object> rsv : resultList){
			String rsvSt = MapUtils.getString(rsv, "RSV_ST");
			if(rsvSt.equals("R")){
				String rsvDt = MapUtils.getString(rsv, "RSV_DT");
				long diff = Utils.diffTwoDate(rsvDt, Utils.getDiffDate(0));
				
				int cancelCms = 0;
				int cancelAmnt = MapUtils.getIntValue(rsv, "GET_AMNT");
				if(diff <= 0){
					cancelCms = 3000;
					cancelAmnt = cancelAmnt - cancelCms;
				}
				rsv.put("cancelCms", cancelCms);
				rsv.put("cancelAmnt", cancelAmnt);
			}
		}
		
		return resultList;
	}

	public int selectRsvCnt(Paging paging) {
		return mypageDao.selectRsvCnt(paging);
	}

	public List<Map<String, Object>> selectReturnBanks() {
		return mypageDao.selectReturnBanks();
	}
}
