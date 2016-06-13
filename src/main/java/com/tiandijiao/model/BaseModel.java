package com.tiandijiao.model;

/**
 * Create by mark on 2016/5/31
 * @author mark
 *
 */
public abstract class BaseModel {
	
	private Integer pageSize = 10;
	

	/**
	 * 偏移量
	 */
	private Integer offset;
	
	
	/**
	 * 分页数
	 */
	private Integer limit;
	
	
	/**
	 * 排序字段
	 */
	private String sorting;
	
	
	/**
	 * @field 排序
	 */
	private String sord;
	
	
	/**
	 * 条件关系（AND 或者 OR）
	 */
	private String groupOP;

	
	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getOffset() {
		return offset;
	}

	public void setOffset(Integer offset) {
		this.offset = offset;
	}

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	public String getSorting() {
		return sorting;
	}

	public void setSorting(String sorting) {
		this.sorting = sorting;
	}

	public String getSord() {
		return sord;
	}

	public void setSord(String sord) {
		this.sord = sord;
	}

	public String getGroupOP() {
		return groupOP;
	}

	public void setGroupOP(String groupOP) {
		this.groupOP = groupOP;
	}
	
	
	
}
