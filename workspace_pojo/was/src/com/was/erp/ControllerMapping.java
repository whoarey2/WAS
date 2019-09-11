package com.was.erp;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.util.UriMapping;

public class ControllerMapping {
	private static final Logger logger = Logger.getLogger(ControllerMapping.class);
	public static ActionServlet mapping(HttpServletRequest req, HttpServletResponse res, Map<String, Object> pMap) {
		ActionServlet aServlet=null;
		String mapping = UriMapping.getMapping(req.getRequestURI());
		if(mapping.indexOf("emp")>-1) {
			aServlet = new EmpController(pMap,mapping);
		}
		return aServlet;
	}

}
