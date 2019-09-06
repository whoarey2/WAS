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
	public void empLogin(Map<String, Object> pMap) {
		pMap.put("msg", "");
		pMap.put("outtime", "");
		sqlSessionTemplate.selectOne("empLogin", pMap);
	}
	public void empSignUp(Map<String, Object> pMap) {
		pMap.put("msg", "");
		sqlSessionTemplate.selectOne("empSignUp", pMap);
	}

}
