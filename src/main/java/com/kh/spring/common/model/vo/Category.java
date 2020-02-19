package com.kh.spring.common.model.vo;

public class Category {
	private String cId;
	private String name;
	
	public Category() {}

	public Category(String cId, String name) {
		super();
		this.cId = cId;
		this.name = name;
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Category [cId=" + cId + ", name=" + name + "]";
	}
	
	
}
