<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>

<title>个人中心页面</title>
<meta name="keywords" content="keyword1,keyword2,keyword3">
<meta name="description" content="this is my page">
<meta name="content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap-theme.min.css">
<link rel="icon" type="image/x-icon" href="images/jlogo2.png"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
<style type="text/css">
.left {
/*	background: url(images/bg.jpg) no-repeat;   */
	background-size: contain;
	height: 560px;
}

.container {
	margin-top: 70px;
}

.picture {
	margin-left: 35px;
	margin-bottom: 20px;
}

#head {
	margin-bottom: 10px;
	margin-top: 35px;
	margin-left: 20px;
}

.message {
	margin-left: 45px;
	margin-bottom: 40px;
	border-collapse: separate;
	border-spacing: 7px 1px;
}
</style>

</head>

<body>

	<!-- 引用导航 -->
	<jsp:include page="nav.jsp" flush="false" />
	<!-- END引用导航 -->

	<!-- 中间个人信息页面 -->
	<div class="container">
		<!-- 左边个人信息展示页面 -->
		<div class="col-lg-4 col-xs-4">
			<div class="left">
				<div class="picture">
					<a href="#" id="head"><img src="images/head1.jpg" width="80"
						id="head"></a><br />
					<!-- 数据库：头像的src -->
					<a href="#"><img src="images/collect5.png" width="30"></a> 
					<a href="focus.jsp"><img src="images/focus3.png" width="30"></a> 
					<a href="#"><img src="images/fans4.png" width="30"></a>
					<a href="#"><img src="images/gold9.png" width="30"></a> 
					<a href="set2.jsp"><img src="images/set4.png" width="30"></a>
				</div>
				<table class="message">
					<tr>
						<td>昵称</td>
						<td>张三</td>
					</tr>
					<!-- 数据库: 昵称-->
					<tr>
						<td>性别</td>
						<td>男</td>
					</tr>
					<!-- 数据库 ：性别 -->
					<tr>
						<td>年龄</td>
						<td>18</td>
					</tr>
					<!-- 数据库 ：年龄-->
					<tr>
						<td>生日</td>
						<td>1998.8.1</td>
					</tr>
					<!-- 数据库 ：生日-->
					<tr>
						<td>邮箱</td>
						<td>123.com</td>
					</tr>
					<!-- 数据库 ：邮箱-->
				</table>
			</div>
		</div>
		<!-- END左边个人信息展示页面 -->

		<!-- 右边文章展示页面 -->
		<div class="col-lg-8 col-xs-8">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">菜鸟教程</a></li>
				<li><a href="#ios" data-toggle="tab">iOS</a></li>
				<li class="dropdown"><a href="#" id="myTabDrop1"
					class="dropdown-toggle" data-toggle="dropdown">Java <b
						class="caret"></b>
				</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
						<li><a href="#jmeter" tabindex="-1" data-toggle="tab">
								jmeter</a></li>
						<li><a href="#ejb" tabindex="-1" data-toggle="tab"> ejb</a></li>
					</ul></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="home">
					<p>菜鸟教程是一个提供最新的web技术站点，本站免费提供了建站相关的技术文档，帮助广大web技术爱好者快速入门并建立自己的网站。菜鸟先飞早入行——学的不仅是技术，更是梦想。</p>
				</div>
				<div class="tab-pane fade" id="ios">
					<p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和
						Apple TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS
						是苹果的移动版本。</p>
				</div>
				<div class="tab-pane fade" id="jmeter">
					<p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
				</div>
				<div class="tab-pane fade" id="ejb">
					<p>Enterprise Java
						Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web
						Logic 等）的 J2EE 上。</p>
				</div>
			</div>
		</div>
		<!-- END右边文章信息展示页面 -->

	</div>
	<!-- END中间个人信息页面 -->


	<!-- 引用底部 -->
	<div>
		<jsp:include page="bottom.jsp" flush="false" />
	</div>
	<!-- END引用底部 -->
</body>
</html>
