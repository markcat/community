package com.tiandijiao.common.service.impl;

import com.tiandijiao.common.dao.domain.Identifiable;
import com.tiandijiao.common.dao.impl.BaseDAO;
import com.tiandijiao.common.utils.UUIDUtils;

/**
 * 基础Service服务接口实现类
 * @author mark
 * @date 2016年6月1日
 *
 */
public abstract class BaseManager<T extends Identifiable> {

	//protected abstract BaseDAO<T> getBaseDAO();
	public String generalTableKey(){
		return UUIDUtils.create();
	}
}
