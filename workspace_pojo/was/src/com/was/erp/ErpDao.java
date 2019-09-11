package com.was.erp;

import java.util.ArrayList;
import java.util.List;
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
///////////////////////////////EMP////////////////////////////////	
	public void empLogin(Map<String, Object> pMap) {
		logger.info("emono : "+pMap.get("empno"));
		logger.info("emp_pw : "+pMap.get("emp_pw"));
		logger.info("msg : "+pMap.get("msg"));
		logger.info("outtime : "+pMap.get("outtime"));
		logger.info("SQL문:::::::::::::::::::");
		pMap.put("msg", "0");
		pMap.put("outtime", "0");
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.selectOne("empLogin", pMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}
	public void empSignUp(Map<String, Object> pMap) {
		pMap.put("msg", "0");
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.selectOne("empSignUp", pMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}
///////////////////////////////EMP////////////////////////////////		
////////////////////////////product//////////////////////////////	
	public int productInsert(Map<String, Object> pMap) {
		int result = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.update("productInsert", pMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	public List<Map<String, Object>> productList(Map<String, Object> pMap) {
		List<Map<String,Object>> rList = new ArrayList<>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			rList = sqlSession.selectList("productList", pMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rList;
	}
	public void productShipOut(Map<String, Object> pMap) {
		pMap.put("msg", "");
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.update("productShipOut", pMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
	}
	public void productShipIn(Map<String, Object> pMap) {
		pMap.put("msg", "");
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.update("productShipIn", pMap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
	}
////////////////////////////product//////////////////////////////	

}
