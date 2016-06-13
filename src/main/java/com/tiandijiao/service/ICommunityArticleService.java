package com.tiandijiao.service;

import java.util.List;

import com.tiandijiao.model.bean.SuccessMsg;
import com.tiandijiao.pojo.CommunityArticle;
import com.tiandijiao.pojo.query.CommunityArticleQuery;
import com.tiandijiao.pojo.vo.CommunityArticleVo;

public interface ICommunityArticleService{

	public List<CommunityArticleVo> select(CommunityArticleQuery communityArticle);

	public CommunityArticleVo selectById(CommunityArticleQuery communityArticle);


	public SuccessMsg insert(CommunityArticle communityArticle);
}
