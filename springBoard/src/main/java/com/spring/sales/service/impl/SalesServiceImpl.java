package com.spring.sales.service.impl;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.common.ExcelRead;
import com.spring.common.ExcelReadOption;
import com.spring.monthly.vo.MonthlyVo;
import com.spring.recruit.vo.RecruitVo;
import com.spring.sales.dao.SalesDao;
import com.spring.sales.service.SalesService;
import com.spring.sales.vo.SalesVo;

@Service
public class SalesServiceImpl implements SalesService{

	@Autowired
	SalesDao sDao;
	
	@Override
	public void excelUpload(File destFile, RecruitVo recruit) throws Exception{
		ExcelReadOption excelReadOption = new ExcelReadOption();
		excelReadOption.setFilePath(destFile.getAbsolutePath());
		// 추출할 컬럼명 설정
		excelReadOption.setOutputColumns("ID", "PRODUCT_NAME", "SALES_DATE", "DES","PRICE","PRODUCT_COUNT");
		// 시작할 행 (헤더 제외)
		excelReadOption.setStartRow(2);
		
		List<Map<String, String>> result = ExcelRead.read(excelReadOption);
		
		System.out.println("############ 엑셀 체크다" + result.toString());
		String pDate = result.get(0).get("ID").toString();
		System.out.println("############# pDATE 확인 : " + pDate);
//		for(int i = 0; i <result.size(); i++) {
//			if(result.get(i).get("ID").contains(pDate)) {
//				result.get(i).put("ID", pDate);
//			}
//		}
		
		
		for(Map<String, String> paramMap : result) {
			paramMap.put("id", String.valueOf(recruit.getId()));
			sDao.excelUpload(paramMap);
		}
		
		
		
	}

	@Override
	public List<SalesVo> selectSalesList() {

		return sDao.selectSalesList();
	}

	@Override
	public List<MonthlyVo> selectSalesTotal() {
		// TODO Auto-generated method stub
		return sDao.selectSalesTotal();
	}

}
