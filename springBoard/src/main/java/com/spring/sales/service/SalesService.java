package com.spring.sales.service;

import java.io.File;
import java.util.List;

import com.spring.monthly.vo.MonthlyVo;
import com.spring.recruit.vo.RecruitVo;
import com.spring.sales.vo.SalesVo;

public interface SalesService {

	public void excelUpload(File destFile, RecruitVo recruit) throws Exception;

	public List<SalesVo> selectSalesList();

	public List<MonthlyVo> selectSalesTotal();

}
