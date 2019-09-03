package com.was.erp;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.util.MybatisCommonFactory;

public class ErpDao {
	Logger logger = Logger.getLogger(ErpDao.class);
	SqlSessionFactory sqlSessionFactory;
	SqlSession sqlSession;
	public ErpDao() {
		sqlSessionFactory = MybatisCommonFactory.getSqlSeesionFactory();
	}
	public String erpLogin(Map<String, Object> pMap) {
		String result="";
		pMap.put("empno", "0");
		pMap.put("emp_pw", "0");
		pMap.put("msg", "0");
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.selectOne("erpLogin", pMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		result = pMap.get("msg").toString();	
		logger.info("erpLogin.result : "+result);
		return result;
	}

}
