<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML >
<html>
<head>

<title>发表文章页面</title>
<link rel="icon" type="image/x-icon" href="images/jlogo2.png"/>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 百度富文本框打包 -->
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="ueditor/lang/zh-cn/zh-cn.js"></script>
	
<style type="text/css">
#frm {
	text-align: center;
	width: 80%;
	height: 100%;
}

.container {
	margin-top: 80px;
}
.panel-body{
	height: 840px;
}
.mybtn{
	width: 666px;
}
</style>
</head>

<body>
	<!-- 引用顶部导航 -->
	<jsp:include page="nav.jsp" flush="false" />
	<!-- END引用顶部导航 -->

	<div class="container">

		<div class="col-lg-3 col-md-4">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">个人信息</h3>
				</div>
				<div class="panel-body">这是一个基本的面板</div>
			</div>
		</div>

	<div class="col-lg-9 col-md-8">
		<form id="frm" name="frm" action="" method="post">
			<div class="input-group">
				<span class="input-group-addon">@</span> <input type="text"
					class="form-control" placeholder="请输入文章的标题">
			</div>
			<br>
			<script id="myeditor" name="article_content" type="text/plain"
				style="height: 500px;"></script>
		</form>
		<br>
		<button id="mybtn" type="button" class="mybtn btn btn-success btn-lg">上传本篇文章</button>
	</div>
	</div>
	<div style="margin-left: 1250px;"><a href="index.jsp"><button>返回首页</button></a></div>
	<!-- 引用底部 -->
	<jsp:include page="bottom.jsp" flush="false" />
	<!-- END引用底部 -->
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
    	//加载编辑器
	    var ue = UE.getEditor('myeditor');

	    document.getElementById("mybtn").onclick = function(){
	    	 document.getElementById("myeditor").value = ue.getContent();
	    	 frm.submit();
	    };
    </script>
</body>
</html>
