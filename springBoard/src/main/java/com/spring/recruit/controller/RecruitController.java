package com.spring.recruit.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.common.CommonUtil;
import com.spring.recruit.service.RecruitService;
import com.spring.recruit.vo.RecruitVo;

import net.sf.json.JSONObject;

@Controller
public class RecruitController {

		@Autowired
		RecruitService rService;

		@RequestMapping(value="/recruit/findRecruit.do", method = RequestMethod.GET)
		public String recruitFindRecruit() {
			
			
			return "sales/forgot-password";
		}
		
		
//		로그인 정보 확인 후 넘기기
		@RequestMapping(value="/recruit/loginCheck.do", method = RequestMethod.POST)
		@ResponseBody
		public String recruitLoginCheck(RecruitVo recruit
				, Model model
				,HttpSession session) throws IOException {
		
			RecruitVo recruitVo = rService.selectRecruit(recruit);
			JSONObject json = new JSONObject();
			
			if(recruitVo != null) {
				session.setAttribute("recruit", recruitVo);
				json.put("result", "success");
				json.put("recruit", recruitVo);
			}else {
				json.put("result", "fail");
				json.put("message", "이메일 또는 비밀번호가 올바르지 않습니다.");
			}
			return json.toString();
		}
		
		
//		로그인 정보 확인 후 넘기기
		@RequestMapping(value="/recruit/testLogin.do", method = RequestMethod.POST)
		@ResponseBody
		public String recruitTestLogin(RecruitVo recruit
				, Model model
				,HttpSession session) throws IOException {
		
			recruit.setId("master");
			recruit.setPwd("1234");
			
			RecruitVo recruitVo = rService.selectRecruit(recruit);
			JSONObject json = new JSONObject();
			
			if(recruitVo != null) {
				session.setAttribute("recruit", recruitVo);
				json.put("result", "success");
				json.put("recruit", recruitVo);
			}else {
				json.put("result", "fail");
				json.put("message", "이메일 또는 비밀번호가 올바르지 않습니다.");
			}
			return json.toString();
		}
		
		
//		이메일 중복 검사
		@RequestMapping(value="/recruit/idCheck.do", method = RequestMethod.GET)
		@ResponseBody
		public String recruitIdCheck(String id) {
//			System.out.println("넘어오는 이메일 확인"+email);
			int check = rService.checkId(id);
			
			System.out.println();
			JSONObject json = new JSONObject();
			json.put("check", check);
			return json.toString();
		}
		
		
//		회원가입
		@RequestMapping(value="/recruit/registerCheck.do", method = RequestMethod.POST)
		@ResponseBody
		public String recruitRegisterCheck(RecruitVo recruit,
					Model model) throws IOException {
			
			System.out.println(recruit.getName());
			int result = rService.insertRecruit(recruit);
			String callbackMsg = CommonUtil.getJsonCallBackString(" ",result);
			
			
			return callbackMsg;
		}
		
//		회원가입 창으로 이동
		@RequestMapping(value="/recruit/register.do", method = RequestMethod.GET)
		public String recruitRegister() {
			
			return "sales/register";
		}
		
		
//		로그인 창으로 이동
		@RequestMapping(value ="/recruit/login.do", method = RequestMethod.GET)
		public String recruitLogin(Model model) {
			
	
			return "sales/login";
		}
		
}
