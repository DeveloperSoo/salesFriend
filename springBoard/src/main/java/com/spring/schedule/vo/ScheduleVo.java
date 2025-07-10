package com.spring.schedule.vo;

import java.util.Date;

public class ScheduleVo {

	private int 	schSeq;
	private String 	id;
	private String 	title;
	private String 	detail;
	private Date	startDate;
	private Date	endDate;
	
	public int getSchSeq() {
		return schSeq;
	}
	public void setSchSeq(int schSeq) {
		this.schSeq = schSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	
	
}
