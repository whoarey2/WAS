package com.was.erp;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
//190917

public class ErpLogic {
	Logger logger = Logger.getLogger(ErpLogic.class);
	ErpDao erpDao;
	public ErpLogic() {
		erpDao = new ErpDao();
	}
///////////////////////////////////////EMP//////////////////////////////////////////	
	public List<Map<String, Object>> empLogin(Map<String, Object> pMap) {
		logger.info("empLogin:::::::::::::::::::");
		erpDao.empLogin(pMap);
		List<Map<String,Object>> rList = new ArrayList<>();
		if(pMap.get("msg") != null) {
			Map<String, Object> rMap = new HashMap<>();
			rMap.put("emp_name", pMap.get("msg"));
			//rMap.put("outtime", pMap.get("outtime"));
			rMap.put("empno", pMap.get("empno"));
			rMap.put("emp_pw", pMap.get("emp_pw"));
			if(!"존재하지 않는 사원코드입니다..".equals(rMap.get("emp_name"))) {//비밀번호가 틀릴 경우도 조건으로 추가해줘야함
			Cookie empNameCookie = null;
			try {
				empNameCookie = new Cookie("c_emp_name", URLEncoder.encode(rMap.get("emp_name").toString(),"utf-8"));
				empNameCookie.setMaxAge(60*60*24*30);
				empNameCookie.setPath("/");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			rMap.put("empNameCookie", empNameCookie);
			}
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
///////////////////////////////////////EMP//////////////////////////////////////////
/////////////////////////////////////product////////////////////////////////////////	
	public List<Map<String, Object>> productInsert(Map<String, Object> pMap) {
		int result = 0;
		Map<String,Object> rMap = new HashMap<>();
		List<Map<String,Object>> rList = new ArrayList<>();
		result = erpDao.productInsert(pMap);
		if(result==1) {
			String msg ="등록성공";
			rMap.put("msg", msg);
			rList.add(rMap);
		}else if(result==0) {
			String msg ="등록실패";
			rMap.put("msg", msg);
			rList.add(rMap);
		}
		return rList;
	}
	public List<Map<String, Object>> productList(Map<String, Object> pMap) {
		List<Map<String,Object>> rList = new ArrayList<>();
		rList = erpDao.productList(pMap);
		return rList;
	}

	public List<Map<String, Object>> productShipOut(Map<String, Object> pMap) {
		Map<String,Object> rMap = new HashMap<>();
		List<Map<String,Object>> rList = new ArrayList<>();
		erpDao.productShipOut(pMap);
		return rList;
	}
	public List<Map<String, Object>> productShipIn(Map<String, Object> pMap) {
		Map<String,Object> rMap = new HashMap<>();
		List<Map<String,Object>> rList = new ArrayList<>();
		erpDao.productShipIn(pMap);
		return rList;
	}
/////////////////////////////////////product////////////////////////////////////////

}
