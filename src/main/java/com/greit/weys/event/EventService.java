package com.greit.weys.event;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.apache.commons.collections.MapUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greit.weys.common.Paging;
import com.greit.weys.common.Utils;

@Service
public class EventService {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private EventDao eventDao;
	
	public int selectUsrIdByAk(String ak) {
		return eventDao.selectUsrIdByAk(ak);
	}

	public EventVO selectEvent(String eventId) {

		EventVO info = eventDao.selectEvent(eventId);
		List<String> imgList = new ArrayList<String>();
		if(info.getEventImg() == null || info.getEventImg().equals("")){
			info.setImgList(null);
		} else if (info.getEventImg().contains(",")){
			StringTokenizer st = new StringTokenizer(info.getEventImg(), ",");
			
			while(st.hasMoreTokens()){
				imgList.add(st.nextToken());
			}
			info.setImgList(imgList);
		} else {
			imgList.add(info.getEventImg());
			info.setImgList(imgList);
		}
		return info;
	}

	public int insertJoinEvent(Map<String, Object> reqMap) {

		/**
		 * 이벤트 기간 확인
		 */
		
		int dayCnt = eventDao.checkEventDay(reqMap);
		if(dayCnt == 0){
			return -100;
		}

		/**
		 * 이벤트 참여했는지 확인
		 */
		int res = eventDao.checkEventJoin(reqMap);
		
		if(res == 0){
			/**
			 * 이벤트 참여 가능한지 확인
			 */
			Map<String, Object> eventMap = eventDao.selectEventInfo(MapUtils.getString(reqMap, "eventId"));

			int eventLimit = MapUtils.getIntValue(eventMap, "EVENT_LIMIT");
			int eventCnt = MapUtils.getIntValue(eventMap, "EVENT_CNT");
			
			/**
			 * 이벤트 참여 인원 꽉참
			 */
			if(eventLimit > 0 && eventLimit == eventCnt){
				return -10;
			}
					
			String eventTp = MapUtils.getString(eventMap, "EVENT_TP");
			
			if(eventTp.equals("D")){
				int couponId = MapUtils.getIntValue(eventMap, "COUPON_ID");
				Map<String, Object> couponMap = eventDao.selectCouponInfo(couponId);
				
				String periodTp = MapUtils.getString(couponMap, "PERIOD_TP");
				String dueDt = "";
				if(periodTp.equals("P")){
					int period = MapUtils.getIntValue(couponMap, "MEMBER_PERIOD");
					dueDt = Utils.getDiffMonth(period);
				} else {
					dueDt = MapUtils.getString(couponMap, "END_DT");
				}
				reqMap.put("dueDt", dueDt);
				reqMap.put("couponId", couponId);
				
				eventDao.insertDeliverCoupon(reqMap);
				
			} else if(eventTp.equals("J")){
				int couponId = MapUtils.getIntValue(eventMap, "COUPON_ID");
				Map<String, Object> couponMap = eventDao.selectCouponInfo(couponId);
				
				String couponTp = MapUtils.getString(couponMap, "COUPON_TP");
				if(couponTp.equals("P")){
					reqMap.put("couponId", couponId);
					eventDao.insertCouponEvent(reqMap);
				}
				
			} else {
				/**
				 * 기타 다른 이벤트...
				 */
				return 0;
			}
			res = eventDao.insertEventJoin(reqMap);
			
		} else {
			/**
			 * 이벤트 이미 참여중
			 */
			return -1;
		}
		
		return res;
	}

	public List<EventVO> selectEventList(Paging paging) {
		paging.setSearchPage((paging.getPageNo() - 1) * paging.getPageSize());
		return eventDao.selectEventList(paging);
	}

	public int selectEventListCnt(Paging paging) {
		return eventDao.selectEventListCnt(paging);
	}

	public String selectFrdCd(int usrId) {
		return eventDao.selectFrdCd(usrId);
	}

	public String selectServerSt(String type) {
		return eventDao.selectServerSt(type);
	}

}
