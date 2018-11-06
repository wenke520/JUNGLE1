package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.IArticleService;
import com.service.impl.ArticleServiceImpl;

/**
 * 文章的controller层
 * @author Administrator
 *
 */
public class ArticleServlet extends BaseServlet {
	//创建service层 Article实体对象
	IArticleService userinfoService = new ArticleServiceImpl();
	
	/**
	 * 添加文章的方法
	 * @param request
	 * @param response
	 */
	public void insertArticle(HttpServletRequest request, HttpServletResponse response){
		
	}
}
