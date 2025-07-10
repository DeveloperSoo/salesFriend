package com.spring.education.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.education.dao.EducationDao;
import com.spring.education.service.EducationService;
import com.spring.education.vo.educationVo;

@Service
public class EducationServiceImpl implements EducationService{
	
	@Autowired
	EducationDao educationDao;

	@Override
	public int insertEducation(Map<String, Object> educationList) {
		// TODO Auto-generated method stub
		return educationDao.insertEducation(educationList);
	}

	@Override
	public int selectEduSameCheck(Map<String, Object> educationList) {
		// TODO Auto-generated method stub
		return educationDao.selectEduSamecheck(educationList);
	}

	@Override
	public int updateEducation(Map<String, Object> educationList) {
		// TODO Auto-generated method stub
		return educationDao.updateEducation(educationList);
	}

	@Override
	public int deleteEduAll(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return educationDao.deleteEduall(param);
	}



}
