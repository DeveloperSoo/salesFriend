package com.spring.menu.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.menu.dto.MyMenuDto;
import com.spring.menu.service.MenuService;
import com.spring.menu.vo.MenuVo;
import com.spring.recruit.vo.RecruitVo;

@Controller
public class MenuController {

	@Autowired MenuService menuService;
	
	
	
	
	@RequestMapping(value="/sales/menuUpdate.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> myMenuUpdate(@RequestParam(value="checkArray[]")List<String> menuList,
			HttpSession session) {
		
		Map<String, Object> response = new HashMap<String, Object>();
		
		RecruitVo recruit = (RecruitVo)session.getAttribute("recruit");
		// 전체 메뉴리스트 가져오기
		List<MenuVo> mList = menuService.selectAll();
		
		if(menuList == null) {
			menuService.deleteMyMenu(recruit.getId());
		}
		
		// 체크된 것만 가져오기
		List<MenuVo> meList = menuService.selectByCheck(menuList);
		

		
		// MyMenu에 추가할 리스트
		List<MyMenuDto> myList = new ArrayList<>();
		
		for(int i = 0; i < meList.size(); i++) {
			MyMenuDto dto = new MyMenuDto();
			dto.setId(recruit.getId());
			dto.setMenuName(meList.get(i).getMenuName());
			dto.setMenuSeq(meList.get(i).getMenuSeq());
			myList.add(dto);
		}
		
		// myMenu에 현재 내 자료 있는지 체크 
		int checkMine = menuService.selectMyMenu(recruit.getId());
		
		if(checkMine > 0) {
			menuService.deleteMyMenu(recruit.getId());
			int result = menuService.insertMyMenu(myList);
			if(result > 0) {
				response.put("result", "success");	
				return response;
			}else {
				response.put("result", "fail");
				return response;
			}
		}
		
		
		if(checkMine == 0) {
			int result = menuService.insertMyMenu(myList);
			if(result > 0) {
				response.put("result", "success");	
				return response;
			}else {
				response.put("result", "fail");
				return response;
			}
		}
		
		return response;
	}
}
