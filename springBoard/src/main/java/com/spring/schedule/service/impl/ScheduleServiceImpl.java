package com.spring.schedule.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.schedule.dao.ScheduleDao;
import com.spring.schedule.service.ScheduleService;
import com.spring.schedule.vo.ScheduleVo;


@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Autowired
	ScheduleDao schDao;
	
	@Override
	public List<ScheduleVo> selectSchList() {
		return schDao.selectSchList();
	}

	@Override
	public int insertSchedule(ScheduleVo scheduleVo) {
		// TODO Auto-generated method stub
		return schDao.insertSchedule(scheduleVo);
	}

	@Override
	public int updateSchedule(ScheduleVo scheduleVo) {
		// TODO Auto-generated method stub
		return schDao.updateSchedule(scheduleVo);
	}

	@Override
	public int deleteSchedule(ScheduleVo scheduleVo) {
		// TODO Auto-generated method stub
		return schDao.deleteSchedule(scheduleVo);
	}

}
