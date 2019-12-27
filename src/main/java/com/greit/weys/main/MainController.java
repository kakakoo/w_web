package com.greit.weys.main;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greit.weys.config.UserVO;
import com.greit.weys.partner.PartnerVO;

@Controller
public class MainController {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private MainService mainService;
	private String referUrl = "";

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String accountPage(HttpServletRequest request, HttpServletResponse response, Model model) {

		PartnerVO info = (PartnerVO) request.getSession().getAttribute("weysPses");
		if(info != null){
			return "redirect:/p/" + info.getCopCd();
		}
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		List<Map<String, Object>> unitList = mainService.selectUnit();

		model.addAttribute("userVO", userVO);
		model.addAttribute("unitList", unitList);
		return "home";
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public String downloadpage(HttpServletRequest request, HttpServletResponse response, Model model) {


		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		logger.info("===================================== END =====================================");
		return "login/download";
	}
	
	/**
	 * 로그인 페이지
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(HttpServletRequest request, HttpServletResponse response, Model model) {


		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		String url = request.getHeader("referer");
		
		if(userVO != null){
			return "redirect:/";
		}

		String id = "";
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("LWOEGYISN")) {
					id = cookies[i].getValue();
				}
			}
		}

		model.addAttribute("id", id);
		logger.info("===================================== END =====================================");
		return "login/login";
	}
	
	/**
	 * 로그인
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/login", method=RequestMethod.POST)
	public Map<String, Object> login(HttpServletRequest req, HttpServletResponse res, @RequestBody LoginVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());

		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		try{
			int resCnt = mainService.updateCheckLogin(reqVO, req, res);
			if(resCnt == -1 || resCnt == -10){
				resultMap.put("res", "fail");
				resultMap.put("msg", "전화번호 및 비밀번호를 확인해주세요.");
			} else {
				resultMap.put("res", "success");
				resultMap.put("refer", referUrl);
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}

	/**
	 * 비밀번호 재설정 화면
	 */
	@RequestMapping(value = "/reset_password", method = RequestMethod.GET)
	public String resetPwdPage(HttpServletRequest request, HttpServletResponse response, Model model) {


		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		
		if(userVO != null){
			return "redirect:/";
		}
		logger.info("===================================== END =====================================");
		return "login/reset_pwd";
	}

	/**
	 * 휴대전화 인증
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/sendCertify", method=RequestMethod.POST)
	public Map<String, Object> sendCertify(HttpServletRequest req, HttpServletResponse res, @RequestBody LoginVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());

		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			resultMap = mainService.updateCertifyNum(reqVO);
			if(resultMap == null){
				resultMap = new HashMap<String, Object>();
				resultMap.put("res", "fail");
				resultMap.put("msg", "존재하지 않는 사용자입니다.");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
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
	@RequestMapping(value = "/resetPwd", method=RequestMethod.POST)
	public Map<String, Object> resetPwd(HttpServletRequest req, HttpServletResponse res, @RequestBody LoginVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());

		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			int resCnt = mainService.updateUserPwd(reqVO);
			if(resCnt == -1 || resCnt == -10){
				resultMap.put("res", "fail");
				resultMap.put("msg", "전화번호 및 비밀번호를 확인해주세요.");
			} else {
				resultMap.put("res", "success");
				resultMap.put("refer", referUrl);
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}
	

	/**
	 * 회원가입 페이지
	 */
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signupPage(HttpServletRequest request, HttpServletResponse response, Model model) {


		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		if(userVO != null){
			return "redirect:/";
		}

		return "redirect:/";

//		logger.info("===================================== END =====================================");
//		return "login/signup";
	}

	/**
	 * 회원가입 페이지
	 */
	@RequestMapping(value = "/signupDone", method = RequestMethod.GET)
	public String signupDone(HttpServletRequest request, HttpServletResponse response, Model model) {


		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		UserVO userVO = (UserVO) request.getSession().getAttribute("login");
		
		if(userVO != null){
			return "redirect:/";
		}

		logger.info("===================================== END =====================================");
		return "login/signupDone";
	}

	/**
	 * 휴대전화 인증
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/signup", method=RequestMethod.POST)
	public Map<String, Object> signup(HttpServletRequest req, HttpServletResponse res, @RequestBody LoginVO reqVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqVO.toString());

		Map<String, Object> resultMap = new HashMap<String, Object>();
		try{
			int resCnt = mainService.updateSignUp(reqVO);
			if(resCnt == -1 || resCnt == -10){
				resultMap.put("res", "fail");
				resultMap.put("msg", "전화번호 및 비밀번호를 확인해주세요.");
			} else if(resCnt == -2){
				resultMap.put("res", "fail");
				resultMap.put("msg", "중복된 이메일이 존재합니다.");
			} else {
				resultMap.put("res", "success");
				resultMap.put("refer", referUrl);
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqVO, null);
		}
		
		logger.info("===================================== END =====================================");
		return resultMap;
	}

	@RequestMapping(value = "/info/{store}")
	public String info(HttpServletRequest request, HttpServletResponse response, Model model, @PathVariable String store) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());

		
		model.addAttribute("store", store);
		logger.info("===================================== END =====================================");
		return "rsv/info";
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {

		return "faq";
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/license", method = RequestMethod.GET)
	public String license(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {

		return "license";
	}

	/**
	 * 설문 조사 페이지
	 */
	@RequestMapping(value = "/survey/{rsvNo}", method = RequestMethod.GET)
	public String survey(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response
			, @PathVariable String rsvNo) {

		String usrNm = mainService.getUsrNm(rsvNo);
		
		if(usrNm == null){
			/**
			 * 존재하지 않는 예약
			 */
			model.addAttribute("txt1", "종료된 설문입니다.");
			model.addAttribute("txt2", "본 링크로 연결된 설문조사는 이미 종료되었습니다.");
			return "survey_done";
		} else if (usrNm.equals("A")){
			/**
			 * 이미 설문조사 한 고객
			 */
			model.addAttribute("txt1", "등록된 설문입니다.");
			model.addAttribute("txt2", "본 링크로 연결된 설문조사는 이미 완료하셨습니다.");
			return "survey_done";
		}

		model.addAttribute("usrNm", usrNm);
		model.addAttribute("rsvNo", rsvNo);
		return "survey";
	}

	/**
	 * 설문 조사 등록
	 * @param req
	 * @param res
	 * @param reqMap
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/survey", method=RequestMethod.POST)
	public Map<String, Object> submitSurvey(HttpServletRequest req, HttpServletResponse res, @RequestBody Map<String, Object> reqMap) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + req.getRequestURL());
		logger.info("req ::: " + reqMap.toString());

		Map<String, Object> resultMap = new HashMap<>();
		
		try{
			int rsvCnt = mainService.insertSurvey(reqMap);
			if(rsvCnt == 0){
				resultMap.put("result", "fail");
			} else {
				resultMap.put("result", "success");
			}
		} catch (Exception e) {
			mainService.insertErrLog(e, req, reqMap, null);
		}
		
		logger.info("result ::: " + resultMap.toString());
		logger.info("===================================== END =====================================");
		return resultMap;
	}

}
