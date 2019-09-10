package com.was.erp;

import java.util.List;
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

	public void productShipIn(Map<String, Object> pMap) {
		erpDao.productShipIn(pMap);
		
	}

	public void productShipOut(Map<String, Object> pMap) {
		erpDao.productShipOut(pMap);
		
	}

	public void productInsert(Map<String, Object> pMap) {
		erpDao.productInsert(pMap);
		
	}

	public List<Map<String, Object>> productList(Map<String, Object> pMap) {
		List<Map<String,Object>> rList = erpDao.productList(pMap);
		return rList;
	}

}
