package com.service;

import com.entity.UserInfo;
/**
 * userinfo 的service层接口
 * @author Administrator
 *
 */
public interface IUserinfoService {
	/**
	 * 注册用户
	 * @param userInfo 用户的实体类
	 * @return
	 */
	boolean insertUser(UserInfo userInfo);
	
	/**
	 * 登录  根据用户名密码查找
	 * @param user_name 用户名
	 * @param user_pwd 密码
	 * @return
	 */
	UserInfo queryUserByLogin(String user_name,String user_pwd);
}
