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

import com.icss.club.entity.Activity;
import com.icss.club.entity.Activityparticipate;
import com.icss.club.entity.Admin;
import com.icss.club.entity.Mountain;
import com.icss.club.entity.User;
import com.icss.club.service.ActivityService;
import com.icss.club.service.ActivityparticipateService;
import com.icss.club.service.MountainService;

@Controller
public class ActivityController {

	@Resource
	private ActivityparticipateService apService;
	@Resource
	private ActivityService aService;
	@Resource
	private MountainService mService;
/**
 * 参与的活动
 * @param pageName
 * @param request
 * @return
 */
	@RequestMapping(value= {"/activity"},method=RequestMethod.POST) 
	public ModelAndView viewActivities (@RequestParam String pageName,HttpServletRequest request){
		HttpSession session = request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		String str='a'+admin.getAdId().toString();
		List<Activityparticipate> activities=apService.getActivities(str);
		ModelAndView mav=new ModelAndView(); 
		mav.addObject("admin", admin);
		mav.addObject("participate", activities);
		for (Activityparticipate activityparticipate : activities) {
			System.out.println(activityparticipate);
		}
		mav.setViewName(pageName); 
		return mav; 
	 }
	
	/**
	 * 取消预订
	 * @param apId
	 * @param request
	 * @return
	 */
	@RequestMapping(value= {"/cancel"},method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> cancelAp(@RequestParam Integer apId,HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();
		Activityparticipate ap=new Activityparticipate();
		ap.setApId(apId);
		ap.setApStatus(1);
		ap.setApCanceledtime(new Date((new java.util.Date()).getTime()));
		int result=apService.update(ap);
		if (result>0) {
			System.out.println("取消成功");
			map.put("msg", "取消成功");
		}else {
			System.out.println("取消失败");
			map.put("msg", "取消失败");
		}
		return map; 
	 }
	/**
	 * 活动细节
	 * @param pagename
	 * @param logining
	 * @param aId
	 * @param request
	 * @return
	 */
	@RequestMapping(value= {"/detail"},method=RequestMethod.POST) 
	public ModelAndView viewDetail (@RequestParam("pageName")String pagename,@RequestParam("aId") Integer aId,HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		if(aId!=null) {
			Activity activity=aService.getActivity(aId);
			System.out.println(activity);
			mav.addObject("activity", activity);
		}
		mav.setViewName(pagename);
		return mav;
	}
	

	/**
	 * 预订但未完成的活动
	 * @param pageName
	 * @param request
	 * @return
	 */
	@RequestMapping(value= {"/reserve"}) 
	@ResponseBody
	public Map<String, Object> viewReserveActivities (HttpServletRequest request){
		HttpSession session = request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		String str='a'+admin.getAdId().toString();
		List<Activityparticipate> reserve=apService.getReserveActivityparticipates(str,0);
		Map<String, Object> map=new HashMap<>();
		map.put("reserve", reserve);
		for (Activityparticipate activityparticipate : reserve) {
			System.out.println(activityparticipate);
		}
		System.out.println(map.get("reserve"));
		return map; 
		}
	/**
	 * 可预订活动
	 * @param request
	 * @return
	 */
	@RequestMapping(value= {"/join"}) 
	@ResponseBody
	public Map<String, Object> actingActivities (HttpServletRequest request){
		Activity activity=new Activity();
		activity.setAStatus(0);
		List<Activity> activities=aService.getAllById(activity);
		Map<String, Object> Amap=new HashMap<String, Object>();
		Amap.put("all", activities);
		for (Activity activity2 : activities) {
			System.out.println(activity2);
		}
		return Amap; 
		}
	/**
	 * 添加活动
	 * @param request
	 * @param name
	 * @param description
	 * @param mname
	 * @param type
	 * @param level
	 * @param start
	 * @param end
	 * @param altitude
	 * @param location
	 * @param climate
	 * @param MId
	 * @return
	 */
	@RequestMapping(value= {"/add_Activity"},method=RequestMethod.POST) 
	public ModelAndView addActivity(HttpServletRequest request,@RequestParam("a_name")String name,@RequestParam("a_description")String description,@RequestParam("mountain")String mname,@RequestParam("type")Integer type,@RequestParam("level")String level,@RequestParam("start")long start,@RequestParam("end")long end,@RequestParam("m_altitude") float altitude,@RequestParam("m_location")String location,@RequestParam("m_climate")String climate,@RequestParam("imageId")Integer MId ) {
		ModelAndView mav=new ModelAndView();
		HttpSession session = request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		mav.addObject("admin", admin);
		Mountain mountain=new Mountain();
		mountain.setMId(MId);
		mountain.setMName(mname);
		mountain.setMAltitude(altitude);
		mountain.setMClimate(climate);
		mountain.setMLocation(location);
		mService.update(mountain);
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		Date startDate=new Date(Long.parseLong(String.valueOf(start)));
//		Date endDate=new Date(Long.parseLong(String.valueOf(end)));
		Activity activity=new Activity();
		activity.setAName(name);
		activity.setAStatus(0);
		activity.setADescription(description);
		activity.setALevel(level);
		activity.setAMId(MId);
		activity.setAType(type);
		activity.setAStarttime(new Date(start));
		activity.setAEstimateendtime(new Date(end));
		int result=aService.add(activity);
		String msg;
		if(result>0) {
			msg="发布活动成功";
		}else {
			msg="发布失败";
		}
		mav.addObject("msg", msg);
//		System.out.println(msg);
		mav.setViewName("admin_index_add_activity");
		return mav;
	}
	/**
	 * 更新活动
	 * @param request
	 * @param end
	 * @param climate
	 * @param aId
	 * @param aDescription
	 * @return
	 */
	@RequestMapping(value= {"/updateActivity"},method=RequestMethod.POST) 
	@ResponseBody
	public Map<String, Object> updateAct(HttpServletRequest request,@RequestParam("end")long end,@RequestParam("m_climate")String climate,@RequestParam("aId") Integer aId,@RequestParam("aDescription") String aDescription,@RequestParam("status") Integer status) {
		Map<String, Object> map=new HashMap<String, Object>();
		Activity activity=new Activity();
		activity.setAId(aId);
		if (status==1) {
			activity.setAStatus(3);
			Date endTime=new Date(end);
			activity.setAEndtime(endTime);
			apService.finishReserve(aId, 2);
		}
		activity.setADescription(aDescription);
		aService.update(activity);
		activity=aService.getActivity(aId);
		Integer mid=activity.getMountain().getMId();
		Mountain mountain=new Mountain();
		mountain.setMId(mid);
		mountain.setMClimate(climate);
		mService.update(mountain);
		map.put("msg", "修改完成");
		return map;
	}
	/**
	 * 管理员预订活动
	 * @param request
	 * @param pagename
	 * @param aId
	 * @return
	 */
	@RequestMapping(value= {"/join_activity"},method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> join(HttpServletRequest request,@RequestParam("aId") Integer aId ) {
		HttpSession session = request.getSession();
		Admin admin=(Admin) session.getAttribute("admin");
		Activityparticipate participate=new Activityparticipate();
		participate.setApAId(aId);
		String str='a'+admin.getAdId().toString();
		participate.setApUId(str);
		Map<String, Object> map=new HashMap<String, Object>();
		if (apService.getOne(participate)==null) {
			participate.setApReservationtime(new Date((new java.util.Date().getTime())));
			participate.setApStatus(0);
			apService.add(participate);
			map.put("msg", "预订成功！");
		}else {
			map.put("msg","您已经预定过了！");
		}
		
		return map;
	}
	
	@RequestMapping(value= {"/user_join_activity"},method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> userJoin(HttpServletRequest request,@RequestParam("aId") Integer aId ) {
		HttpSession session = request.getSession();
		User user=(User)session.getAttribute("user");
		Activityparticipate participate=new Activityparticipate();
		participate.setApAId(aId);
		String str='u'+user.getUId().toString();
		participate.setApUId(str);
		participate.setApStatus(0);
		Map<String, Object> map=new HashMap<String, Object>();
		if (apService.getOne(participate)==null) {
			participate.setApReservationtime(new Date((new java.util.Date().getTime())));
			participate.setApStatus(0);
			apService.add(participate);
			map.put("msg", "预订成功！");
		}else {
			map.put("msg","您已经预定过了！");
		}
		
		return map;
	}
	
	/**
	 * 查询所有活动
	 * @param request
	 * @param pageName
	 * @return
	 */
	@RequestMapping(value = {"/acting"})
	public ModelAndView allActivities(HttpServletRequest request,@RequestParam("pageName") String pageName) {
		ModelAndView mav=new ModelAndView();
		List<Activity> activities=aService.getAll();
		mav.addObject("activities",activities);
		mav.setViewName(pageName);
		return mav;
	}
	/**
	 * 撤销活动
	 * @param request
	 * @param aId
	 * @param status
	 * @return
	 */
	@RequestMapping(value = {"/deleteActivity"})
	@ResponseBody
	public Map<String, Object> deleteActivities(HttpServletRequest request,@RequestParam("aId") Integer aId,@RequestParam("status") Integer status){
		Map<String, Object> map=new HashMap<String, Object>();
		String msg = "";
		if (status==1) {
			Activity activity=new Activity();
			activity.setAId(aId);
			activity.setAStatus(2);
			aService.update(activity);
			Date apDate=new Date((new java.util.Date().getTime()));
			apService.updateReserve(aId, 1, apDate);
			msg+="撤销成功";
		}else if (status==2) {
			Activity activity=new Activity();
			activity.setAId(aId);
			activity.setAStatus(2);
			aService.update(activity);
			msg+="撤销成功";
		}else {
			System.out.println("出錯了！");
			msg+="撤销失败";
		}
		map.put("msg", msg);
		return map;
	}
	/**
	 * 首页以及临期活动提醒
	 * @param request
	 * @return
	 */
	@RequestMapping(value= {"/userActivity"}) 
	public ModelAndView userActivities (HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		Activity activity=new Activity();
		activity.setAStatus(0);
		List<Activity> activities=aService.getAllById(activity);
		HttpSession session = request.getSession();
		User user=(User) session.getAttribute("user");
		String str='u'+user.getUId().toString();
		System.out.println(user.getULogindate().toString());
		if (apService.IsComing(str, 0, user.getULogindate().toString()).size()>0) {
			mav.addObject("msg", "您有活动即将在三日内开始，请注意查看！");
		}
		
		mav.addObject("activities", activities);
		mav.setViewName("activity");
		return mav; 
		}
	
	@RequestMapping(value= {"/userActivities"}) 
	public ModelAndView myActivity(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		HttpSession session = request.getSession();
		User user=(User) session.getAttribute("user");
		String str='u'+user.getUId().toString();
		List<Activityparticipate> activityparticipates=apService.getActivities(str);
		for (Activityparticipate activityparticipate : activityparticipates) {
			System.out.println(activityparticipate);
		}
		
		mav.addObject("activities", activityparticipates);
		mav.setViewName("activityAndStatus");
		return mav; 
		}
	/**
	 * 搜索活动
	 * @param request
	 * @return
	 */
	@RequestMapping(value= {"/searchAct"}) 
	@ResponseBody
	public Map<String, Object> searchAct (HttpServletRequest request){
		String name =request.getParameter("name");
		String time =request.getParameter("time");
		List<Activity> activities=aService.getActbySearch(name, time);
		Map<String, Object> map=new HashMap<String, Object>();
		if (!activities.isEmpty()) {
			map.put("all", activities);
			map.put("msg","找到了！");
		}else {
			map.put("msg","很抱歉，没有找到匹配项！");
		}
		return map; 
		}
//	/**
//	 * 已预订活动搜索
//	 * @param request
//	 * @return
//	 */
//	@RequestMapping(value= {"/searchActRe"}) 
//	@ResponseBody
//	public Map<String, Object> searchActRe (HttpServletRequest request){
//		String name =request.getParameter("name");
//		String time =request.getParameter("time");
//		HttpSession session = request.getSession();
//		User user=(User) session.getAttribute("user");
//		String str='u'+user.getUId().toString();
//		List<Activityparticipate> activities=apService.getActRebySearch(name, time, str);
//		Map<String, Object> map=new HashMap<String, Object>();
//		if (!activities.isEmpty()) {
//			map.put("all", activities);
//			map.put("msg","找到了！");
//		}else {
//			map.put("msg","很抱歉，没有找到匹配项！");
//		}
//		return map; 
//		}
}