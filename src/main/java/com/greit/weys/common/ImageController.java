package com.greit.weys.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ImageController {

	protected Logger logger = LoggerFactory.getLogger(getClass());

	@Value("${UPLOAD.PATH}")
	private String UPLOAD_ROOT_PATH;

	/**
	 * 이미지 보기
	 * 
	 * @throws Exception
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/imgView/{dir}/{path}")
	@ResponseBody
	public void streamImageView(HttpServletRequest request, HttpServletResponse response, @PathVariable String dir,
			@PathVariable String path) {

		logger.info("===================================== START ===================================");
		logger.info("url ::: " + request.getRequestURL());
		response.setContentType("text/plain;charset=UTF-8");

		try {
			if (dir == null || dir.equals("") || path == null || path.equals("")){
				return;
			}
			
			StringTokenizer st = new StringTokenizer(request.getRequestURI().toString(), ".");
			String body = st.nextToken();
			String format = st.nextToken();
	
			String filePath = null;
			filePath = UPLOAD_ROOT_PATH + dir + File.separator + path + "." + format;
			logger.info("filePath ::: " + filePath);

			File f = new File(filePath);
			if (f.exists()) {
				InputStream is = new FileInputStream(f);
				IOUtils.copy(is, response.getOutputStream());
			} else {
				logger.info("errir ::: 이미지가 존재하지 않습니다. ::: " + dir + File.separator + path + "." + format);
			}
			response.flushBuffer();
		} catch (Exception e) {
			logger.error("error ::: " + e.getMessage());
		}
		logger.info("===================================== END ===================================");
	}


}
