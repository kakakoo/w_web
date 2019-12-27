package com.greit.weys.rsv;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface RsvDao {

	int updateRsvCancelBefore(RsvVO reqVO);

	Map<String, Object> selectCancelEmail(RsvVO reqVO);

	void updateCouponReturn(int couponId);

	void insertKakaoLog(Map<String, Object> talk);

	int updateCancelRsv(RsvVO reqVO);

	void updateRsvGrpCancelLog(int rsvId);

	RsvUnitVO selectRsvUnit(RsvVO reqVO);

	double selectUSDRate();

	List<Map<String, Object>> selectRsvTodayHist(Map<String, Object> reqMap);

	String selectUnitHalf(String unitCd);

	List<Map<String, Object>> selectEventBonus(RsvVO reqVO);

	List<Map<String, Object>> selectStoreList();

	List<Map<String, Object>> selectVBankList();

	List<Map<String, Object>> selectUnitPaper(String unitCd);

	List<RsvStoreVO> selectUnitStoreList(String unitCd);

	String selectCheckClose(Map<String, Object> reqMap);

	Map<String, Object> selectRsvStoreTime(Map<String, Object> reqMap);

	int selectCheckRsvNo(String rsvNo);

	int insertRsvInfo(RsvVO reqVO);

	void updateBonusCouponUsed(RsvVO reqVO);

	String selectAddrDetail(int storeId);

	String selectUnitNm(String unitCd);

	void insertRsvLog(Map<String, Object> logMap);

	int updateUsrCertify(Map<String, Object> reqMap);

	int updateGuestinfo(Map<String, Object> reqMap);

	Map<String, Object> selectRsvGuest(RsvVO reqVO);

	Map<String, Object> selectCheckTodayRsv(int storeId);

	Integer selectBrkTm(int storeId);

	Integer selectPastRsv(RsvVO reqVO);

	void insertRsvRetLog(int rsvId);

}
