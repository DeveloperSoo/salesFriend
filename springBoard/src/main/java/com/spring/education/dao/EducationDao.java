package com.spring.education.dao;

import java.util.Map;

import com.spring.education.vo.educationVo;

public interface EducationDao {

	int insertEducation(Map<String, Object> educationList);

	int selectEduSamecheck(Map<String, Object> educationList);

	int updateEducation(Map<String, Object> educationList);

	int deleteEduall(Map<String, Object> param);



}
