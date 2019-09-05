package com.was.erp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpController implements ActionServlet {
	Map<String,Object> pMap = null;
	public EmpController(Map<String, Object> pMap) {
		this.pMap = pMap;
	}

	@Override
	public Model execute() {
		Model model = new Model();
		ErpLogic erpLogic = new ErpLogic();
		String result = erpLogic.erpLogin(pMap);
		List<Map<String,Object>> rList = new ArrayList<>();
		Map<String,Object> rMap = new HashMap<>();
		rMap.put("loginResult", result);
		rList.add(rMap);
		model.setAddAttribute(rList);
		model.setViewName("login");
		model.setViewPath("views");
		model.setViewExtension("jsp");
		return model;
	}

}
