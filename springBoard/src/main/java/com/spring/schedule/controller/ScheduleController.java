package com.spring.schedule.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.recruit.vo.RecruitVo;
import com.spring.schedule.service.ScheduleService;
import com.spring.schedule.vo.ScheduleVo;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class ScheduleController {

	@Autowired
	ScheduleService schService;
	
	// 메인에서 일정관리 누를시 작동하는 메소드
	@RequestMapping(value="/schedule/all.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> schedultAll(HttpSession session,
			Model model) {
		
		Map<String, Object> result = new HashMap<String, Object>();
		RecruitVo recruit = (RecruitVo)session.getAttribute("recruit");
		
		// 로그인 정보가 없으면 로그인 화면으로 
		if(recruit == null) {
			result.put("error", "fail");
			return result;
		}
		
		List<ScheduleVo> schList = schService.selectSchList();
		
		if(schList == null || schList.isEmpty()) {
			result.put("error", "empty");
			return result;
		}
		
		
//		JSONObject jsonObj;
//		JSONArray jsonArr = new JSONArray();
		
		List<Map<String,Object>> eventList = new ArrayList<>();
		for(ScheduleVo schedule : schList) {
			Map<String, Object> event = new HashMap<>();
			event.put("title", schedule.getTitle());
			event.put("start", schedule.getStartDate());
			event.put("end", schedule.getEndDate());
			event.put("id", schedule.getSchSeq());
			event.put("description", schedule.getDetail());
			event.put("recruitId", schedule.getId());
			eventList.add(event);
		}
		
		
		result.put("recruit", recruit);
		result.put("schList", eventList);
		
		return result;
		
		
	}
	
	// 일정 신규 등록 
	@RequestMapping(value="/schedule/addSchedule.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> scheduleRegister(@RequestBody ScheduleVo scheduleVo,
			HttpSession session,
			Model model) {
		
			// 저장할 스케줄 과 로그인 정보 넘겨줄 map
//			Map<String, Object> schedule = new HashMap<String, Object>();
			// ajax에 보낼 결과물 map
			Map<String, Object> response = new HashMap<String, Object>();
			// 세션 저장값
			RecruitVo recruit = (RecruitVo)session.getAttribute("recruit");
			scheduleVo.setId(recruit.getId());
			// 체크해주고
//			schedule.put("recruit", recruit);
//			schedule.put("schedule", scheduleVo);
			// DB에서 가져온값 분기처리
			int result = schService.insertSchedule(scheduleVo);
			System.out.println("넘어오는 값 확인해라"+result );
			
			if(result == 0) {
				response.put("result", "fail");
				return response;
			}else {
				response.put("result", "success");
				return response;
			}
	}
	
	// 일정 삭제
	@RequestMapping(value="/schedule/deleteSchedule.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> scheduleDelete(@RequestBody ScheduleVo scheduleVo
			,HttpSession session){
		Map<String, Object> response = new HashMap<String, Object>();	
		
		RecruitVo recruit = (RecruitVo)session.getAttribute("recruit");
		
		if(!recruit.getId().equals(scheduleVo.getId())) {
			response.put("result", "idError");
			return response;
		}
		
		int result = schService.deleteSchedule(scheduleVo);
		if(result > 0) {
			response.put("result", "success");
			return response;
		}else {
			response.put("result", "fail");
			return response;
		}		
	}
	
	
	//일정 수정
	@RequestMapping(value="/schedule/updateSchedule.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> scheduleUpdate(@RequestBody ScheduleVo scheduleVo,
			HttpSession session,
			Model model) {
		
		Map<String, Object> response = new HashMap<String, Object>();
		
//		System.out.println("잘 넘어왔는지 확인" + scheduleVo.getId());
//		System.out.println("잘 넘어왔는지 확인" + scheduleVo.getTitle());
//		System.out.println("잘 넘어왔는지 확인" + scheduleVo.getDetail());
//		System.out.println("잘 넘어왔는지 확인" + scheduleVo.getStartDate());
//		System.out.println("잘 넘어왔는지 확인" + scheduleVo.getEndDate());
//		System.out.println("잘 넘어왔는지 확인" + scheduleVo.getSchSeq());		
		RecruitVo recruit = (RecruitVo)session.getAttribute("recruit");
//		System.out.println("넘어오는 recruit 아이디"+recruit.getId());
//		System.out.println("넘어오는 scheduleVO 아이디"+scheduleVo.getId());
		
		Boolean checkSame = recruit.getId().equals(scheduleVo.getId());
//		System.out.println("둘이 다름?" + checkSame);
		
		// 본인이 작성한 일정 아니면 수정 못하게
		if(!recruit.getId().equals(scheduleVo.getId())) {
			response.put("result", "idError");
			return response;
		}
		
		int updateResult = schService.updateSchedule(scheduleVo);
		
		if(updateResult > 0) {
			response.put("result", "success");
			return response;
		}else {
			response.put("result", "fail");
			return response;
		}
	}	
}
