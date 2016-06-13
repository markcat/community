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
	<title>资讯列表</title>
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
	<!-- <script src="http://cpro.baidustatic.com/cpro/ui/mi.js"></script> -->
	<style>
	.cbimage{position:relative;}
	.cbimage-fixed {overflow: hidden;text-align:center;position:fixed;z-index:999;bottom:0;left:0;right:0;margin:auto;display:block}
	.cbimage img, .cbimage-fixed img {width: 100%; height: 100%;max-width: 100%; display: block;}
	</style>
</head>
<body class="cnbeta" style="margin-bottom:100px">
<div class="ui-body-c" data-role="page" id="page_list">

	<!-- head begin -->
	<%@ include file="mobile_header.jsp" %>
	<!-- head end -->
    
    <div data-role="content">
		<div style="text-align:left">
		<%-- 广告 top begin --%>
		<%-- 广告 top end --%>
		<!-- 移动版自适应 -->
		<ins class="adsbygoogle adslot_1"
		     style="display:block"
		     data-ad-client="ca-pub-9066977823953139"
		     data-ad-slot="5449907018"
		     data-ad-format="auto">
		</ins>
		<!-- <script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script> -->
		</div>
		
		<div class="module">		
		   	<!-- 列表 begin -->
		    <ul class="module_list">
		    	<c:forEach items="${newsArticles}" var="newsArticles">
					<li class="clear">
			            <div style="width:85%"><a href="javascript:(0);" onclick="viewById('${newsArticles.id}')" data-transition="slide">${newsArticles.title}</a></div>
			            <em class="list_ico">
			            	<i class="ico_view">${newsArticles.readTimes}</i>
			            </em>
					</li>
		    	</c:forEach>
		    </ul>
		    <!-- 列表 end -->
		    
		    <!-- page begin -->
		    <div class="pager">
			    <div id="yw0" class="pages">
				    <a href="javascript:void(0);" class="first ui-link">«</a>
					<a href="javascript:void(0);" class="page-prev ui-link">上一页</a>
					<a class="page-next" href="#">下一页</a>
					<a class="last" href="#">»</a>
				</div>
			</div>
			<!-- page end -->
		</div>
		
		<div style="text-align:left">
			<script type="text/javascript">
				var cpro_id="u961311";
				(window["cproStyleApi"] = window["cproStyleApi"] || {})[cpro_id]={at:"3",hn:"0",wn:"0",imgRatio:"1.7",scale:"20.20",pat:"6",tn:"template_inlay_all_mobile_lu_native",rss1:"#FFFFFF",adp:"1",ptt:"0",titFF:"%E5%BE%AE%E8%BD%AF%E9%9B%85%E9%BB%91",titFS:"14",rss2:"#000000",titSU:"0",ptbg:"70",ptp:"1"}
			</script>
		</div>


	</div>
	<!-- /content-->
	
	<!-- footer begin -->
	<%@ include file="mobile_footer.jsp" %>
	<!-- footer end -->
</div>

<div>
	<script type="text/javascript">
	    /*移动版悬浮通栏*/
	    var cpro_id = "u1447794";
	</script>
	<!-- <script src="http://cpro.baidustatic.com/cpro/ui/cm.js" type="text/javascript"></script> -->
</div>

</body>
<input type="hidden" id="contextPath" value="<%= this.getServletContext().getContextPath() %>">
<script type="text/javascript">
function viewById(id){
	var contextPath = $("#contextPath").val();
	location.href= contextPath + "/mobile/article/view?id=" + id;
}
</script>
</html>