package com.greit.weys.event;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.MapUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greit.weys.common.Paging;
import com.greit.weys.config.UserVO;
import com.greit.weys.main.MainService;

@Controller
@RequestMapping("/event")
public class EventController {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private EventService eventService;
	@Autowired
	private MainService mainService;

	/**
	 * 이벤트 페이지
	 */
	@RequestMapping(value = "")
	public String eventPage(@ModelAttribute("paging") Paging paging, HttpServletRequest request, HttpServletResponse response, Model model) {


		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		int usrId = 0;
		if(userVO != null){
			usrId = userVO.getUsrId();
		}
		paging.setUsrId(usrId);
		List<EventVO> eventList = eventService.selectEventList(paging);
		int totalCnt = eventService.selectEventListCnt(paging);
		paging.setTotalCount(totalCnt);
		
		String frdEvent = eventService.selectServerSt("F");

		model.addAttribute("userVO", userVO);
		model.addAttribute("paging", paging);
		model.addAttribute("frdEvent", frdEvent);
		model.addAttribute("eventList", eventList);
		logger.info("===================================== END =====================================");
		return "event/event";
	}

	@RequestMapping(value = "/{eventId}")
	public String eventDetail(HttpServletRequest request, HttpServletResponse response, Model model
			, @PathVariable String eventId) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		String page = "event/web_detail";
		try{
			String web = request.getParameter("GREiT");
			
			int usrId = 0;
			String isWeb = "T";
			if(web == null){
				if(userVO == null){
					model.addAttribute("tag", 0);
				} else {
					model.addAttribute("tag", 1);
				}
			} else if (web.equals("true")) {
				String ak = request.getParameter("ak");
				if(!ak.equals("unknown")){
					usrId = eventService.selectUsrIdByAk(ak); 
				}
				isWeb = "F";
				userVO = new UserVO();
				userVO.setUsrId(usrId);
				page = "event/detail";
			}
			
			EventVO info = eventService.selectEvent(eventId);
			
			String btnTitle = "무료환전 보너스 받기";
			if(info.getEventTp().equals("E")){
				btnTitle = "환전 예약하러 가기";
			} else if(info.getEventTp().equals("D")){
				btnTitle = "외화배송료 무료쿠폰 받기";
			} else if(info.getEventTp().equals("J")){
				btnTitle = "쿠폰 받기";
			}

			model.addAttribute("web", isWeb);
			model.addAttribute("userVO", userVO);
			model.addAttribute("info", info);
			model.addAttribute("btnTitle", btnTitle);
		} catch (Exception e) {
			mainService.insertErrLog(e, request, null, userVO);
		}
		
		logger.info("===================================== END =====================================");
		return page;
	}

	/**
	 * 이벤트 등ㄹ혹
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/{eventId}", method=RequestMethod.POST)
	public Map<String, Object> joinEvent(HttpServletRequest req, HttpServletResponse res, @RequestBody Map<String, Object> reqMap
			, @PathVariable String eventId) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqMap.toString());
		
		Map<String, Object> resultMap = new HashMap<String, Object>();

		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		try{

			String web = MapUtils.getString(reqMap, "web");
			
			int resCnt = 0;
			if(userVO == null && web.equals("T")){
				resultMap.put("result", "fail");
				resultMap.put("msg", "로그인을 해주세요.");
			} else {
				reqMap.put("eventId", eventId);
				resCnt = eventService.insertJoinEvent(reqMap);
			}
			
			if(resCnt == -1){
				resultMap.put("result", "fail");
				resultMap.put("msg", "이미 참여하신 이벤트입니다.");
			} else if (resCnt == -10){
				resultMap.put("result", "fail");
				resultMap.put("msg", "더이상 참여할 수 없습니다.");
			}  else if (resCnt == -100){
				resultMap.put("result", "fail");
				resultMap.put("msg", "이벤트 기간이 종료되었습니다.");
			} else {
				resultMap.put("result", "success");
			}
			resultMap.put("web", web);
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqMap, userVO);
		}
		logger.info("result ::: " + resultMap.toString());
		logger.info("===================================== END =====================================");
		return resultMap;
	}
	
	/**
	 * 친구초대 페이지
	 */
	@RequestMapping(value = "/frd")
	public String frdPage(HttpServletRequest request, HttpServletResponse response, Model model) {
		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		if(userVO == null){
			model.addAttribute("loginSt", "N");
			return "event/frd";
		}
		
		String frdCd = eventService.selectFrdCd(userVO.getUsrId());

		model.addAttribute("frdCd", frdCd);
		model.addAttribute("userVO", userVO);
		model.addAttribute("loginSt", "Y");
		logger.info("===================================== END =====================================");
		return "event/frd";
	}
}
