package com.controller;

import java.io.IOException;

import javax.enterprise.inject.New;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.UserInfo;
import com.service.IArticleService;
import com.service.IUserinfoService;
import com.service.impl.ArticleServiceImpl;
import com.service.impl.UserinfoService;
import com.util.SendMailUtil;
/**
 * 用户的controller实现层
 * @author Administrator
 *
 */
public class UserServlet extends BaseServlet{
	//创建service层 UserInfo实体对象
	IUserinfoService userinfoService = new UserinfoService();

	/**
	 * 注册用户的方法
	 * @param request
	 * @param response
	 * @throws IOException 
	 */
	public void insertUser(HttpServletRequest request, HttpServletResponse response) throws IOException{
		//获取用户输入的用户名
		String username = request.getParameter("username");
		//获取用户输入的密码
		String password = request.getParameter("password");
		//获取用户输入的邮箱验证码
		String email = request.getParameter("email");
		
		System.out.println(username+" "+password+" "+email);
		
		//输入的非空判断
		if(username != null && password != null && email != null){
			//用户名格式验证
			if(username.matches("[\u4e00-\u9fa5_a-zA-Z0-9]{2,10}")){
				//密码格式验证
				if(password.matches("[^\u4e00-\u9fa5^\\s]{6,18}")){
					//email格式验证
					if(email.matches(".+@.+")){
						//如果用户输入的数据没问题,就放UserInfo入实体类
						UserInfo userinfo = new UserInfo();
						userinfo.setUser_name(username);
						userinfo.setUser_pwd(password);
						userinfo.setUser_email(email);

						//调用service层进行操作
						if(userinfoService.insertUser(userinfo)){
							//操作成功,收到返回结果
							request.setAttribute("success","注册成功");
							//跳转登录页面
							response.sendRedirect("login.jsp");
						}else{
							//注册失败
							request.setAttribute("error","注册失败");
						}
					}else{
						//邮箱格式不正确
						request.setAttribute("error","邮箱格式不正确");
					}
				}else{
					//密码格式不正确
					request.setAttribute("error","用户名格式不正确");
				}
			}else{
				//用户名格式不正确
				request.setAttribute("error","用户名格式不正确");
			}
		}else{
			//有一项为空的时候
			request.setAttribute("error","用户名,密码,邮箱不能为空");
		}
		System.out.println(request.getAttribute("error"));
	}

	/**
	 * 登录的方法
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void queryUserByLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		//获取用户输入的用户名
		String username = request.getParameter("username");
		//获取用户输入的密码
		String password = request.getParameter("password");
		//获取用户的滑块是否通过   暂不实现后台

		//输入的非空判断
		if(username != null && password != null){
			//用户名格式验证
			if(username.matches("[\u4e00-\u9fa5_a-zA-Z0-9]{2,10}")){
				//密码格式验证
				if(password.matches("[^\u4e00-\u9fa5^\\s]{6,18}")){
					//调用service层进行操作收到返回结果
					UserInfo userinfo =  userinfoService.queryUserByLogin(username, password);
					//调用service层进行操作
					if(userinfo!= null){
						//登录成功
						request.getRequestDispatcher("index.jsp").forward(request, response);
						//把用户的信息存起来
						request.getSession().setAttribute("userinfo",userinfo);
						System.out.println("登录成功");
					}else{
						System.out.println(userinfo);
						//登录失败 未查询到该用户
						request.setAttribute("error","登录失败 未查询到该用户");
						response.sendRedirect("login.jsp");
						System.out.println(request.getAttribute("error"));
					}
				}else{
					//密码格式不正确
					request.setAttribute("error","用户名格式不正确");
				}
			}else{
				//用户名格式不正确
				request.setAttribute("error","用户名格式不正确");
			}
		}else{
			//有一项为空的时候
			request.setAttribute("error","用户名,密码,邮箱不能为空");
		}
	}
	
	
	/**
	 * 发送邮箱验证码的方法
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void sendMail(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String inbox = request.getParameter("inbox");
		if(inbox!=null){
			//创建6位随机数作为验证码
			String mailCode = com.util.NumberUtil.generateVerifyCode(6);
			//回响给页面
			response.getWriter().print(mailCode);
			System.out.println(mailCode);
			//request.setAttribute("mailCode", mailCode);
			//System.out.println(request.getAttribute("mailCode"));
			//request.getRequestDispatcher("regist.jsp").forward(request, response);
			new SendMailUtil().send(inbox, "JUNGLE验证码", mailCode);
		}else{
			
		}
	}
}
