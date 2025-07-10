package com.spring.sales.vo;

import java.util.Date;

public class SalesVo {
	private int 	salesSeq;
	private String 	id;
	private String 	productName;
	private String	date;
	private String 	des;
	private int 	price;
	private int		productCount;
	
	
	public int getSalesSeq() {
		return salesSeq;
	}
	public void setSalesSeq(int salesSeq) {
		this.salesSeq = salesSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getProductCount() {
		return productCount;
	}
	public void setProductCount(int produceCount) {
		this.productCount = produceCount;
	}
	
	
	
	
}
