package com.was.erp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class ErpLogic {
	ErpDao erpDao;
	public ErpLogic() {
		erpDao = new ErpDao();
	}
	
	public List<Map<String, Object>> empLogin(Map<String, Object> pMap) {
		erpDao.empLogin(pMap);
		List<Map<String,Object>> rList = new ArrayList<>();
		if(pMap.get("msg") != null) {
			Map<String, Object> rMap = new HashMap<>();
			rMap.put("msg", pMap.get("msg"));
			rMap.put("outtime", pMap.get("outtime"));
			rList.add(rMap);
		}
		return rList;
	}

	public List<Map<String, Object>> empSignUp(Map<String, Object> pMap) {
		erpDao.empSignUp(pMap);
		List<Map<String,Object>> rList = new ArrayList<>();
		if(pMap.get("msg") != null) {
			Map<String, Object> rMap = new HashMap<>();
			rMap.put("msg", pMap.get("msg"));
			rList.add(rMap);
		}
		return rList;
	}

}
