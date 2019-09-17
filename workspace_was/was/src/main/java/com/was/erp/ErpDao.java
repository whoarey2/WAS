package com.was.erp;

import java.util.List;
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
/////////////////////////////emp/////////////////////////////	
	public void empLogin(Map<String, Object> pMap) {
		pMap.put("msg", "");
		pMap.put("outtime", "");
		sqlSessionTemplate.selectOne("empLogin", pMap);
	}
	public void empSignUp(Map<String, Object> pMap) {
		pMap.put("msg", "");
		sqlSessionTemplate.selectOne("empSignUp", pMap);
	}
/////////////////////////////emp/////////////////////////////
////////////////////////////product//////////////////////////
	public void productShipIn(Map<String, Object> pMap) {
		pMap.put("msg", "");
		sqlSessionTemplate.selectOne("productShipIn", pMap);
	}
	public void productShipOut(Map<String, Object> pMap) {
		pMap.put("msg", "");
		sqlSessionTemplate.selectOne("productShipOut",pMap);
		
	}
	public void productInsert(Map<String, Object> pMap) {
		sqlSessionTemplate.selectOne("productInsert",pMap);

	}
	public List<Map<String, Object>> productList(Map<String, Object> pMap) {
		List<Map<String,Object>> rList
			= sqlSessionTemplate.selectList("productList",pMap);
		return rList;
	}
////////////////////////////product//////////////////////////

}
