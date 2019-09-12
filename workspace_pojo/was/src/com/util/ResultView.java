package com.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResultView {
	
	public RequestDispatcher resultView(HttpServletRequest req,HttpServletResponse res,String mapping, String fullView) {
		RequestDispatcher view = null;
		if("empLogin".equals(mapping)) {
			view = req.getRequestDispatcher(fullView);
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
				res.sendRedirect(fullView);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		else if("productInsert".equals(mapping)) {
			try {
				res.sendRedirect(fullView);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		else if("productList".equals(mapping)) {
			view = req.getRequestDispatcher(fullView);
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

}
