package com.greit.weys.info;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/info")
public class InfoController {

	protected Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * 수령장소 안내
	 */
	@RequestMapping(value = "/pickup", method = RequestMethod.GET)
	public String pickup(HttpServletRequest request, HttpServletResponse response, Model model) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		logger.info("===================================== END =====================================");
		return "info/pickup";
	}

	/**
	 * 수수료 안내
	 */
	@RequestMapping(value = "/fee", method = RequestMethod.GET)
	public String fee(HttpServletRequest request, HttpServletResponse response, Model model) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		logger.info("===================================== END =====================================");
		return "info/fee";
	}

	/**
	 * 개인정보취급방침 안내
	 */
	@RequestMapping(value = "/privacy", method = RequestMethod.GET)
	public String privacy(HttpServletRequest request, HttpServletResponse response, Model model) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		logger.info("===================================== END =====================================");
		return "info/privacy";
	}

	/**
	 * 이용약관 안내
	 */
	@RequestMapping(value = "/terms", method = RequestMethod.GET)
	public String terms(HttpServletRequest request, HttpServletResponse response, Model model) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		
		logger.info("===================================== END =====================================");
		return "info/terms";
	}

}
