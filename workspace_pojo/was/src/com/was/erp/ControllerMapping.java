package com.was.erp;

import java.util.Map;

import org.apache.log4j.Logger;

public class ControllerMapping {
	private static final Logger logger = Logger.getLogger(ControllerMapping.class);
	public static ActionServlet mapping(String mapping, Map<String, Object> pMap) {
		ActionServlet aServlet=null;
		if(mapping.indexOf("emp")>-1) {
			aServlet = new EmpController(pMap,mapping);
		}
		return aServlet;
	}

}
