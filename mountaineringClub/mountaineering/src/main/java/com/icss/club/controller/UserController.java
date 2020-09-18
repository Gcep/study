package com.icss.club.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icss.club.entity.User;
import com.icss.club.service.UserService;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/user_index",method=RequestMethod.POST)
	public ModelAndView userLogin(HttpServletRequest request) {
		//获取请求参数（用户名，密码）
		String uName=request.getParameter("name");
		String uPassword=request.getParameter("password");
		ModelAndView mav=new ModelAndView();
		User user=new User();
		user.setUName(uName);
		user.setUPassword(uPassword);
		user.setUStatus(0);
		user=userService.getOne(user);	
		//判断是否存在该会员
		if(user!=null) {
			//更新用户登录时间
			user.setULogindate(new Date((new java.util.Date()).getTime()));
			userService.update(user);
			HttpSession session = request.getSession();
	        session.setAttribute("user",user);
			mav.addObject("user", user);
			//跳转首页请求控制器
			mav.setViewName("redirect:/userActivity");
			return mav;	
		}else {
			//不存在该会员
			String msg="用户名或密码错误！";
			mav.addObject("msg", msg);
			//返回登录页
			mav.setViewName("forward:/login.jsp");
			return mav;
		}
		
	}
	@RequestMapping(value="/pending_user",method=RequestMethod.POST)
	public ModelAndView getPendingUser(HttpServletRequest request,@RequestParam("pageName")String pagename) {
		ModelAndView mav=new ModelAndView();
		User user=new User();
		user.setUStatus(1);
		List<User> users=userService.getAllById(user);
		System.out.println(users);
		mav.addObject("users", users);
		mav.setViewName(pagename);
		return mav;
		
	}
	@RequestMapping(value="/approve",method=RequestMethod.POST)
	public ModelAndView approve(HttpServletRequest request,@RequestParam("pageName")String pagename,@RequestParam("activity")String us) {
		ModelAndView mav=new ModelAndView();
		String[] list=us.split("\\.");
		User user=new User();
		user.setUId(Integer.valueOf(list[0]));
		user.setUStatus(Integer.valueOf(list[1]));
		if (Integer.valueOf(list[1])==0) {
			user.setURegdate(new Date((new java.util.Date().getTime())));
		}
		userService.update(user);
		User u=new User();
		u.setUStatus(1);
		List<User> users=userService.getAllById(u);
		mav.addObject("users", users);
		mav.setViewName(pagename);
		return mav;
		
	}
	@RequestMapping(value="/allUser",method=RequestMethod.POST)
	public ModelAndView allUser(@RequestParam("pageName")String pagename) {
		ModelAndView mav=new ModelAndView();
		User user=new User();
		user.setUStatus(0);
		List<User> users=userService.getAllById(user);
		mav.addObject("users", users);
		mav.setViewName(pagename);
		return mav;
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public ModelAndView deleteUser(HttpServletRequest request,@RequestParam("pageName")String pagename,@RequestParam("aId")Integer uid) {
		ModelAndView mav=new ModelAndView();
		userService.delete(uid);
		User user=new User();
		user.setUStatus(0);
		List<User> users=userService.getAllById(user);
		System.out.println(users);
		mav.addObject("users", users);
		mav.setViewName(pagename);
		return mav;
	}
	
	@RequestMapping("/register")
	public ModelAndView register(@RequestParam String uname,@RequestParam String realname,@RequestParam String password,@RequestParam Integer gender,@RequestParam String idCard,@RequestParam String phone,@RequestParam String email,@RequestParam String address) {
		User users=new User();
		users.setUName(uname);
		//根据请求参数昵称判断是否已经存在
		users=userService.getOne(users);
		ModelAndView mav=new ModelAndView();
		if(users==null) {
			//不存在则获取基本信息
			User user=new User();
			user.setUName(uname);
			user.setUCardid(idCard);
			user.setURealname(realname);
			user.setUPassword(password);
			user.setUSex(gender);
			user.setUPhone(phone);
			user.setUEmail(email);
			user.setURegdate(new Date((new java.util.Date()).getTime()));
			user.setUStatus(1);
			user.setUAddress(address);
			int result=userService.add(user);
			//判断是否申请注册成功
			if(result>0) {
				String msg="申请审批成功";
				mav.addObject("msg", msg);
				mav.setViewName("forward:/login.jsp");
			}else {
				String msg="申请失败，请重新申请";
				mav.addObject("msg", msg);
				mav.setViewName("forward:/login.jsp#signup");
			}
		}else {
			String msg="该用户名已经被使用";
			mav.addObject("msg", msg);
			mav.setViewName("forward:/login.jsp");
		}
		return mav;
	}
	@RequestMapping(value="/change_user",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> changeInfo(HttpServletRequest request, @RequestParam("Id") Integer uid,@RequestParam("Name") String uname,@RequestParam("RealName") String realname,@RequestParam("Phone") String phone,@RequestParam("Email") String email,@RequestParam("Address") String address) {
		Map<String, Object> map=new HashMap<String, Object>();
		User user=new User();
		user.setUId(uid);
		user.setUAddress(address);
		user.setUEmail(email);
		user.setUName(uname);
		user.setUPhone(phone);
		user.setURealname(realname);
		int result=userService.update(user);
		String msg="";
		if(result!=0) {
			user=userService.getById(uid);
			HttpSession session = request.getSession();
	        session.setAttribute("user",user);
			msg+="修改成功";
		}else {
			msg+="修改失敗";
		}
		map.put("msg", msg);
		map.put("user", user);
		return map;
	}
	
	@RequestMapping(value="/change_user2",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> changeInfo(@RequestParam("uid") Integer uid,@RequestParam("uname") String uname,@RequestParam("uRealname") String realname,@RequestParam("uCardid") String Cardid,@RequestParam("uPhone") String phone,@RequestParam("uEmail") String email,@RequestParam("uAddress") String address) {
		Map<String, Object> map=new HashMap<String, Object>();
		User user=new User();
		user.setUId(uid);
		user.setUCardid(Cardid);
		user.setUAddress(address);
		user.setUEmail(email);
		user.setUName(uname);
		user.setUPhone(phone);
		user.setURealname(realname);
		int result=userService.update(user);
		String msg="";
		if(result!=0) {
			msg+="修改成功";
		}else {
			msg+="修改失敗";
		}
		map.put("msg", msg);
		map.put("user", user);
		return map;
	}
	
	@RequestMapping(value="/change_password",method=RequestMethod.POST)
	public ModelAndView changePass(HttpServletRequest request, @RequestParam("Id") Integer uid,@RequestParam("Password") String password) {
		ModelAndView mav=new ModelAndView();
		User user=new User();
		user.setUId(uid);
		user.setUPassword(password);
		int result=userService.update(user);
		if (result>0) {
			HttpSession session = request.getSession();
	        session.setAttribute("user",null);
			String msg="请使用新密码重新登录";
			System.out.println(msg);
			mav.addObject("msg", msg);
			mav.setViewName("forward:/login.jsp");
		}else {
			String msg="修改失败";
			mav.addObject("msg", msg);
		}	
		return mav;
	}
	
	@RequestMapping(value = {"/get_user_info"})
	public ModelAndView getUser(HttpServletRequest request,@RequestParam("pageName") String pagename) {
		ModelAndView mav=new ModelAndView();
		HttpSession session = request.getSession();
		User user=(User) session.getAttribute("user");
		user=userService.getOne(user);
		request.setAttribute("user", user);
		mav.addObject("user", user);
		mav.setViewName(pagename);
		return mav;
	}
	
}
