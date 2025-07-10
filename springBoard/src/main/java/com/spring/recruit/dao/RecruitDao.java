package com.spring.recruit.dao;

import java.util.HashMap;

import com.spring.recruit.vo.RecruitVo;

public interface RecruitDao {


	int checkId(String email);

	int insertRecruit(RecruitVo recruit);

	RecruitVo selectRecruit(RecruitVo recruit);

}
