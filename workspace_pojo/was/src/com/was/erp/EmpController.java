package com.was.erp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class EmpController implements ActionServlet {
	private static final Logger logger = Logger.getLogger(EmpController.class);
	Map<String,Object> pMap = null;
	String mapping = null;
	ErpLogic erpLogic = null;
	public EmpController(Map<String, Object> pMap, String mapping) {
		this.pMap = pMap;
		this.mapping = mapping;
		erpLogic = new ErpLogic();
	}

	@Override
	public Model execute() {
		Model model = new Model();
		logger.info("mapping --"+mapping);
		if("empLogin".equals(mapping)) {
			String result = erpLogic.erpLogin(pMap);
			List<Map<String,Object>> rList = new ArrayList<>();
			Map<String,Object> rMap = new HashMap<>();
			rMap.put("loginResult", result);
			rList.add(rMap);
			model.setAddAttribute(rList);
			model.setViewName("login");
			model.setViewPath("views");
			model.setViewExtension("jsp");
		}
		return model;
	}

}
