package com.spring.recruit.vo;

import java.util.List;

public class RecruitVo {

	private int	   recruitSeq;
	private String name;
	private String id;
	private String pwd;
	private String phone;
	private String addr;
	
	
	
	public int getRecruitSeq() {
		return recruitSeq;
	}
	public void setRecruitSeq(int recruitSeq) {
		this.recruitSeq = recruitSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}

	
	
	
	

	
}
