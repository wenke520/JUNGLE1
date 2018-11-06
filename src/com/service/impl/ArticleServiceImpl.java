package com.service.impl;


import com.dao.IArticleDao;
import com.dao.impl.ArticleDaoImpl;
import com.entity.Article;
import com.service.IArticleService;
/**
 * 文章service层实现类
 * @author Administrator
 *
 */
public class ArticleServiceImpl implements IArticleService{
	
	//创建文章dao层的对象
	IArticleDao iarticledao = new ArticleDaoImpl();
	
	/**
	 * 添加文章
	 * @param Article 文章对象
	 * @return
	 */
	@Override
	public boolean insertArticle(Article article) {
		
		return iarticledao.insertArticle(article) > 0;
	}
	
}
