package com.tiandijiao.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tiandijiao.model.bean.SuccessMsg;
import com.tiandijiao.pojo.CommunityArticle;
import com.tiandijiao.pojo.query.CommunityArticleQuery;
import com.tiandijiao.pojo.vo.CommunityArticleVo;
import com.tiandijiao.service.ICommunityArticleService;



@Controller
@RequestMapping("/manager/communityarticle")
public class CommunityArticleController {
	
	/*@Autowired(required=true)
	@Qualifier(value="iCommunityArticleService")
	private ICommunityArticleService iCommunityArticleService;*/
	
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
	
	
	@RequestMapping("/new")
	public String addPage(Model model, CommunityArticleQuery query){
		init(model);
		model.addAttribute("slp", "articlenew");
		return "/manager/kernel/manager_article_edit";
	}
	


	@RequestMapping("/save")
	@ResponseBody
	public SuccessMsg save(Model model, CommunityArticle query){
		SuccessMsg msg = iCommunityArticleService.insert(query);
		return msg;
	}
	
	
	@RequestMapping("/list")
	public String list(Model model, CommunityArticleQuery query){
		init(model);
		List<CommunityArticleVo> newsArticleVos = iCommunityArticleService.select(query);
		model.addAttribute("newsArticles", newsArticleVos);
		model.addAttribute("slp", "articlelist");
		return "/manager/kernel/manager_article_list";
	}
}





















