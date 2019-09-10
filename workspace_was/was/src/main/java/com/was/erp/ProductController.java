package com.was.erp;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/product*")
@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	ErpLogic erpLogic;
	
	@PostMapping(value="/productShipIn")
	public String productShipIn(@RequestParam Map<String,Object> pMap,Model model) {
		logger.info("productShipIn 메소드 호출 성공");
		erpLogic.productShipIn(pMap);
		
		return "";//190909 이메소드는 아직 수정 중 입니다.
	}
	@PostMapping(value="/productShipOut")
	public String productShipOut(@RequestParam Map<String,Object> pMap,Model model) {
		logger.info("productShipOut 메소드 호출 성공");
		erpLogic.productShipOut(pMap);
		return "";//190909 이메소드는 아직 수정 중 입니다.
	}
	@GetMapping(value="/productInsert")
	public String productInsert(@RequestParam Map<String,Object> pMap,Model model) {
		logger.info("productInsert 메소드 호출 성공");
		erpLogic.productInsert(pMap);
		return "";//190910 이메소드는 아직 수정 중 입니다.
	}
	@GetMapping(value="/productInsert")
	public String productList(@RequestParam Map<String,Object> pMap,Model model) {
		logger.info("productList 메소드 호출 성공");
		List<Map<String,Object>> rList = erpLogic.productList(pMap);
		return "";//190910 이메소드는 아직 수정 중 입니다.
	}
}
