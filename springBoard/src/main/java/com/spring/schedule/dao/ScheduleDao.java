package com.spring.schedule.dao;

import java.util.List;

import com.spring.schedule.vo.ScheduleVo;

public interface ScheduleDao {

	List<ScheduleVo> selectSchList();

	int insertSchedule(ScheduleVo scheduleVo);

	int updateSchedule(ScheduleVo scheduleVo);

	int deleteSchedule(ScheduleVo scheduleVo);

}
