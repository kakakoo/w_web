package com.greit.weys.partner;

import org.springframework.stereotype.Repository;

@Repository
public interface PartnerDao {

	PartnerVO selectPartnerInfo(String copCd);

}
