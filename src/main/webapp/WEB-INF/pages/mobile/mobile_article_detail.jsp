<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=0, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" type="text/css" href="<%= this.getServletContext().getContextPath() %>/resource/mobile/css/mobile.css?v=${version}" />
	<script type="text/javascript" src="<%= this.getServletContext().getContextPath() %>/resource/mobile/js/jquery.js?v=${version}"></script>
	<script type="text/javascript" src="<%= this.getServletContext().getContextPath() %>/resource/mobile/js/init.js?v=${version}"></script>
	<title>${newsArticle.title}</title>
	<meta http-equiv="Cache-Control" content="max-age=200" />
	<meta name="MobileOptimized" content="240" />
	<meta name="apple-touch-fullscreen" content="YES" />
	<meta name="apple-mobile-web-app-capable" content="no" />
	<link rel="apple-touch-icon" href="/site/images/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="57x57" href="http://static.cnbetacdn.com/images/57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="http://static.cnbetacdn.com/images/72.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="http://static.cnbetacdn.com/images/114.png" />
	<link rel="shortcut icon" href="/favicon.ico" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="applicable-device" content="pc,mobile">
	<meta name="MobileOptimized" content="width"/>
	<meta name="HandheldFriendly" content="true"/>
	<script>
	function imgload(e) {
	    var x = navigator, w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
	    if(typeof e.length !== 'undefined') {
	        for ( var a = 0; a < e.length; a ++ ) {
	            e[a].parentNode.style.height = w/6.4 + 'px';
	        }
	    } else {
	        e.parentNode.style.height = w/6.4 + 'px';
	    }
	}
	</script>
	<style>
	.cbimage{position:relative;}
	.cbimage-fixed {overflow: hidden;text-align:center;position:fixed;z-index:999;bottom:0;left:0;right:0;margin:auto;display:block}
	.cbimage img, .cbimage-fixed img {width: 100%; height: 100%;max-width: 100%; display: block;}
	</style>
</head>
<body class="cnbeta" style="margin-bottom:100px">
<div class="ui-body-c" data-role="page" id="page_view">

	<!-- head begin -->
	<%@ include file="mobile_header.jsp" %>
	<!-- head end -->
	
    <div data-role="content">

<article id="content_505535" class="article-holder">
    <header class="article-hd">
        <h1 class="article-tit">${newsArticle.title}</h1>
        <p class="article-byline">
            <a class="commnum" href="javascript:(0);"><i></i>0</a>
            <span>tianDiJiao.COM&nbsp;&nbsp;</span>
        <time class="time">${newsArticle.createTime}</time></p>
    </header>

<div style="text-align:left">
<script type="text/javascript">
/*20:3 移动站顶部点位*/
var cpro_id = "u2578965";
</script>
<script type="text/javascript">
var cpro_id="u961311";
(window["cproStyleApi"] = window["cproStyleApi"] || {})[cpro_id]={at:"3",pat:"8",cpro_h:"30",tn:"template_inlay_all_mobile_lu_native_ad_txt",rss1:"#FFFFFF",titFF:"%E5%BE%AE%E8%BD%AF%E9%9B%85%E9%BB%91",titFS:"14",rss2:"#000000",conpl:"0",conpr:"20",desfs:"10",rss3:"#FFFFFF",desbc:"#DCDCDC",pimc:"50",titSU:"0"}
</script>
</div>
	<!-- 正文 begin -->
    <div class="article-summ"><b>摘要：</b>${newsArticle.shortInfo}</div>
    <div class="articleCont">
	    <p style="text-align: left;">
	    	${newsArticle.content}
		</p>	    
    </div>
    <!-- 正文 end -->
<div style="text-align:left">
<script type="text/javascript">
    /*20:3 移动站顶部点位*/
    var cpro_id = "u2578965";
</script>
</div>

</article>

<!-- comment begin -->
<section id="commentHolder" class="comment-holder">
    <header class="titlebar tb-o">
        <h2 class="titlebar-t"><i></i>热门评论</h2>
        <a class="titlebar-r commentMore more" href="javascript:(0);">&gt;&gt;共有<b>0</b>条评论，显示<b>0</b>条</a>
    </header>
    <div class="hotcomments comments">
            </div>
    <a href="javascript:(0);" class="artBt publishComment">更多评论</a>
</section>
<!-- comment end -->

<div style="text-align:center">
</div>
<script type="text/javascript">setTimeout(function(){var url="http://m.cnbeta.com/mobile/m/v?id=505535&from=m";var g=document.createElement("script");g.async=1;g.src=url;document.body.insertBefore(g,document.body.firstChild);}, 2000);</script>
</div><!-- /content-->
   	<!-- footer begin -->
	<%@ include file="mobile_footer.jsp" %>
	<!-- footer end -->
</div>
<script charset="utf-8" type="text/javascript">
//<![CDATA[
jQuery(function ($) {
$("#content_505535").imgAutoSize();
});
//]]>
</script>
<div>
<script type="text/javascript">
    /*移动版悬浮通栏*/
    var cpro_id = "u1447794";
</script>
</div>
</html>