package com.spring.education.service;

import java.util.Map;

import com.spring.education.vo.educationVo;

public interface EducationService {

	int insertEducation(Map<String, Object> educationList);

	int selectEduSameCheck(Map<String, Object> educationList);

	int updateEducation(Map<String, Object> educationList);

	int deleteEduAll(Map<String, Object> param);

}
