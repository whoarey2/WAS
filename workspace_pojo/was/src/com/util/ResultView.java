package com.util;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.was.erp.Model;

public class ResultView {
	HttpServletRequest req = null;
	HttpServletResponse res = null;
	String mapping = null;
	Model model = null;
	public ResultView(HttpServletRequest req, HttpServletResponse res, String mapping, Model model) {
		this.req = req;
		this.res = res;
		this.mapping = mapping;
		this.model = model;
	}
	////////////////////////////세션 설정 메소드///////////////////////////
	public HttpSession getSession() {
		HttpSession session =null;
		if(model.getConfirmSession()==1) {
			if("empLogin".equals(mapping)) {
				List<Map<String,Object>> rList = model.getAddAttribute();
				session = req.getSession();
				session.setAttribute("s_empno", rList.get(0).get("empno"));
				session.setAttribute("s_emp_pw", rList.get(0).get("emp_pw"));
				}
		}
		return session;
	}
	////////////////////////////세션 설정 메소드///////////////////////////
	////////////////////////////쿠키 설정 메소드///////////////////////////
	public void addCookie() {
		if(model.getConfirmCookie()==1) {
			if("empLogin".equals(mapping)) {
			List<Map<String,Object>> rList = model.getAddAttribute();
				if(rList.get(0).get("empNameCookie")!=null) {
						Cookie cookie = (Cookie) rList.get(0).get("empNameCookie");
						res.addCookie(cookie);
				}
			}
		}
	}
	////////////////////////////쿠키 설정 메소드///////////////////////////
	////////////////////////////응답화면 method/////////////////////////
	public RequestDispatcher resultView() {
		RequestDispatcher view = null;
		if("empLogin".equals(mapping)) {
			view = req.getRequestDispatcher(model.getFullView());
			try {
				view.forward(req, res);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		else if("empSignUp".equals(mapping)) {
			try {
				res.sendRedirect(model.getFullView());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		else if("productInsert".equals(mapping)) {
			try {
				res.sendRedirect(model.getFullView());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		else if("productList".equals(mapping)) {
			view = req.getRequestDispatcher(model.getFullView());
			try {
				view.forward(req, res);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return view;
	}
	////////////////////////////응답화면 method/////////////////////////
}
