package com.was.erp;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ErpLogic {

	@Autowired
	ErpDao erpDao;
	
	public void empLogin(Map<String, Object> pMap) {

		erpDao.empLogin(pMap);
	}

	public void empSignUp(Map<String, Object> pMap) {
		erpDao.empSignUp(pMap);
	}

}
