package com.spring.monthly.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.monthly.dao.MonthlyDao;
import com.spring.monthly.dto.MonthlyDto;
import com.spring.monthly.service.MonthlyService;
import com.spring.monthly.vo.MonthlyVo;

@Service
public class MonthlyServiceImpl implements MonthlyService{

	@Autowired
	MonthlyDao mDao;
	
	@Override
	public void insertMonthTotal(List<MonthlyVo> monthTotalList) {
		// TODO Auto-generated method stub
		mDao.insertMonthTotal(monthTotalList);
	}

	@Override
	public List<MonthlyVo> selectTotalData() {
		// TODO Auto-generated method stub
		return mDao.selectTotalData();
	}

	@Override
	public List<MonthlyVo> selectTotalById() {
		// TODO Auto-generated method stub
		return mDao.selectTotalById();
	}

	@Override
	public List<MonthlyDto> selectTotalByProduct() {
		// TODO Auto-generated method stub
		return mDao.selectTotalByProduct();
	}

}
