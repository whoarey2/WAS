package com.was.erp;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/aqua")
@Controller
public class ErpController {
	Logger logger = Logger.getLogger(ErpController.class);
	@GetMapping("login.was")
	public String erpLogin() {
		logger.info("WAS의 시작!!!~~~괜찮아?ㅋㅋㅋㅋ~~오늘은 잘 보내자 ㅎ;~~^^7~~~~");
		return"";
	}
}
