package com.greit.weys.partner;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.greit.weys.main.MainService;
import com.greit.weys.mypage.MypageService;
import com.greit.weys.rsv.RsvService;
import com.greit.weys.rsv.RsvVO;

@Controller
@RequestMapping("/p")
public class PartnerController {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private PartnerService pService;
	@Autowired
	private MainService mainService;
	@Autowired
	private RsvService rsvService;
	@Autowired
	private MypageService mypageService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/{copCd}")
	public String accountPage(HttpServletRequest request, HttpServletResponse response, Model model, @PathVariable String copCd) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		List<Map<String, Object>> unitList = mainService.selectUnit();
		PartnerVO info = pService.selectPartnerInfo(copCd);
		if(info == null){
			return "redirect:/";
		}
		
		request.getSession().setAttribute("weysPses", info);

		model.addAttribute("info", info);
		model.addAttribute("unitList", unitList);
		logger.info("===================================== END =====================================");
		return "partner/p_home";
	}

	/**
	 * 예약 상세 화면
	 * @param rsvVO
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/rsv", method=RequestMethod.POST)
	public String rsvPage(HttpServletRequest request, HttpServletResponse response, Model model, @ModelAttribute RsvVO rsvVO) throws Exception {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		logger.info("req ::: " + rsvVO.toString());
		
		PartnerVO info = (PartnerVO) request.getSession().getAttribute("weysPses");
		if(info == null){
			return "redirect:/";
		}

		Date endTm = (Date) request.getSession().getAttribute("weysRsvTmSt");
		if(endTm == null){
			Calendar cal = Calendar.getInstance();
			Date dt = new Date();
			cal.setTime(dt);
			cal.add(Calendar.MINUTE, 30);
			Date d = cal.getTime();
			
			request.getSession().setAttribute("weysRsvTmSt", d);
		} else {
			model.addAttribute("ses", "N");
			request.getSession().removeAttribute("weysRsvTmSt");
			return "partner/p_rsv";
		}
		
		String chk = "N";
		String mem = "N";
		
		List<Map<String, Object>> storeList = rsvService.selectStoreList();
		List<Map<String, Object>> bankList = rsvService.selectVBankList();
		List<Map<String, Object>> paperList = rsvService.selectUnitPaper(rsvVO.getUnitCd());

		model.addAttribute("ses", "Y");
		model.addAttribute("mem", mem);
		model.addAttribute("chk", chk);
		model.addAttribute("info", info);
		model.addAttribute("rsvVO", rsvVO);
		model.addAttribute("bankList", bankList);
		model.addAttribute("paperList", paperList);
		model.addAttribute("storeList", storeList);
		logger.info("===================================== END =====================================");
		return "partner/p_rsv";
	}

	/**
	 * 내정보 페이지
	 */
	@RequestMapping(value = "/guest")
	public String guestPage(HttpServletRequest request, HttpServletResponse response, Model model, @ModelAttribute RsvVO rsvVO) {


		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		PartnerVO info = (PartnerVO) request.getSession().getAttribute("weysPses");
		if(info == null){
			return "redirect:/";
		}
		
		if(rsvVO.getUsrTel() != null){
			model.addAttribute("rsvVO", rsvVO);
		}

		List<Map<String, Object>> bankList = mypageService.selectReturnBanks();
		model.addAttribute("bankList", bankList);
		model.addAttribute("info", info);

		logger.info("===================================== END =====================================");
		return "partner/p_guest";
	}
}
