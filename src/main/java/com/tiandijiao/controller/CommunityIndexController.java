package com.tiandijiao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager")
public class CommunityIndexController {

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
	
	
	@RequestMapping("/communityindex")
	public String index(Model model){
		init(model);
		model.addAttribute("slp", "communityindex");
		return "/manager/kernel/manager_index";
	}	
	
	
	@RequestMapping(value={"", "/", "/login"})
	public String login(Model model){
		init(model);
		return "/manager/manager_login";
	}
	
}
