package com.icss.club.controller;

import java.util.Date;
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

import com.icss.club.entity.Admin;
import com.icss.club.entity.Notice;
import com.icss.club.service.NoticeService;

@Controller
public class NoticeController {

	@Resource
	private NoticeService nService;
	
	@RequestMapping(value="/addNotice",method = RequestMethod.POST)
	private ModelAndView addNotice(@RequestParam("title") String title,@RequestParam("content") String content,@RequestParam("priority") Integer priority,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		Notice notice=new Notice();
		notice.setNTitle(title);
		notice.setNContent(content);
		notice.setNIscancel(0);
		notice.setNIsdel(0);
		notice.setNPriority(priority);
		notice.setNPublishtime(new Date());
		notice.setNUId(admin.getAdId());
		Integer result=nService.add(notice);
		String msg =new String();
		if (result>0) {
			msg="·¢²¼³É¹¦£¡";
		}else {
			msg="·¢²¼Ê§°Ü£¡";
		}
		ModelAndView mavAndView=new ModelAndView();
		mavAndView.addObject("admin",admin);
		mavAndView.addObject("msg", msg);
		mavAndView.setViewName("admin_index_add_notice");
		return mavAndView;
	}
	
	@RequestMapping(value="/notice",method = RequestMethod.POST)
	private ModelAndView getNotice(HttpServletRequest request) {
		HttpSession session=request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		ModelAndView mavAndView=new ModelAndView();
		mavAndView.addObject("admin",admin);
		Notice notice=new Notice();
		notice.setNIsdel(0);
		List<Notice> notices=nService.getAllById(notice);
		mavAndView.addObject("notices", notices);
		mavAndView.setViewName("admin_index_notice");
		return mavAndView;
	}
	
	@RequestMapping(value="/notice_change",method = RequestMethod.POST)
	private Map<String, Object> changeNotice(@RequestParam("title") String title,@RequestParam("content") String content,@RequestParam("priority")Integer priority,@RequestParam("nid")Integer nid,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		Notice notice=new Notice();
		notice.setNId(nid);
		notice.setNTitle(title);
		notice.setNContent(content);
		notice.setNIscancel(0);
		notice.setNIsdel(0);
		notice.setNPriority(priority);
		notice.setNPublishtime(new Date());
		notice.setNUId(admin.getAdId());
		Integer result=nService.update(notice);
		String msg =new String();
		Map<String, Object> map=new HashMap<String, Object>();
		if (result>0) {
			msg="ÐÞ¸Ä³É¹¦£¡";
		}else {
			msg="ÐÞ¸ÄÊ§°Ü£¡";
		}
		map.put("msg", msg );
		System.out.println(msg);
		return map;
	}
	
	@RequestMapping(value="/cancel_notice",method = RequestMethod.POST)
	@ResponseBody
	private Map<String, Object> cancelNotice(@RequestParam("nid")Integer nid,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		Notice notice=new Notice();
		notice.setNId(nid);
		notice.setNIscancel(1);
		notice.setNUId(admin.getAdId());
		notice.setNCanceltime(new Date((new java.util.Date()).getTime()));
		int result=nService.update(notice);
		String msg =new String();
		Map<String, Object> map=new HashMap<String, Object>();
		if (result>0) {
			msg="³·Ïú³É¹¦£¡";
		}else {
			msg="³·ÏúÊ§°Ü£¡";
		}
		map.put("msg", msg );
		return map;
	}
	
	@RequestMapping(value="/resume_notice",method = RequestMethod.POST)
	@ResponseBody
	private Map<String, Object> resumeNotice(@RequestParam("nid")Integer nid,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		Notice notice=new Notice();
		notice.setNId(nid);
		notice.setNIscancel(0);
		notice.setNUId(admin.getAdId());
		notice.setNCanceltime(new Date((new java.util.Date()).getTime()));
		int result=nService.update(notice);
		String msg =new String();
		Map<String, Object> map=new HashMap<String, Object>();
		if (result>0) {
			msg="»Ö¸´³É¹¦£¡";
		}else {
			msg="»Ö¸´Ê§°Ü£¡";
		}
		map.put("msg", msg );
		return map;
	}
	
	@RequestMapping(value="/delete_notice",method = RequestMethod.POST)
	@ResponseBody
	private Map<String, Object> deleteNotice(@RequestParam("nid")Integer nid,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		Notice notice=new Notice();
		notice.setNId(nid);
		notice.setNIsdel(1);
		notice.setNDeletetime(new Date((new java.util.Date()).getTime()));
		notice.setNUId(admin.getAdId());
		int result=nService.update(notice);
		String msg =new String();
		Map<String, Object> map=new HashMap<String, Object>();
		if (result>0) {
			msg="É¾³ý³É¹¦£¡";
		}else {
			msg="É¾³ýÊ§°Ü£¡";
		}
		map.put("msg", msg );
		return map;
	}
	
	@RequestMapping(value="/view_notice",method = RequestMethod.POST)
	private ModelAndView viewNotice(HttpServletRequest request) {
		ModelAndView mavAndView=new ModelAndView();
		List<Notice> notices=nService.getNotices();
		mavAndView.addObject("notices", notices);
		mavAndView.setViewName("notice");
		return mavAndView;
	}
}
