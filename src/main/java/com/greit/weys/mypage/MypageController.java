package com.greit.weys.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

import com.greit.weys.common.Paging;
import com.greit.weys.common.Utils;
import com.greit.weys.config.UserVO;
import com.greit.weys.main.MainService;
import com.greit.weys.rsv.RsvVO;

@Controller
public class MypageController {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private MypageService mypageService;
	@Autowired
	private MainService mainService;

	/**
	 * 내정보 페이지
	 */
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public String accountPage(HttpServletRequest request, HttpServletResponse response, Model model) {


		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		if(userVO == null){
			return "redirect:/login";
		}

		MypageVO info = mypageService.selectUsrInfo(userVO.getUsrId());
		model.addAttribute("info", info);
		model.addAttribute("userVO", userVO);
		model.addAttribute("subTitle", "left_account");
		logger.info("===================================== END =====================================");
		return "mypage/profile";
	}

	/**
	 * 비밀번호 변경
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/changePwd", method=RequestMethod.POST)
	public Map<String, Object> changePwd(HttpServletRequest req, HttpServletResponse res, @RequestBody MypageVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO == null){
			return null;
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			reqVO.setUsrId(userVO.getUsrId());
			int resCnt = mypageService.updateUserPwd(reqVO);
			if(resCnt < 1){
				resultMap.put("res", "fail");
			} else {
				resultMap.put("res", "success");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}

	/**
	 * 이메일 변경
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/changeEmail", method=RequestMethod.POST)
	public Map<String, Object> changeEmail(HttpServletRequest req, HttpServletResponse res, @RequestBody MypageVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO == null){
			return null;
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			reqVO.setUsrId(userVO.getUsrId());
			int resCnt = mypageService.updateUserEmail(reqVO);
			if(resCnt < 1){
				resultMap.put("res", "fail");
			} else {
				resultMap.put("res", "success");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}

	/**
	 * 휴대전화 변경
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/changeTel", method=RequestMethod.POST)
	public Map<String, Object> changeTel(HttpServletRequest req, HttpServletResponse res, @RequestBody MypageVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO == null){
			return null;
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			reqVO.setUsrId(userVO.getUsrId());
			int resCnt = mypageService.updateUserTel(reqVO);
			if(resCnt < 1){
				resultMap.put("res", "fail");
			} else {
				resultMap.put("res", "success");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}
	
	/**
	 * 휴대전화 변경
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/signout", method=RequestMethod.POST)
	public Map<String, Object> signout(HttpServletRequest req, HttpServletResponse res, @RequestBody MypageVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO == null){
			return null;
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			reqVO.setUsrId(userVO.getUsrId());
			int resCnt = mypageService.updateUserSignout(reqVO);
			if(resCnt < 1){
				resultMap.put("res", "fail");
			} else {
				HttpSession session = req.getSession();
				session.invalidate();
				resultMap.put("res", "success");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}
	
	/**
	 * 실명인증 
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/checkIdentified", method=RequestMethod.POST)
	public Map<String, Object> checkIdentified(HttpServletRequest req, HttpServletResponse res, @RequestBody MypageVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO == null){
			return null;
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			reqVO.setUsrId(userVO.getUsrId());
			int resCnt = mypageService.updateUserIdentified(reqVO);
			if(resCnt < 1){
				resultMap.put("res", "fail");
			} else {
				resultMap.put("res", "success");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}
	
	/**
	 * 쿠폰함 페이지
	 */
	@RequestMapping(value = "/account/coupon")
	public String couponPage(@ModelAttribute("paging") Paging paging, HttpServletRequest request, HttpServletResponse response, Model model) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		if(userVO == null){
			return "redirect:/login";
		}

		paging.setUsrId(userVO.getUsrId());
		List<CouponVO> couponList = mypageService.selectCouponInfo(paging);
		int totalCnt = mypageService.selectCouponCnt(paging);
		paging.setTotalCount(totalCnt);

		MypageVO info = mypageService.selectUsrInfo(userVO.getUsrId());
		model.addAttribute("info", info);
		model.addAttribute("paging", paging);
		model.addAttribute("userVO", userVO);
		model.addAttribute("couponList", couponList);
		model.addAttribute("subTitle", "left_coupon");
		logger.info("===================================== END =====================================");
		return "mypage/coupon";
	}

	/**
	 * 실명인증 
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/submitCoupon", method=RequestMethod.POST)
	public Map<String, Object> submitCoupon(HttpServletRequest req, HttpServletResponse res, @RequestBody CouponVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO == null){
			return null;
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			reqVO.setUsrId(userVO.getUsrId());
			int resCnt = mypageService.updateCoupon(reqVO);
			if(resCnt < 1){
				resultMap.put("res", "fail");
				if(resCnt == -1){
					resultMap.put("msg", "존재하지않는 쿠폰입니다.");
				} else if(resCnt == -2){
					resultMap.put("msg", "이미 등록된 쿠폰입니다.");
				} else if(resCnt == -3){
					resultMap.put("msg", "이미 사용 마감된 쿠폰입니다.");
				} else if(resCnt == -10){
					resultMap.put("msg", "기간이 종료된 쿠폰입니다.");
				} else {
					resultMap.put("msg", "고객 센터로 문의주세요.");
				}
			} else {
				resultMap.put("res", "success");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}

	/**
	 * 알림설정 페이지
	 */
	@RequestMapping(value = "/account/notification")
	public String notiPage(HttpServletRequest request, HttpServletResponse response, Model model) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		if(userVO == null){
			return "redirect:/login";
		}
		
		Map<String, Object> notiInfo = mypageService.selectNotiInfo(userVO.getUsrId());

		MypageVO info = mypageService.selectUsrInfo(userVO.getUsrId());
		model.addAttribute("info", info);
		model.addAttribute("userVO", userVO);
		model.addAttribute("notiInfo", notiInfo);
		model.addAttribute("subTitle", "left_noti");
		logger.info("===================================== END =====================================");
		return "mypage/noti";
	}

	/**
	 * 실명인증 
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/updateNoti", method=RequestMethod.POST)
	public Map<String, Object> updateNoti(HttpServletRequest req, HttpServletResponse res, @RequestBody MypageVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());
		
		UserVO userVO = (UserVO) req.getSession().getAttribute("login");
		if(userVO == null){
			return null;
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			reqVO.setUsrId(userVO.getUsrId());
			int resCnt = mypageService.updateNoti(reqVO);
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
	 * 쿠폰함 페이지
	 */
	@RequestMapping(value = "/account/transactions")
	public String rsvPage(@ModelAttribute("paging") Paging paging, HttpServletRequest request, HttpServletResponse response, Model model) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		if(userVO == null){
			return "redirect:/login";
		}
		paging.setUsrId(userVO.getUsrId());
		List<Map<String, Object>> rsvList = mypageService.selectRsvHist(paging);
		int totalCnt = mypageService.selectRsvCnt(paging);
		paging.setTotalCount(totalCnt);
		
		List<Map<String, Object>> bankList = mypageService.selectReturnBanks();

		MypageVO info = mypageService.selectUsrInfo(userVO.getUsrId());
		model.addAttribute("info", info);
		model.addAttribute("userVO", userVO);
		model.addAttribute("paging", paging);
		model.addAttribute("rsvList", rsvList);
		model.addAttribute("bankList", bankList);
		model.addAttribute("subTitle", "left_transactions");
		logger.info("===================================== END =====================================");
		return "mypage/transactions";
	}

	/**
	 * 로그아웃 
	 * @param req
	 * @param res
	 * @return 사용자 로그아웃 세션정리  
	 */
	@RequestMapping(value = "/logout")
	@ResponseBody
	public boolean logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.info("===================================== START : " + Utils.getTodayDate("yyyy.MM.dd HH:mm:ss") + " ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		HttpSession session = request.getSession();

		session.invalidate();
		String context = request.getContextPath();
		response.sendRedirect(context + "/");
		logger.info("===================================== END =====================================");
		return true;
	}

	/**
	 * 내정보 페이지
	 */
	@RequestMapping(value = "/guest")
	public String guestPage(HttpServletRequest request, HttpServletResponse response, Model model, @ModelAttribute RsvVO rsvVO) {


		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		if(userVO != null){
			return "redirect:/";
		}
		
		if(rsvVO.getUsrTel() != null){
			model.addAttribute("rsvVO", rsvVO);
		}

		List<Map<String, Object>> bankList = mypageService.selectReturnBanks();
		model.addAttribute("bankList", bankList);

		logger.info("===================================== END =====================================");
		return "rsv/guest";
	}
	
}
