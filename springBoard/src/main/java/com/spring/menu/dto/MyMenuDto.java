package com.spring.menu.dto;

import com.spring.menu.vo.MenuVo;

public class MyMenuDto {
	
	private int myMenuSeq;
	private int menuSeq;
	private String id;
	private String menuName;
	
	
	public int getMyMenuSeq() {
		return myMenuSeq;
	}
	public void setMyMenuSeq(int myMenuSeq) {
		this.myMenuSeq = myMenuSeq;
	}
	public int getMenuSeq() {
		return menuSeq;
	}
	public void setMenuSeq(int menuSeq) {
		this.menuSeq = menuSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	
	
	
	
}
