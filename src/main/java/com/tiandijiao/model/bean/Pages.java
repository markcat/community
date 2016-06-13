package com.tiandijiao.model.bean;

import java.util.List;

public class Pages {

	
	//当前页
	private Integer page;
	
	//页数
	private Integer pageSize = 10;
	
	//总页数
	private Integer pages;
	
	//总记录数
	private Integer records;
	
	//记录数据
	private List rows;

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPages() {
		return pages;
	}

	public void setPages(Integer pages) {
		this.pages = pages;
	}

	public Integer getRecords() {
		return records;
	}

	public void setRecords(Integer records) {
		this.records = records;
	}

	public List getRows() {
		return rows;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}
	
	
	
}
