package com.was.erp;


import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class ProductController implements ActionServlet {
	Logger logger = Logger.getLogger(ProductController.class);
	Map<String, Object> pMap = null;
	String mapping = null;
	ErpLogic erpLogic = null;

	public ProductController(Map<String, Object> pMap, String mapping) {
		this.pMap = pMap;
		this.mapping = mapping;
		erpLogic = new ErpLogic();
	}
	@Override
	public Model execute() {
		logger.info("mapping --"+mapping);
		Model model = new Model();
		if("productInsert".equals(mapping)) {
			List<Map<String,Object>> rList = erpLogic.productInsert(pMap);
			logger.info("productInsert 결과 :::::::::"+rList.get(0).get("msg").toString());
			model.setAddAttribute(rList);
			model.setViewPath("views");
			model.setViewName("main");
			model.setViewExtension("jsp");
		}
		else if("productList".equals(mapping)) {
			List<Map<String,Object>> rList = erpLogic.productList(pMap);
			logger.info("productInsert 결과 :::::::::"+rList.get(0).get("msg").toString());
			model.setAddAttribute(rList);
			model.setViewPath("views");
			model.setViewName("main");
			model.setViewExtension("jsp");
		}
		else if("productShipIn".equals(mapping)) {
			List<Map<String,Object>> rList = erpLogic.productShipIn(pMap);
			logger.info("productShipOut 결과 :::::::::"+rList.get(0).get("msg").toString());
			model.setAddAttribute(rList);
			model.setViewPath("views");
			model.setViewName("main");
			model.setViewExtension("jsp");
		}
		else if("productShipOut".equals(mapping)) {
			List<Map<String,Object>> rList = erpLogic.productShipOut(pMap);
			logger.info("productShipOut 결과 :::::::::"+rList.get(0).get("msg").toString());
			model.setAddAttribute(rList);
			model.setViewPath("views");
			model.setViewName("main");
			model.setViewExtension("jsp");
		}
		return model;
	}

}
