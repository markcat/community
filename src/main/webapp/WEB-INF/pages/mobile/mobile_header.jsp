<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <div class="ui-header ui-bar-a" data-role="header">
        <div class="header_top">
            <div class="back">
	            <a class="ui-link" title="首页" data-rel="back" href="javascript:history.back();">
	            	<span>返回</span>
	            </a>
            </div>
            <div class="header_top_logo">
                <a class="ui-link">${empty className ? "资讯" : className}</a>
            </div>
            <a title="首页" href="<%= this.getServletContext().getContextPath() %>"><div class="home"><i></i></div></a>
        </div>
    </div>