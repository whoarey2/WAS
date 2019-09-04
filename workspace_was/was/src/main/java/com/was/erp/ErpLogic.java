package com.was.erp;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ErpLogic {

	@Autowired
	ErpDao erpDao;
	
	public void erpLogin(Map<String, Object> pMap) {

		erpDao.erpLogin(pMap);
	}

}
