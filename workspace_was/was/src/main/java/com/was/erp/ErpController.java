package com.was.erp;



import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping(value="/aqua")
@Controller
public class ErpController {
	Logger logger = Logger.getLogger(ErpController.class);
	@Autowired
	ErpLogic erpLogic;
	@GetMapping("login.was")
	public String erpLogin(@RequestParam Map<String,Object> pMap) {

		logger.info("WAS의 시작!!!~~~괜찮아?ㅋㅋㅋㅋ열심히 해 보아요ㅎㅎㅎ호ㅗㅗ~~^^7~~~~");
		
		String result = erpLogic.erpLogin(pMap);
		logger.info("컨트롤러::::::::::::"+result);
		logger.info("컨트롤러::::::::::::"+pMap.get("msg"));
		logger.info("컨트롤러::::::::::::"+pMap.get("log"));
		return "";
	}
}
