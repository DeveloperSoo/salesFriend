package com.spring.recruit.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.recruit.dao.RecruitDao;
import com.spring.recruit.service.RecruitService;
import com.spring.recruit.vo.RecruitVo;

@Service
public class RecruitServiceImpl implements RecruitService{
	
	@Autowired
	RecruitDao recruitDao;


	@Override
	public int checkId(String email) {
		// TODO Auto-generated method stub
		return recruitDao.checkId(email);
	}


	@Override
	public int insertRecruit(RecruitVo recruit) {
		// TODO Auto-generated method stub
		return recruitDao.insertRecruit(recruit);
	}


	@Override
	public RecruitVo selectRecruit(RecruitVo recruit) {
		// TODO Auto-generated method stub
		return recruitDao.selectRecruit(recruit);
	}

	

}
