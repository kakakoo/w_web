package com.greit.weys.partner;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PartnerService {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired
	private PartnerDao partnerDao;
	
	public PartnerVO selectPartnerInfo(String copCd) {
		return partnerDao.selectPartnerInfo(copCd);
	}
	
}
