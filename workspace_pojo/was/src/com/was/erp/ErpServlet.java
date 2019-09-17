package com.was.erp;

//190917

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.util.HashMapBinder;
import com.util.ResultView;
import com.util.UriMapping;

//erp/~~~~.was
public class ErpServlet extends HttpServlet{
	private static final Logger logger = Logger.getLogger(ErpServlet.class);
	ErpLogic erpLogic;
	public void doErp(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String mapping = UriMapping.getMapping(req.getRequestURI());
		//METHOD 방식의 구분인자 하나를 정했다.
		Map<String,Object> pMap = new HashMap<>();
		if(req.getParameter("gap")!=null) {
		String gap = req.getParameter("gap").toString();
		HashMapBinder hmb = new HashMapBinder(req,gap);
		hmb.selectBind(pMap);
		}
		ActionServlet aServlet = ControllerMapping.mapping(mapping,pMap);
		Model model = aServlet.execute();
		List<Map<String,Object>> rList = model.getAddAttribute();
		req.setAttribute("rList", rList);
		RequestDispatcher view = null;
		HttpSession session = null;
		try {
			ResultView resultView = new ResultView(req,res,mapping,model);
			view = resultView.resultView();
			session = resultView.getSession();
			if(session==null) session = req.getSession();
			resultView.addCookie();
		} catch (Exception e) {
			logger.info(e.toString());
		}
		
	}
	public void doGet(HttpServletRequest req,HttpServletResponse res) 
			throws ServletException,IOException{
		doErp(req,res);
	}
	public void doPost(HttpServletRequest req,HttpServletResponse res) 
			throws ServletException,IOException{
		doErp(req,res);
	}
}
