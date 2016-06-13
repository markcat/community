package com.tiandijiao.common.dao.domain;

import java.io.Serializable;

/**
 * 主键标识
 * @author mark
 * @date 2016年5月31日
 *
 */
public interface Identifiable extends Serializable {
	
	/**
	 * 获取主键
	 * @author mark
	 * @return
	 * @date 2016年5月31日
	 */
	public String getId();
	
	
	/**
	 * 设置主键
	 * @author mark
	 * @param id
	 */
	public void setId(String id);
}
