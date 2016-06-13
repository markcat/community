package com.tiandijiao.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tiandijiao.common.service.impl.BaseManager;
import com.tiandijiao.common.utils.UUIDUtils;
import com.tiandijiao.dao.ICommunityArticleDao;
import com.tiandijiao.model.bean.SuccessMsg;
import com.tiandijiao.pojo.CommunityArticle;
import com.tiandijiao.pojo.query.CommunityArticleQuery;
import com.tiandijiao.pojo.vo.CommunityArticleVo;
import com.tiandijiao.service.ICommunityArticleService;

@Service("communityArticleService")
public class CommunityArticleServiceImpl implements ICommunityArticleService {

	@Resource
	private ICommunityArticleDao iCommunityArticleDao;
	
	
	@Override
	public List<CommunityArticleVo> select(CommunityArticleQuery communityArticle){
		return iCommunityArticleDao.select(communityArticle);
	}

	
	@Override
	public CommunityArticleVo selectById(CommunityArticleQuery communityArticle){
		return iCommunityArticleDao.selectById(communityArticle);
	}
	
	
	@Override
	public SuccessMsg insert(CommunityArticle communityArticle) {
		communityArticle.setId(generalTableKey());
		communityArticle.setCreateTime(new Date());
		if(iCommunityArticleDao.insert(communityArticle) > 0){
			return SuccessMsg.msg(true, "新增成功");
		}else{
			return SuccessMsg.msg(false, "新增失败");
		}
	}

	public String generalTableKey(){
		return UUIDUtils.create();
	}
	
}
