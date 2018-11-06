<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML >
<html> 
<head>
	<title>JUNGLE论坛</title>
	
	<link rel="stylesheet" type="text/css"
		href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css"
		href="bootstrap/css/bootstrap-theme.min.css">
		<link rel="icon" type="image/x-icon" href="images/jlogo2.png"/>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
		#mydiv {
			margin-top: 60px;
			height: 600px;
			margin-left: 200px;
		}
		
		#content {
			margin-top: 90px;
			
		}
		.ss{
			
		}
	</style>
</head>

<body>
	<jsp:include page="nav.jsp" flush="false" />
	<!-- 中间布局 -->
	<div class="fixclear"></div>
	<div class="container" id="content">
		<!-- 左边内容栏 -->
		<div class="col-lg-2 col-xs-2 col-md-2">
			<!-- 热门话题 -->
			<div class="aw-mod">
				<div class="mod-head">
					<h3>热门话题</h3>
				</div>
				<hr>
				<div class="mod-body font-size-12">
					<ul>
						<!-- 热门话题列表 -->
						<li>-
							<!-- 链接数据库获取，内容数据库获取 -->
							<a href="##">利用foreach,js获取链接，数量8-10个为宜</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- end 热门话题 -->
		</div>
		<!-- 右边标签页 -->
		<div class="col-lg-10 col-xs-10 col-md-10 ss">
			<!-- 右边标签页 -->
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">论文 </a></li>
				<li><a href="#ios" data-toggle="tab">视频</a></li>
				<li class="dropdown"><a href="#" id="myTabDrop1"
					class="dropdown-toggle" data-toggle="dropdown">Java <b
						class="caret"></b>
				</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
						<li><a href="#jmeter" tabindex="-1" data-toggle="tab">web</a></li>
						<li><a href="#ejb" tabindex="-1" data-toggle="tab">资料</a></li>
					</ul></li>
			</ul>
			<!-- 标签页内容模块 -->
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="home">
				<!-- 内容，从数据库获取 -->
					<div class="aw-item active" data-topic-id="5,">
						<!-- 用户头像，点击进入用户主页 -->
						<a class="aw-user-name hidden-xs" data-id="4561" href="http://wenda.bootcss.com/people/FUCK%E4%BD%9F" rel="nofollow">
							<img src="images/no_head.png" alt="" />
						</a>	
						<!-- 文章标题 -->
						<div class="aw-question-content">
							<h4>
								<a href="http://wenda.bootcss.com/question/2456">文章标题</a>
							</h4>
							<!-- 回复链接 -->
							<a href="http://wenda.bootcss.com/question/2456#!answer_form" class="pull-right text-color-999">回复</a>
							<p>
							<!-- 点击进入用户主页 -->
								<a href="http://wenda.bootcss.com/people/FUCK%E4%BD%9F" class="aw-user-name">用户名</a> 
								<!-- 问题信息 -->
								<span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 1 次浏览 • 2018-07-16 15:39 
								</span>
							</p>
						</div>
					</div>
					<div class="aw-item active" data-topic-id="5,">
						<!-- 用户头像，点击进入用户主页 -->
						<a class="aw-user-name hidden-xs" data-id="4561" href="http://wenda.bootcss.com/people/FUCK%E4%BD%9F" rel="nofollow">
							<img src="images/no_head.png" alt="" />
						</a>	
						<!-- 文章标题 -->
						<div class="aw-question-content">
							<h4>
								<a href="http://wenda.bootcss.com/question/2456">文章标题</a>
							</h4>
							<!-- 回复链接 -->
							<a href="http://wenda.bootcss.com/question/2456#!answer_form" class="pull-right text-color-999">回复</a>
							<p>
							<!-- 点击进入用户主页 -->
								<a href="http://wenda.bootcss.com/people/FUCK%E4%BD%9F" class="aw-user-name">用户名</a> 
								<!-- 问题信息 -->
								<span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 1 次浏览 • 2018-07-16 15:39 
								</span>
							</p>
						</div>
					</div>
					<div class="aw-item active" data-topic-id="5,">
						<!-- 用户头像，点击进入用户主页 -->
						<a class="aw-user-name hidden-xs" data-id="4561" href="http://wenda.bootcss.com/people/FUCK%E4%BD%9F" rel="nofollow">
							<img src="images/no_head.png" alt="" />
						</a>	
						<!-- 文章标题 -->
						<div class="aw-question-content">
							<h4>
								<a href="http://wenda.bootcss.com/question/2456">文章标题</a>
							</h4>
							<!-- 回复链接 -->
							<a href="http://wenda.bootcss.com/question/2456#!answer_form" class="pull-right text-color-999">回复</a>
							<p>
							<!-- 点击进入用户主页 -->
								<a href="http://wenda.bootcss.com/people/FUCK%E4%BD%9F" class="aw-user-name">用户名</a> 
								<!-- 问题信息 -->
								<span class="text-color-999">发起了问题 • 1 人关注 • 0 个回复 • 1 次浏览 • 2018-07-16 15:39 
								</span>
							</p>
						</div>
					</div>
					<!-- 内容结束 -->
					
				</div>
				<div class="tab-pane fade" id="ios">
					<div>
						<a href="#">我是一段视频,是一段很长的论视频</a>
					</div>
					<div>
						<a href="#">我是一段视频,是一段很长的论视频</a>
					</div>
					<div>
						<a href="#">我是一段视频,是一段很长的论视频</a>
					</div>
				</div>
				<div class="tab-pane fade" id="jmeter">
					<div>JAVA WEB标签页</div>
				</div>
				<div class="tab-pane fade" id="ejb">
					<div>JAVA 资料 标签页</div>
				</div>
			</div>
		</div>
	</div>
	<div class="fixclear"></div>
	<!-- END中间布局 -->
	<jsp:include page="bottom.jsp" flush="false" />
</body>
</html>
