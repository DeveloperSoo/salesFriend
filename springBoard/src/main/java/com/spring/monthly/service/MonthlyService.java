package com.spring.monthly.service;

import java.util.List;

import com.spring.monthly.dto.MonthlyDto;
import com.spring.monthly.vo.MonthlyVo;

public interface MonthlyService {

	void insertMonthTotal(List<MonthlyVo> monthTotalList);

	List<MonthlyVo> selectTotalData();

	List<MonthlyVo> selectTotalById();

	List<MonthlyDto> selectTotalByProduct();

}
