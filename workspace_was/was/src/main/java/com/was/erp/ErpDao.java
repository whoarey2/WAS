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
	public void erpLogin(Map<String, Object> pMap) {
		String result="";
		pMap.put("msg", "");
		pMap.put("outtime", "");
		sqlSessionTemplate.selectOne("erpLogin", pMap);
	}

}
