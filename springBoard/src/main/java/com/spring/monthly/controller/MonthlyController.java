package com.spring.monthly.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.monthly.dto.MonthlyDto;
import com.spring.monthly.service.MonthlyService;
import com.spring.monthly.vo.MonthlyVo;

@Controller
public class MonthlyController {

	@Autowired MonthlyService mService;

	// 상품별 매출 차트 가져오는 메소드
	// montly_sql.selectTotalByProduct
	@RequestMapping(value="/monthly/totalBarChart.do", method = RequestMethod.GET)
	@ResponseBody	
	public List<MonthlyDto> monthlyBarData(
			HttpSession session,
			Model model){	
		
		// 얘는 montly와 sales에 맞는 규격이 없어서 DTO 생성 후 가져옴
		List<MonthlyDto> mTotal = mService.selectTotalByProduct();
		model.addAttribute("data", mTotal);
		
		return mTotal;
	}
	
	
	// 월별 매출 차트 가져오는 메소드
	// monthly_sql.selectTotalData
	@RequestMapping(value="/monthly/totalLineChart.do", method = RequestMethod.GET)
	@ResponseBody
	public List<MonthlyVo> monthlyLineDate(
			HttpSession session,
			Model model) {
		List<MonthlyVo> mTotal = mService.selectTotalData();
		model.addAttribute("data", mTotal);
		
		return  mTotal;
	}
	
	// 담당자별 매출 차트 가져오는 메소드
	// montly_sql.selectTotalById
	@RequestMapping(value="/monthly/totalPieChart.do", method = RequestMethod.GET)
	@ResponseBody
	public List<MonthlyVo> monthlyPieData(
			HttpSession session,
			Model model){
		List<MonthlyVo> mTotal = mService.selectTotalById();
		model.addAttribute("data", mTotal);
		
		return mTotal;
	}
	
	
	
}
