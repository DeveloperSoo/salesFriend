package com.spring.recruit.dao.impl;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.recruit.dao.RecruitDao;
import com.spring.recruit.vo.RecruitVo;

@Repository
public class RecruitDaoImpl implements RecruitDao{

	@Autowired
	private SqlSession sqlSession;
	
	

	@Override
	public int checkId(String email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("recruit.selectOneById",email);
	}



	@Override
	public int insertRecruit(RecruitVo recruit) {
		// TODO Auto-generated method stub
		return sqlSession.insert("recruit.insertRecruit", recruit);
	}



	@Override
	public RecruitVo selectRecruit(RecruitVo recruit) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("recruit.selectRecruit", recruit);
	}
	
	
	
}
