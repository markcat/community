package com.tiandijiao.pojo.query;

import com.tiandijiao.pojo.CommunityArticle;

public class CommunityArticleQuery extends CommunityArticle {

	/**
	 * @fields 是否查询
	 */
	public String _search;
	
	
	/**
	 * @fields 当前页数
	 */
	Integer page = 0;
	
	
	/**
	 * @fields 每页条数
	 */
	Integer rows;
	
	
	/**
	 * 
	 */
	Integer sidx;
	
	
	/**
	 * @fields 排序
	 */
	String sord;
	
	
	/**
	 * @fields dicNameLike 登录名称模糊查询
	 */
	private String conditionSql;


	public String get_search() {
		return _search;
	}


	public void set_search(String _search) {
		this._search = _search;
	}


	public Integer getPage() {
		return page;
	}


	public void setPage(Integer page) {
		this.page = page;
	}


	public Integer getRows() {
		return rows;
	}


	public void setRows(Integer rows) {
		this.rows = rows;
	}


	public Integer getSidx() {
		return sidx;
	}


	public void setSidx(Integer sidx) {
		this.sidx = sidx;
	}


	public String getSord() {
		return sord;
	}


	public void setSord(String sord) {
		this.sord = sord;
	}


	public String getConditionSql() {
		return conditionSql;
	}


	public void setConditionSql(String conditionSql) {
		this.conditionSql = conditionSql;
	}
	
	
	
}
