package com.service.impl;

import java.util.ArrayList;

import com.service.IRegistService;
import com.util.SendMailUtil;


public class userService implements IRegistService{


	@Override
	public String SendMail(String Email, String mailCode) {
		// TODO Auto-generated method stub
		new SendMailUtil().send(Email, "JUNGLE论坛注册验证码", mailCode);
		return null;
	}
}
