package com.greit.weys.mypage;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.greit.weys.common.Paging;

@Repository
public interface MypageDao {

	MypageVO selectUsrInfo(Map<String, Object> reqMap);

	String selectUsrPwd(MypageVO reqVO);

	int updateUserPwd(MypageVO reqVO);

	int updateUserEmail(MypageVO reqVO);

	int selectUsrTel(MypageVO reqVO);

	int updateUserTel(MypageVO reqVO);

	int updateUserSignout(MypageVO reqVO);

	void updateUserDeleteToken(int usrId);

	int updateUserSignout(int usrId);

	int updateUserIdentified(MypageVO reqVO);

	List<CouponVO> selectCouponInfo(Paging paging);

	int selectCouponCnt(Paging paging);

	Map<String, Object> selectCoupon(String couponCode);

	Map<String, Object> selectCouponInfoGroup(String couponCode);

	int checkCouponUsed(CouponVO reqVO);

	void insertCouponHist(Map<String, Object> couponInfo);

	void updateCouponUsed(String couponCode);

	Map<String, Object> selectNotiInfo(int usrId);

	int updateNoti(MypageVO reqVO);

	List<Map<String, Object>> selectRsvHist(Paging paging);

	int selectRsvCnt(Paging paging);

	List<Map<String, Object>> selectReturnBanks();

}
