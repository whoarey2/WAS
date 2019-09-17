package com.was.erp;



import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes({"s_emp_no","s_emp_pw"})
@RequestMapping(value="/emp*")
@Controller
public class EmpController {
	private static final Logger logger = LoggerFactory.getLogger(EmpController.class);
	@Autowired
	ErpLogic erpLogic;
	
	@ModelAttribute("s_emp_no")
	public String setSempNo() {
	    return "";
	}
	@ModelAttribute("s_emp_pw")
	public String setSempPw() {
	    return "";
	}

	@PostMapping("empLogin.was")
	public String empLogin(@RequestParam Map<String,Object> pMap,Model model,HttpServletResponse res) {
		logger.info("empLogin 호출 성공");
		erpLogic.empLogin(pMap);
		String path = "";
		String result = pMap.get("msg").toString();
		if("존재하지 않는 사원코드입니다..".equals(result) || "비밀번호를 다시 확인하세요".equals(result)) {
			path ="forward:index.jsp";
			model.addAttribute("msg", pMap.get("msg").toString());
			
		}else{
			model.addAttribute("emp_name", pMap.get("msg").toString());
			//model.addAttribute("outtime", pMap.get("outtime").toString()); ==> 아직 프로시저 완성 대기 중.
			////////////////////////////쿠키생성////////////////////////////////////
			   Cookie empNameCookie = new Cookie("c_emp_name", pMap.get("msg").toString());
			  // Cookie outtimeCookie = new Cookie("c_outtime", pMap.get("outtime").toString());
			   empNameCookie.setMaxAge(60*60*24*30);
			   empNameCookie.setPath("/");
			  // outtimeCookie.setMaxAge(60*60*24*30);
			  // outtimeCookie.setPath("/");
			   res.addCookie(empNameCookie);
			  // res.addCookie(outtimeCookie);
			   ////////////////////////////쿠키생성////////////////////////////////////
			   ////////////////////////////세션에담기////////////////////////////////////
			   model.addAttribute("s_emp_no",pMap.get("empno").toString());
			   model.addAttribute("s_emp_pw",pMap.get("emp_pw").toString());
			   ////////////////////////////세션에담기////////////////////////////////////
			   
			path ="login/main";
		}
		logger.info("msg :"+pMap.get("msg").toString());
		return path;//190909 이메소드는 아직 수정 중 입니다.
	}
	@PostMapping("empSignUp.was")
	public String empSignUp(@RequestParam Map<String,Object> pMap,Model model) {
		logger.info("empSignUp 호출 성공");
		erpLogic.empSignUp(pMap);
		String path = "";
		if("존재하지 않는 사원코드입니다..".equals(pMap.get("msg").toString())) {
			path ="fail";
			model.addAttribute("msg", pMap.get("msg").toString());
		}
		logger.info("msg :"+pMap.get("msg").toString());
		return "main";//190909 이메소드는 아직 수정 중 입니다.
	}
	
}
