package com.greit.weys.event;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.greit.weys.common.Paging;

@Repository
public interface EventDao {

	int selectUsrIdByAk(String ak);

	EventVO selectEvent(String eventId);

	int checkEventDay(Map<String, Object> reqMap);

	int checkEventJoin(Map<String, Object> reqMap);

	Map<String, Object> selectEventInfo(String string);

	Map<String, Object> selectCouponInfo(int couponId);

	void insertDeliverCoupon(Map<String, Object> reqMap);

	void insertCouponEvent(Map<String, Object> reqMap);

	int insertEventJoin(Map<String, Object> reqMap);

	List<EventVO> selectEventList(Paging paging);

	int selectEventListCnt(Paging paging);

	String selectFrdCd(int usrId);

	String selectServerSt(String type);

}
