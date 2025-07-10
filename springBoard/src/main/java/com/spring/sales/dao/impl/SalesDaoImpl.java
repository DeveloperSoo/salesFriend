package com.spring.sales.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.monthly.vo.MonthlyVo;
import com.spring.sales.dao.SalesDao;
import com.spring.sales.vo.SalesVo;

@Repository
public class SalesDaoImpl implements SalesDao{

	@Autowired SqlSession sqlSession;

	@Override
	public void excelUpload(Map<String, String> paramMap) {
		sqlSession.insert("sales.excelUpload", paramMap);
	}

	@Override
	public List<SalesVo> selectSalesList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("sales.selectSalesList");
	}

	@Override
	public List<MonthlyVo> selectSalesTotal() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("sales.selectSalesTotal");
	}
	
}
