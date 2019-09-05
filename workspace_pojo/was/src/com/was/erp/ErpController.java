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

//was/aquaLogin.was
public class ErpController extends HttpServlet{
	Logger logger = Logger.getLogger(ErpController.class);
	ErpLogic erpLogic;
	public void goService(HttpServletRequest req, HttpServletResponse res) throws ServletException {
		String uri = req.getRequestURI();
		logger.info("요청한 uri : "+uri);
		String commands[] = uri.split("/");
		int cut = commands[2].indexOf(".");
		String command = commands[2];
		String crud = command.substring(0,cut);
		logger.info("crud : "+crud);
		HashMapBinder hmb = new HashMapBinder(req);
		Map<String,Object> pMap = new HashMap<>();
		hmb.bind(pMap);
		ActionServlet aServlet = ControllerMapping.mapping(crud,pMap);
		logger.info("컨트롤러매핑에서 컨트롤러 결정함.");
		Model model = aServlet.execute();
        List<Map<String,Object>> rList = model.getAddAttribute();
        logger.info("rList :"+rList.size());
        req.setAttribute("rList", rList);
        String path = model.getFullView();
        logger.info("반환페이지 풀네임 : "+path);
		
		  try { 
			  RequestDispatcher view = req.getRequestDispatcher(path);
			  view.forward(req, res); 
			  } catch (IOException e) { 
				  e.printStackTrace(); 
			  }
        
	}
	public void doGet(HttpServletRequest req,HttpServletResponse res) 
			throws ServletException,IOException{
		goService(req,res);
	}
	public void doPost(HttpServletRequest req,HttpServletResponse res) 
			throws ServletException,IOException{
		goService(req,res);
	}
}
