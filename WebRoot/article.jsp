<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML >
<html> 
<head>
	<title>JUNGLE论坛--我的文章</title>
	
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
	<div class = "fixclear"></div>
	<!-- 中间布局 -->
		<div class="aw-container-wrap" id="content">
			<!-- 容器 -->
			<div class="container">
				<!-- 整个内容块-->
				<div class="row">
					<!-- 清除浮动内容块 -->
					<div class="aw-content-wrap clearfix">
						<!-- 左部话题内容 -->
						<div class="col-sm-12 col-md-9 aw-main-content">
							<!-- 话题推荐bar -->
							<!-- 话题推荐bar -->
							<!-- 话题bar/标签bar -->
								<div class="aw-mod aw-topic-bar" id="question_topic_editor" data-type="question" data-id="2457">
									<div class="tag-bar clearfix">
										<span class="topic-tag" data-id="1024">
									<a href="##" class="text">标签，注意修改链接</a>
								</span>
	
									</div>
								</div>
							<!-- end 话题bar -->
							<!-- 具体话题 -->
							<div class="aw-mod aw-question-detail aw-item">
								<!--头部，标题 -->
								<div class="mod-head">
									<h1>
										<!--
                                        	作者：804762373@qq.com
                                        	时间：2018-10-30
                                        	描述：需修改，通过文章id获取标题
                                        -->
										标题，通过数据库获取							
									</h1>
								</div>
								<!-- 内容 -->
								<div class="mod-body">
									<div class="content markitup-box">
										<!-- 文章内容开始 -->
										三十岁是一个分水岭，一边是骄阳似火、山花烂漫的绚丽青春，一边是蝇营狗苟、满地鸡毛的凌乱人生，
										曾经的热血青年已经成为端着保温杯泡着枸杞的中年大叔。
										三十岁是一扇门，门里面是此时的平淡安逸，门外面是未知的挑战与激情。
										<!-- end 文章内容结束 -->
										<!-- 
											<pre class="prettyprint">&lt;button&nbsp;type="button"&nbsp;class="btn&nbsp;btn-lg&nbsp;btn-danger"&nbsp;data-toggle="popover"&nbsp;title="Popover&nbsp;title"&nbsp;data-content="And&nbsp;here's&nbsp;some&nbsp;amazing&nbsp;content.&nbsp;It's&nbsp;very&nbsp;engaging.&nbsp;Right?"&gt;点我弹出/隐藏弹出框&lt;/button&gt;<br>
											</pre>
											<br>
											<pre class="prettyprint">&lt;script&gt;<br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(function&nbsp;()&nbsp;{<br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$('[data-toggle="popover"]').popover()<br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;})<br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;<br>
											</pre>
										 -->

									</div>
								</div>
								
								<!--底部，包括时间 ，添加评论按钮，分享按钮 -->
								<div class="mod-footer">
									<div class="meta">
										<span class="text-color-999">2018-09-20</span>
											<!--
                                            	作者：804762373@qq.com
                                            	时间：2018-10-30
                                            	描述：跳转评论操作，加载评论
                                            -->
										<a data-id="2457" data-type="question" class="aw-add-comment text-color-999 " data-comment-count="0"><i class="glyphicon glyphicon-pencil"></i>添加评论</a>

										<div class="pull-right more-operate">

											<!-- <a class="text-color-999"  onclick="AWS.dialog('shareOut', {item_type:'question', item_id:2457});"> -->
											<a class="text-color-999 dropdown-toggle" data-toggle="dropdown">
												<!--
                                                	作者：804762373@qq.com
                                                	时间：2018-10-30
                                                	描述：可设置为复制链接地址
                                                -->
												<i class="glyphicon glyphicon-share"></i>分享 </a>
											<div aria-labelledby="dropdownMenu" role="menu" class="aw-dropdown shareout pull-right">
												<ul class="aw-dropdown-list">
													<li>
														<a onclick="AWS.User.share_out(&#39;tsina&#39;);"><i class="icon iconfont icon-weibo"></i>新浪微博</a>
													</li>
													<li>
														<a onclick="AWS.User.share_out(&#39;qzone&#39;);"> <i class="icon iconfont icon-Qzone"></i> QZONE</a>
													</li>
													<li>
														<a onclick="AWS.User.share_out(&#39;weixin&#39;);"><i class="icon iconfont icon-wechat"></i> 微信</a>
													</li>
												</ul>
											</div>

										</div>
									</div>
								</div>
								<!-- 相关链接 -->
								<div class="aw-question-related-box hide" style="display: none;">
									<form action="http://wenda.bootcss.com/publish/ajax/save_related_link/" method="post" onsubmit="return false" id="related_link_form">
										<div class="mod-head">
											<h2>与内容相关的链接</h2>
										</div>
										<div class="mod-body clearfix">
											<input type="hidden" name="item_id" value="2457">
											<input type="text" class="form-control pull-left" name="link" value="http://">

											<a onclick="AWS.ajax_post($(&#39;#related_link_form&#39;));" class="pull-left btn btn-success">提交</a>
										</div>
									</form>
								</div>
								<!-- end 相关链接 -->
							</div>
							<!-- 问题详细模块  -->
							<div class="aw-mod aw-question-comment">
								<div class="mod-head">
									<ul class="nav nav-tabs aw-nav-tabs active">
										<!--
                                        	作者：804762373@qq.com
                                        	时间：2018-10-30
                                        	描述：回复个数，后台获取
                                        -->
										<h2 class="hidden-xs">1 个回复</h2>
									</ul>
								</div>
								<div class="mod-body aw-feed-list">
									<div class="aw-item" uninterested_count="0" force_fold="0" id="answer_list_1141">
										<div class="mod-head">
											<a class="anchor" name="answer_1141"></a>
											<!-- 用户头像 -->
											<a class="aw-user-img aw-border-radius-5 pull-right" href="http://wenda.bootcss.com/people/frankfang7" data-id="2942"><img src="http://wenda.bootcss.com/static/common/avatar-mid-img.png" alt="" /></a>										<!-- end 用户头像 -->
											<div class="title">
												<p>
												<a class="aw-user-name" href="http://wenda.bootcss.com/people/frankfang7" data-id="2942">frankfang7</a>
												<p class="text-color-999 aw-agree-by hide">
													赞同来自:
												</p>
											</div>
										</div>
									<div class="mod-body clearfix">
										<!-- 评论内容 -->
										<div class="markitup-box">
											看你有多少页面，页面复杂度了。										
										</div>
										<!-- end 评论内容 -->
									</div>
									<div class="mod-footer">
										<!-- 社交操作 -->
										<div class="meta clearfix">
											<span class="text-color-999 pull-right">2017-08-17</span>
											<!-- 投票栏 -->
											<span class="operate">
												<a class="agree " onclick="AWS.User.agree_vote(this, '', 1141);"><i data-placement="right" title="" data-toggle="tooltip" class="glyphicon glyphicon-thumbs-up" data-original-title="赞同回复"></i> <b class="count">0</b></a>
																							</span>
											<!-- end 投票栏 -->
											<span class="operate">
												<a class="aw-add-comment" data-id="1141" data-type="answer" data-comment-count="0" data-first-click="hide" href="javascript:;"><i class="glyphicon glyphicon-pencil"></i> 0</a>
											</span>
											<!-- 可显示/隐藏的操作box -->
											<div class="more-operate">
											<div class="btn-group pull-left">
													<a class="text-color-999 dropdown-toggle" data-toggle="dropdown">
														<i class="icon icon-share"></i> 分享													</a>
													<div aria-labelledby="dropdownMenu" role="menu" class="aw-dropdown shareout pull-right">
														<ul class="aw-dropdown-list">
															<li>
														<a onclick="AWS.User.share_out(&#39;tsina&#39;);"><i class="icon iconfont icon-weibo"></i>新浪微博</a>
													</li>
													<li>
														<a onclick="AWS.User.share_out(&#39;qzone&#39;);"> <i class="icon iconfont icon-Qzone"></i> QZONE</a>
													</li>
													<li>
														<a onclick="AWS.User.share_out(&#39;weixin&#39;);"><i class="icon iconfont icon-wechat"></i> 微信</a>
													</li>
														</ul>
													</div>
												</div>
											</div>
											<!-- end 可显示/隐藏的操作box -->
										</div>
										<!-- end 社交操作 -->
									</div>
								</div>
							</div>
						<div class="mod-footer">
							<div class="aw-load-more-content hide" id="load_uninterested_answers">
								<span class="text-color-999 aw-alert-box text-color-999" href="javascript:;" tabindex="-1" onclick="AWS.alert('被折叠的回复是被你或者被大多数用户认为没有帮助的回复');">为什么被折叠?</span>
								<a href="javascript:;" class="aw-load-more-content"><span class="hide_answers_count">0</span> 个回复被折叠</a>
							</div>
							<div class="hide aw-feed-list" id="uninterested_answers_list"></div>
						</div>
					</div>
							<!-- end 问题详细模块 -->
							<!-- 回复编辑器 -->
							<!--
                            	作者：804762373@qq.com
                            	时间：2018-10-30
                            	描述：如果未登录时，显示块
                            -->
							<div class="aw-mod aw-replay-box">
								<a name="answer_form"></a>
								<p align="center">要回复问题请先
									<!--
                                    	作者：804762373@qq.com
                                    	时间：2018-10-30
                                    	描述：跳转登陆或注册
                                    -->
									<a href="http://wenda.bootcss.com/login/">登录</a>或
									<a href="http://wenda.bootcss.com/account/register/">注册</a>
								</p>
							</div>
							<!-- end 回复编辑器 -->
						</div>
						<!-- 侧边栏 -->
						<div class="col-md-3 aw-side-bar hidden-xs hidden-sm">
							<!-- 发起人 -->
							<div class="aw-mod">
								<div class="mod-head">
									<h3>发起人</h3>
								</div>
								<div class="mod-body">
									<dl>
										<dt class="pull-left aw-border-radius-5">
											<!-- 链接指向用户博客首页 用户头像 -->
											<a href="##"><img src="./img/no_head.png" class="aw-user-name" data-id="2577" alt="用户头像"></a>
										</dt>
										<dd class="pull-left">
											<!--
                                            	作者：804762373@qq.com
                                            	时间：2018-10-30
                                            	描述：用户主页地址，用户名称
                                            -->
											<a class="aw-user-name" href="##" data-id="2577">用户名称</a>
											<p></p>
										</dd>
									</dl>
								</div>
							</div>
							<!-- end 发起人 -->

							<!-- 相关问题 -->
							<div class="aw-mod">
								<div class="mod-head">
									<h3>相关问题</h3>
								</div>
								<div class="mod-body font-size-12">
									<ul>
										<li>-
											<!--
                                            	作者：804762373@qq.com
                                            	时间：2018-10-30
                                            	描述：链接数据库获取，内容数据库获取
                                            -->
											<a href="##">利用foreach,js获取链接，数量8-10个为宜</a>
										</li>
										
									</ul>
								</div>
							</div>
							<!-- end 相关问题 -->

							<!-- 问题状态 -->
							<div class="aw-mod question-status">
								<div class="mod-head">
									<h3>问题状态</h3>
								</div>
								<div class="mod-body">
									<ul>
										<!--
                                        	作者：804762373@qq.com
                                        	时间：2018-10-30
                                        	描述：数据库获取
                                        -->
										<li>最新活动: <span class="aw-text-color-blue">2018-09-20 11:11</span></li>
										<li>浏览: <span class="aw-text-color-blue">275</span></li>
										<li>关注: <span class="aw-text-color-blue">1</span> 人</li>
										<!--
                                        	作者：804762373@qq.com
                                        	时间：2018-10-30
                                        	描述：数据库获取用户头像等信息
                                        -->
										<li class="aw-border-radius-5" id="focus_users">
											<a href="##"><img src="./img/no_head.png" class="aw-user-name" data-id="2577" alt="用户头像"></a>
										</li>
									</ul>
								</div>
							</div>
							<!-- end 问题状态 -->
						</div>
						<!-- end 侧边栏 -->
					</div>
				</div>
			</div>
		</div>
	<!-- END中间布局 -->
	<jsp:include page="bottom.jsp" flush="false" />
</body>
</html>
