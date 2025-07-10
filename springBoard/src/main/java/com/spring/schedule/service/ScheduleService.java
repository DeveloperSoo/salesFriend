package com.spring.schedule.service;

import java.util.List;

import com.spring.schedule.vo.ScheduleVo;

public interface ScheduleService {

	List<ScheduleVo> selectSchList();

	int insertSchedule(ScheduleVo scheduleVo);

	int updateSchedule(ScheduleVo scheduleVo);

	int deleteSchedule(ScheduleVo scheduleVo);

}
