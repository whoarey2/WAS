package com.was.erp;

import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Model {
	private String viewName =null;
	private String viewPath =null;
	private String viewExtension =null;
	private List<Map<String,Object>> addAttribute =null;
	
	public void setViewPath(String viewPath) {
		this.viewPath = viewPath;
	}
	public void setViewExtension(String viewExtension) {
		this.viewExtension = viewExtension;
	}
	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
	public List<Map<String, Object>> getAddAttribute() {
		return addAttribute;
	}
	public void setAddAttribute(List<Map<String, Object>> addAttribute) {
		this.addAttribute = addAttribute;
	}
	public String getFullView() {
		return viewPath+"/"+viewName+"."+viewExtension;
	}
}
