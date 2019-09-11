package com.was.erp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
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
			List<Map<String,Object>> rList = erpLogic.empLogin(pMap);
			model.setAddAttribute(rList);
			if(!"존재하지 않는 사원코드입니다..".equals(rList.get(0).get("msg"))) {
				model.setViewName("main");
				model.setViewPath("WEB-INF/views/was/");
				model.setViewExtension("jsp");
			}else{
				model.setViewName("index");
				model.setViewPath("");
				model.setViewExtension("jsp");
			}
		}
		else if("empSignUp".equals(mapping)) {
			List<Map<String,Object>> rList = erpLogic.empSignUp(pMap);
			model.setAddAttribute(rList);
			model.setViewName("main");
			model.setViewPath("WEB-INF/views/was/");
			model.setViewExtension("jsp");
		}
		return model;
	}
}
