package com.spring.monthly.dao;

import java.util.List;

import com.spring.monthly.dto.MonthlyDto;
import com.spring.monthly.vo.MonthlyVo;

public interface MonthlyDao {

	void insertMonthTotal(List<MonthlyVo> monthTotalList);

	List<MonthlyVo> selectTotalData();

	List<MonthlyVo> selectTotalById();

	List<MonthlyDto> selectTotalByProduct();

}
