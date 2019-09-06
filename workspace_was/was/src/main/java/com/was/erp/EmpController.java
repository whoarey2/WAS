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

@RequestMapping(value="/emp*")
@Controller
public class EmpController {
	private static final Logger logger = Logger.getLogger(EmpController.class);
	@Autowired
	ErpLogic erpLogic;
	@PostMapping("emplogin.was")
	public String empLogin(@RequestParam Map<String,Object> pMap,Model model) {
		logger.info("empLogin 호출 성공");
		erpLogic.empLogin(pMap);
		String path = "";
		if("존재하지 않는 사원코드입니다..".equals(pMap.get("msg").toString())) {
			path ="fail";
			model.addAttribute("result", pMap.get("msg").toString());
		}
		return "main";//아직 미정
	}
	@PostMapping("empSignUp.was")
	public String empSignUp(@RequestParam Map<String,Object> pMap,Model model) {
		logger.info("empSignUp 호출 성공");
		erpLogic.empSignUp(pMap);
		String path = "";
		if("존재하지 않는 사원코드입니다..".equals(pMap.get("msg").toString())) {
			path ="fail";
			model.addAttribute("result", pMap.get("msg").toString());
		}
		return "main";//아직 미정
	}
	
}
