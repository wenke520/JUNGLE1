package com.service.impl;

import com.dao.IUserInfoDao;
import com.dao.impl.UserInfoDaoImpl;
import com.entity.UserInfo;
import com.service.IUserinfoService;
/**
 * userinfo 的service层实现类
 * @author Administrator
 *
 */
public class UserinfoService implements IUserinfoService{

	IUserInfoDao iuserinfodao = new UserInfoDaoImpl();
	/**
	 * 注册用户
	 * @param userInfo
	 * @return
	 */
	@Override
	public boolean insertUser(UserInfo userInfo) {
		return iuserinfodao.insertUser(userInfo) > 0;
	}
	/**
	 * 登录  根据用户名密码查找
	 * @param user_name 用户名
	 * @param user_pwd 密码
	 * @return
	 */
	@Override
	public UserInfo queryUserByLogin(String user_name, String user_pwd) {
		return iuserinfodao.queryUserByLogin(user_name, user_pwd);
	}
}
