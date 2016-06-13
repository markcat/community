package com.tiandijiao.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tiandijiao.pojo.query.CommunityArticleQuery;
import com.tiandijiao.pojo.vo.CommunityArticleVo;
import com.tiandijiao.service.ICommunityArticleService;

@Controller
@RequestMapping("/mobile/article")
public class MobileArticleController {


	@Resource
	private ICommunityArticleService iCommunityArticleService;
	/**
	 * 获取项目路径名称
	 * 
	 * @author markcat
	 * @param model
	 * @return
	 */
	public Model init(Model model) {
		String contextPath = "/community";
		return model.addAttribute("ctx", contextPath);
	}
	
	

	
	@RequestMapping("/list")
	public String list(Model model, CommunityArticleQuery query){
		init(model);
		List<CommunityArticleVo> newsArticleVos = iCommunityArticleService.select(query);
		model.addAttribute("newsArticles", newsArticleVos);
		return "/mobile/mobile_article_list";
	}

	
	@RequestMapping("/view")
	public String selectById(Model model, CommunityArticleQuery query){
		init(model);
		CommunityArticleVo newsArticleVos = iCommunityArticleService.selectById(query);
		model.addAttribute("newsArticle", newsArticleVos);
		return "/mobile/mobile_article_detail";
	}
	
}
