package com.spring.recruit.service;

import java.util.HashMap;

import com.spring.recruit.vo.RecruitVo;

public interface RecruitService {


	int checkId(String email);

	int insertRecruit(RecruitVo recruit);

	RecruitVo selectRecruit(RecruitVo recruit);

}
