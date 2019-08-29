package com.was.erp;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ErpLogic {

	@Autowired
	ErpDao erpDao;
	
	public String erpLogin(Map<String, Object> pMap) {

		String result = erpDao.erpLogin(pMap);
		return result;
	}

}
