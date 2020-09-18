package com.icss.club.service;

import java.util.List;

import com.icss.club.entity.Activity;

public interface ActivityService extends CommonService<Activity> {

	public Activity getActivity(Integer aId);
	
	public List<Activity> getActbySearch(String name,String time);
	
	
}
