package com.was.erp;



import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String gap = req.getParameter("gap").toString();
		HashMapBinder hmb = new HashMapBinder(req,gap);
		Map<String,Object> pMap = new HashMap<>();
		hmb.selectBind(pMap);
		ActionServlet aServlet = ControllerMapping.mapping(mapping,pMap);
		logger.info("컨트롤러매핑에서 컨트롤러 결정함.");
		Model model = aServlet.execute();
		List<Map<String,Object>> rList = model.getAddAttribute();
		logger.info("rList :"+rList.size());
		req.setAttribute("rList", rList);
		String fullView = model.getFullView();
		RequestDispatcher view = null;
		try {
			view = new ResultView().resultView(req,res,mapping,fullView);
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
