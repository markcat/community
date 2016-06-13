package com.tiandijiao.dao;

import java.util.List;

import com.tiandijiao.pojo.CommunityArticle;
import com.tiandijiao.pojo.query.CommunityArticleQuery;
import com.tiandijiao.pojo.vo.CommunityArticleVo;

public interface ICommunityArticleDao {

	
	List<CommunityArticleVo> select(CommunityArticleQuery query);

	
	CommunityArticleVo selectById(CommunityArticleQuery query);
	
	
	int insert(CommunityArticle communityArticle);
}
