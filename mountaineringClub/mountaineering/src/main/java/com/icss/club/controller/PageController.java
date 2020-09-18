package com.icss.club.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icss.club.entity.Activityparticipate;
import com.icss.club.entity.Admin;
import com.icss.club.entity.Notice;
import com.icss.club.service.ActivityparticipateService;
import com.icss.club.service.NoticeService;

@Controller
public class PageController {

	@Resource
	private ActivityparticipateService apService;
	@Resource
	private NoticeService nService;
	
	@RequestMapping(value="/page",method=RequestMethod.POST)
	public ModelAndView getPage(@RequestParam("pageName")String pagename,@RequestParam("logining") Boolean logining,HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		if (logining) {
			HttpSession session = request.getSession();
			Admin admin=(Admin) session.getAttribute("admin");
			mav.addObject("admin", admin);
		}
		mav.setViewName(pagename);
		return mav;
	}

	@RequestMapping(value="/admin_index_page",method = RequestMethod.POST)
	public ModelAndView adminLogin(@RequestParam("pageName")String pagename,@RequestParam("logining") Boolean logining,HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		if (logining) {
			HttpSession session = request.getSession();
			Admin admin=(Admin) session.getAttribute("admin");
			mav.addObject("admin", admin);
			String str='a'+admin.getAdId().toString();
			List<Activityparticipate> activities=apService.getActivities(str);
		    mav.addObject("activities", activities); 
			List<Notice> notices=nService.getNotices();
		    mav.addObject("notices", notices);
		}
		mav.setViewName(pagename);
		return mav;	
	}
}
