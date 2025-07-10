package com.spring.schedule.dao.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.schedule.dao.ScheduleDao;
import com.spring.schedule.vo.ScheduleVo;

@Repository
public class ScheduleDaoImpl implements ScheduleDao{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ScheduleVo> selectSchList() {
		return sqlSession.selectList("schedule.selectSchList");
	}

	@Override
	public int insertSchedule(ScheduleVo scheduleVo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("schedule.insertSchedule", scheduleVo);
	}

	@Override
	public int updateSchedule(ScheduleVo scheduleVo) {
		// TODO Auto-generated method stub
		return sqlSession.update("schedule.updateSchedule", scheduleVo);
	}

	@Override
	public int deleteSchedule(ScheduleVo scheduleVo) {
		// TODO Auto-generated method stub
		return sqlSession.delete("schedule.deleteSchedule", scheduleVo);
	}

}
