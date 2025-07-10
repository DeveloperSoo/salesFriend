package com.spring.monthly.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.monthly.dao.MonthlyDao;
import com.spring.monthly.dto.MonthlyDto;
import com.spring.monthly.vo.MonthlyVo;

@Repository
public class MonthlyDaoImpl implements MonthlyDao {

	@Autowired SqlSession sqlSession;
	
	
	@Override
	public void insertMonthTotal(List<MonthlyVo> monthTotalList) {
		// TODO Auto-generated method stub
//		총합 수 만큼 Insert or Update해주기
		List<MonthlyVo> selectList = sqlSession.selectList("sales.selectSalesTotal");
		
		// 전체 월별 총합 가져오기
		List<MonthlyVo> originList = sqlSession.selectList("monthly.selectAll");
		
		if(originList.isEmpty() || originList == null) {
			for(int i = 0; i < monthTotalList.size(); i++) {
				sqlSession.insert("monthly.insertMonthlyTotal", monthTotalList.get(i));				
			}
		}else {
			for(MonthlyVo select : selectList) {
				boolean isUpdate = false;
				for(MonthlyVo month : monthTotalList ) {
					if(month.getId().equals(select.getId())				
							&& month.getMonth().equals(select.getMonth())
							&& month.getYear().equals(select.getYear())) {
						sqlSession.update("monthly.updateMonthlyTotal", month);		
						isUpdate = true;
						break;
					}
					if(!isUpdate) {
						sqlSession.insert("monthly.insertMonthlyTotal", month);
					}		
				}// month foreach			
			} //select for each
		}		
	}


	@Override
	public List<MonthlyVo> selectTotalData() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("monthly.selectTotalData");
	}


	@Override
	public List<MonthlyVo> selectTotalById() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("monthly.selectTotalById");
	}


	@Override
	public List<MonthlyDto> selectTotalByProduct() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("monthly.selectTotalByProduct");
	}
}
