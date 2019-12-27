package com.greit.weys.rsv;

import java.util.Calendar;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greit.weys.config.UserVO;
import com.greit.weys.main.MainService;
import com.greit.weys.mypage.MypageService;
import com.greit.weys.mypage.MypageVO;
import com.greit.weys.partner.PartnerVO;

@Controller
@RequestMapping("/rsv")
public class RsvController {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private RsvService rsvService;
	@Autowired
	private MainService mainService;
	@Autowired
	private MypageService mypageService;

	/**
	 * 예약 상세 화면
	 * @param rsvVO
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "", method=RequestMethod.POST)
	public String rsvPage(HttpServletRequest request, HttpServletResponse response, Model model, @ModelAttribute RsvVO rsvVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		logger.info("req ::: " + rsvVO.toString());
		
		model.addAttribute("ses", "N");
		return "rsv/rsv";

//		Date endTm = (Date) request.getSession().getAttribute("weysRsvTmSt");
//		if(endTm != null){
//			Date dt = new Date();
//			
//			long checkTm = endTm.getTime() - dt.getTime();
//			if(checkTm > 0){
//				model.addAttribute("ses", "N");
//				request.getSession().removeAttribute("weysRsvTmSt");
//				return "rsv/rsv";
//			}
//		}
//		
//		Calendar cal = Calendar.getInstance();
//		Date dt = new Date();
//		cal.setTime(dt);
//		cal.add(Calendar.MINUTE, 30);
//		Date d = cal.getTime();
//		request.getSession().setAttribute("weysRsvTmSt", d);
//		
//		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
//		MypageVO info = null;
//		String chk = "N";
//		String mem = "N";
//		if(userVO != null){
//			mem = "Y";
//			info = mypageService.selectUsrInfo(userVO.getUsrId());
//			if(info.getUsrNm() != null && info.getUsrNm() != ""){
//				chk = "Y";
//			}
//		}
//		
//		List<Map<String, Object>> storeList = rsvService.selectStoreList();
//		List<Map<String, Object>> bankList = rsvService.selectVBankList();
//		List<Map<String, Object>> paperList = rsvService.selectUnitPaper(rsvVO.getUnitCd());
//
//		model.addAttribute("ses", "Y");
//		model.addAttribute("mem", mem);
//		model.addAttribute("chk", chk);
//		model.addAttribute("info", info);
//		model.addAttribute("rsvVO", rsvVO);
//		model.addAttribute("userVO", userVO);
//		model.addAttribute("bankList", bankList);
//		model.addAttribute("paperList", paperList);
//		model.addAttribute("storeList", storeList);
//		logger.info("===================================== END =====================================");
//		return "rsv/rsv";
	}

	@ResponseBody
	@RequestMapping(value = "/store", method=RequestMethod.POST)
	public Map<String, Object> rsvList(HttpServletRequest req, HttpServletResponse res, @RequestBody Map<String, Object> reqMap) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqMap.toString());

		Map<String, Object> resultMap = new HashMap<>();
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		try{
			List<RsvStoreVO> rsvList = rsvService.selectUnitRsvList(MapUtils.getString(reqMap, "unitCd"));
			resultMap.put("dataList", rsvList);
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqMap, userVO);
		}
		
		logger.info("result ::: " + resultMap.toString());
		logger.info("===================================== END =====================================");
		return resultMap;
	}
	
	/**
	 * 입금전 취소 
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/beforeCancel", method=RequestMethod.POST)
	public Map<String, Object> beforeCancel(HttpServletRequest req, HttpServletResponse res, @RequestBody RsvVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO == null && reqVO.getUsrTel() == null){
			return null;
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			if(userVO != null){
				reqVO.setUsrId(userVO.getUsrId());
			} else {
				reqVO.setUsrId(0);
			}
			int resCnt = rsvService.updateBeforeCancel(reqVO);
			if(resCnt == 1){
				resultMap.put("res", "success");
			} else {
				resultMap.put("res", "fail");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}
	
	/**
	 * 환불신청
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/cancel", method=RequestMethod.POST)
	public Map<String, Object> cancelRsv(HttpServletRequest req, HttpServletResponse res, @RequestBody RsvVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO == null && reqVO.getUsrTel() == null){
			return null;
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			if(userVO != null){
				reqVO.setUsrId(userVO.getUsrId());
			} else {
				reqVO.setUsrId(0);
			}
			int resCnt = rsvService.updateRsvCancel(reqVO);
			if(resCnt == 1){
				resultMap.put("res", "success");
			} else {
				resultMap.put("res", "fail");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}

	/**
	 * 통화 정보 가져오기
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/unit", method=RequestMethod.POST)
	public Map<String, Object> getUnit(HttpServletRequest req, HttpServletResponse res, @RequestBody RsvVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			if(userVO != null)
				reqVO.setUsrId(userVO.getUsrId());
			resultMap = rsvService.selectGetUnit(reqVO);
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}

	/**
	 * 예약하기
	 * @param req
	 * @param res
	 * @param reqVO
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/receive", method=RequestMethod.POST)
	public Map<String, Object> receiveRsv(HttpServletRequest req, HttpServletResponse res, @RequestBody RsvVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());

		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO != null){
			reqVO.setUsrId(userVO.getUsrId());
		} else {
			reqVO.setUsrId(0);
			PartnerVO ptnr = (PartnerVO) req.getSession().getAttribute("weysPses");
			if(ptnr != null){
				reqVO.setCopId(ptnr.getCopId());
			}
		}
		
		Map<String, Object> resultMap = new HashMap<>();
		try{
			int resCnt = rsvService.insertRsv(reqVO);
			
			if(resCnt == 1){
				resultMap.put("res", "success");
				resultMap.put("rsvNo", reqVO.getRsvNo());
				resultMap.put("mem", "Y");
				if(userVO == null){
					resultMap.put("usrTel", reqVO.getUsrTel());
					resultMap.put("mem", "N");
				}
				req.getSession().removeAttribute("weysRsvTmSt");
			} else if(resCnt == -2){
				resultMap.put("res", "fail");
				resultMap.put("val", resCnt);
				resultMap.put("msg", "실명인증에 실패하였습니다.");
			} else if(resCnt == -9){
				resultMap.put("res", "fail");
				resultMap.put("val", resCnt);
				resultMap.put("msg", "하루 예약한도를 초과했습니다. 고객센터로 문의주세요.");
			} else if(resCnt == -10){
				resultMap.put("res", "fail");
				resultMap.put("val", resCnt);
				resultMap.put("msg", "사용할 수 없는 쿠폰입니다.");
			} else {
				resultMap.put("res", "fail");
				resultMap.put("val", resCnt);
				resultMap.put("msg", "예약에 실패하였습니다. 다시 시도해 주세요.");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, userVO);
		}

		logger.info("===================================== END =====================================");
		return resultMap;
	}

	/**
	 * 예약하기
	 * @param req
	 * @param res
	 * @param reqVO
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/guest", method=RequestMethod.POST)
	public Map<String, Object> guest(HttpServletRequest req, HttpServletResponse res, @RequestBody RsvVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());

		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO != null){
			reqVO.setUsrId(userVO.getUsrId());
		}
		
		Map<String, Object> resultMap = new HashMap<>();
		try{
			resultMap = rsvService.selectRsvGuest(reqVO);
			
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, userVO);
		}

		logger.info("===================================== END =====================================");
		return resultMap;
	}
	
}
