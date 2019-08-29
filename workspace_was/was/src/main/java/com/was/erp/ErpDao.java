package com.was.erp;

import java.util.Map;

import org.apache.ibatis.javassist.NotFoundException;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vo.ErpEmpVO;

@Service
public class ErpDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	public String erpLogin(Map<String, Object> pMap) {
		String result="";
		pMap.put("empno", "0");
		pMap.put("emp_pw", "0");
		pMap.put("msg", "0");
		sqlSessionTemplate.selectOne("erpLogin", pMap);
		result = pMap.get("msg").toString();		
		return result;
	}

}
