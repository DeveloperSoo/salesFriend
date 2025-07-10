package com.spring.education.dao.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.education.dao.EducationDao;
import com.spring.education.vo.educationVo;

@Repository
public class EducationDaoImpl implements EducationDao{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertEducation(Map<String, Object> educationList) {
		// TODO Auto-generated method stub
		return sqlSession.insert("education.insertEducation", educationList);
	}

	@Override
	public int selectEduSamecheck(Map<String, Object> educationList) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("education.selectEduSameCheck", educationList);
	}

	@Override
	public int updateEducation(Map<String, Object> educationList) {
		// TODO Auto-generated method stub
		return sqlSession.update("education.updateEducation", educationList);
	}

	@Override
	public int deleteEduall(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return sqlSession.delete("education.deleteEducation", param);
	}
	
	
}
