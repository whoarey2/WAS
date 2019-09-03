package com.was.erp;

import java.util.Map;


public class ErpLogic {

	ErpDao erpDao;
	
	public String erpLogin(Map<String, Object> pMap) {
		erpDao = new ErpDao();
		String result = erpDao.erpLogin(pMap);
		return result;
	}

}
