package com.was.erp;

import java.util.Map;

public class ControllerMapping {

	public static ActionServlet mapping(String crud, Map<String, Object> pMap) {
		ActionServlet aServlet=null;
		if("aquaLogin".equals(crud)) {
			aServlet = new EmpController(pMap);
		}
		return aServlet;
	}

}
