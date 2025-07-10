package com.spring.sales.dao;

import java.util.List;
import java.util.Map;

import com.spring.monthly.vo.MonthlyVo;
import com.spring.sales.vo.SalesVo;

public interface SalesDao {

	void excelUpload(Map<String, String> paramMap);

	List<SalesVo> selectSalesList();

	List<MonthlyVo> selectSalesTotal();

}
