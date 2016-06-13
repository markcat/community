package com.tiandijiao.common.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.tiandijiao.common.dao.domain.Identifiable;

/**
 * 基础Dao接口实现类，实现该类的子类必须设置泛型类型
 * @author mark
 * @date 2016年6月1日
 *
 */
public abstract class BaseDAO <T extends Identifiable> {
	@Autowired(required = true)
	protected SqlSession sqlSessionTemplate;
	
	public static final String SQLNAME_SEPARATOR = ".";
	
	/**
	 * @fields sqlNamespace SqlMapping命名空间
	 */
	//private String sqlNamespace = getDefaultSqlNamespace();
	
	
	
	
}
