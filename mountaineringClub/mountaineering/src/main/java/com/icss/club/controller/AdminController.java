package com.icss.club.controller;

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

import com.icss.club.service.ActivityparticipateService;
import com.icss.club.service.AdminService;
import com.icss.club.service.NoticeService;
import com.icss.club.entity.Activityparticipate;
import com.icss.club.entity.Admin;
import com.icss.club.entity.Notice;

@Controller
public class AdminController {

	@Resource
	private AdminService adService;
	@Resource
	private ActivityparticipateService apService;
	@Resource
	private NoticeService nService;
	
	@RequestMapping(value="/admin_index",method = RequestMethod.POST)
	public ModelAndView adminLogin(@RequestParam String name,@RequestParam String password,HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		//获取请求的用户名密码
		Admin admin=new Admin();
		admin.setAdName(name);
		admin.setAdPassword(password);
		admin=adService.getOne(admin);
		//判断存在
		if(admin!=null) {
			mav.addObject("admin", admin);
			String str='a'+admin.getAdId().toString();
			List<Activityparticipate> activities=apService.getReserveActivityparticipates(str, 0);
		    mav.addObject("activities", activities);
			List<Notice> notices=nService.getNotices();
		    mav.addObject("notices", notices);
	        mav.setViewName("admin_index");
			HttpSession session = request.getSession();
	        session.setAttribute("admin",admin);
			return mav;	
		}else {
			String msg="用户名或密码错误！";
			mav.addObject("msg", msg);
			mav.setViewName("forward:/adminLogin.jsp");
			return mav;
		}	
	}
	
	@RequestMapping(value="/admin_change",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> changeInfo(HttpServletRequest request,@RequestParam Integer Id,@RequestParam String Name,@RequestParam String RealName,@RequestParam String Phone,@RequestParam String Email,@RequestParam String Address) {
		Admin admin=new Admin();
		admin.setAdId(Id);
		admin.setAdName(Name);
		admin.setAdRealname(RealName);
		admin.setAdPhone(Phone);
		admin.setAdEmail(Email);
		admin.setAdAddress(Address);
		int result=adService.update(admin);
		Map<String, Object> map = new HashMap<String, Object>();
		String msg;
		if (result>0) {
			admin=adService.getById(Id);
			HttpSession session = request.getSession();
	        session.setAttribute("admin",admin);
			msg="修改成功！";
		} else {
			msg="修改失败！";
		}
		map.put("msg", msg);
		return map;
	}
}
