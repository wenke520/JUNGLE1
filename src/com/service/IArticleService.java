package com.service;

import com.entity.Article;

/**
 * 文章的service层接口
 * @author Administrator
 *
 */
public interface IArticleService {
	/**
	 * 添加文章
	 * @param Article 文章对象
	 * @return
	 */
	boolean insertArticle(Article article);
} 
