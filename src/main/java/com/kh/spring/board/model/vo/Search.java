package com.kh.spring.board.model.vo;

public class Search {
	private int searchCondition;
	private String searchContent;
	private int type;
	
	public Search() {}

	public Search(int searchCondition, String searchContent, int type) {
		super();
		this.searchCondition = searchCondition;
		this.searchContent = searchContent;
		this.type = type;
	}

	public int getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(int searchCondition) {
		this.searchCondition = searchCondition;
	}

	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Search [searchCondition=" + searchCondition + ", searchContent=" + searchContent + ", type=" + type
				+ "]";
	}
}
