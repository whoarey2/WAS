package com.was.erp;



import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping(value="/aqua")
@Controller
public class ErpController {
	Logger logger = Logger.getLogger(ErpController.class);
	@Autowired
	ErpLogic erpLogic;
	@PostMapping("login.was")
	public String erpLogin(@RequestParam Map<String,Object> pMap,Model model) {

		logger.info("WAS의 시작!!!~~~괜찮아?ㅋㅋㅋㅋ열심히 해 보아요ㅎㅎㅎ호ㅗㅗ~~^^7~~~~");
		
		erpLogic.erpLogin(pMap);
		logger.info("컨트롤러::::::::::::"+pMap.get("msg"));
		logger.info("컨트롤러::::::::::::"+pMap.get("log"));
		String path = "";
		if("존재하지 않는 사원코드입니다..".equals(pMap.get("msg").toString())) {
			path ="fail";
			model.addAttribute("result", pMap.get("msg").toString());
		}
		return "main";
	}
}
