<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>导航模板</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="icon/iconfont.css">
	<link href="./css/common.css" rel="stylesheet" type="text/css">
	<link href="./css/link.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script src="./js/jquery.2.js" type="text/javascript"></script>
	<script src="./js/jquery.form.js" type="text/javascript"></script>
	<script src="./js/plug-in_module.js" type="text/javascript"></script>
	<script src="./js/aws.js" type="text/javascript"></script>
	<script src="./js/Markdown.Converter.js" type="text/javascript"></script>
	<script src="./js/Markdown.Sanitizer.js" type="text/javascript"></script>
	<script src="./js/Markdown.Editor.js" type="text/javascript"></script>
	<script src="./js/prettify.js" type="text/javascript"></script>
	<script type="text/javascript" src="./js/compatibility.js"></script>
	<script src="./HYZ/iconfont.js"></script>
	<script type="text/javascript">
		var G_INDEX_SCRIPT = '';
		var G_SITE_NAME = 'CCND论坛';
		var G_BASE_URL = 'localhost/CCND/';
		
	</script>
</head>

<body>
	<!-- 导航 -->
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<!-- Login -->
			<form class="navbar-form navbar-left" role="search">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">JUNGLE论坛</a>
				</div>
			</form>
			<!-- ENDLogin -->
			
			<!-- 搜索框 -->
				<div class="aw-search-box  hidden-xs hidden-sm">
					<!--
                    	作者：804762373@qq.com
                    	时间：2018-10-30
                    	描述：搜索，指向search.do
                    -->
					<form class="navbar-search" action="search.do" id="global_search_form" method="post">
						<input class="form-control search-query" type="text" placeholder="搜索问题、话题或人" autocomplete="off" name="q" id="aw-search-query">
						<!--
                        	作者：804762373@qq.com
                        	时间：2018-10-30
                        	描述：搜索操作入口，需要修改
                        -->
						<span title="搜索" id="global_search_btns" onclick="$(&#39;#global_search_form&#3).submit();"><i class="glyphicon glyphicon-search"></i></span>
						<div class="aw-dropdown">
							<div class="mod-body">
								<p class="title">输入关键字进行搜索</p>
								<ul class="aw-dropdown-list hide"></ul>
								<p class="search"><span>搜索:</span>
									<a onclick="$(&#39;#global_search_form&#39;).submit();"></a>
								</p>
							</div>
							<div class="mod-footer">
								<!-- 跳转发起问题页面 -->
								<a href="publish.jsp" onclick="$(&#39;#header_publish&#39;).click();" class="pull-left btn btn-mini btn-success publish">提起新话题</a>
							</div>
						</div>
					</form>
				</div>
				<!-- end 搜索框 -->
			<!-- END搜索框 -->
					<button type="submit" class="btn btn-default btn-warning"><span class="glyphicon glyphicon-th-list">&nbsp;发现话题</span></button>
					<a href="publish.jsp"><button type="button" class="btn btn-default navbar-btn btn-danger"><span class="glyphicon glyphicon-pencil">&nbsp;提起新话题</span></button></a>
			
			<!-- 登录注册按钮 
			 <div id="myDL" class="aw-user-nav">
					
			 		<span>
						<a class="register btn btn-normal btn-success" href="regist.jsp"><span class="glyphicon glyphicon-user">&nbsp;注册</span></a>
						<a class="login btn btn-normal btn-primary" href="login.jsp"><span class="glyphicon glyphicon-log-in">&nbsp;登录</span></a>
					</span>
					
			
			</div>  
			 end 登陆&注册栏 -->
			 
			 <form class="navbar-form navbar-right" role="search">
				<div id="myDL" class="btn-group">
					<a href="login.jsp"><button type="button" class="btn btn-default  btn-primary"><span class="glyphicon glyphicon-log-in"></span><b id="loginD">&nbsp;登录</b></button></a>
					<!-- <button type="button" class="btn btn-default dropdown-toggle  btn-info" 
							data-toggle="dropdown">
						<span class="caret"></span>
						<span class="sr-only">切换下拉菜单</span>
					</button> -->
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">个人中心</a></li>
						<li><a href="#">我的订阅</a></li>
						<li><a href="#">我的粉丝</a></li>
						<li class="divider"></li>
						<li><a href="#">退出登录</a></li>
					</ul>
					<a href="regist.jsp"><button type="button" class="register btn btn-normal btn-success"><span class="glyphicon glyphicon-user"></span>&nbsp;注册</button></a>
				</div> 
			</form> 
			<!-- END登录注册按钮 -->
			
		</div>
	</nav>
	<!-- END导航 -->
	<script type="text/javascript">
		if("${userinfo }" != null){
			$("#myDL").
		}
	</script>
</body>
</html>
