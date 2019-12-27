package com.greit.weys.main;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface MainDao {

	void insertErrLog(Map<String, Object> errMap);

	Map<String, Object> selectUserInfo(LoginVO reqVO);

	String selectUsrId(LoginVO reqVO);

	int updateUsrPwd(LoginVO reqVO);

	int selectTelCnt(LoginVO reqVO);

	int selectEmailCnt(LoginVO reqVO);

	int checkFrdCd(String frdCd);

	int insertUserInfo(LoginVO reqVO);

	int updateUserPwAk(LoginVO reqVO);

	int selectUsrTelCnt(String usrId);

	List<Integer> selectJoinCouponList(String code);

	void insertJoinCoupon(Map<String, Object> joinMap);

	int selectMemberBarcodeCnt(String barcode);

	int insertMemberInfo(Map<String, Object> insertMap);

	List<Map<String, Object>> selectUnit();

	int selectCheckSurvey(String rsvNo);

	int selectCheckRsv(String rsvNo);

	String selectUsrNm(Map<String, Object> reqMap);

	int insertSurvey(Map<String, Object> reqMap);

	int selectFrdId(String targetFrdCd);

	int insertFrdCoupon(Map<String, Object> frdMap);

	int selectFrdCnt(int targetUsrId);

	void insertFrdMap(Map<String, Object> frdMap);

}
