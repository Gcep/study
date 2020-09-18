package com.icss.club.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icss.club.entity.Activity;
import com.icss.club.mapper.ActivityMapper;
import com.icss.club.service.ActivityService;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;


@Service(value = "activityService")
public class ActivityServiceImpl extends CommonServiceImpl<Activity> implements ActivityService {

	@Autowired
	private ActivityMapper aMapper;
	
	
	@Override
	public Activity getActivity(Integer aId) {
		// TODO Auto-generated method stub
		return aMapper.selectActivity(aId);
	}

	@Override
	protected Mapper getMapper() {
		// TODO Auto-generated method stub
		return this.aMapper;
	}

	@Override
	public List<Activity> getActbySearch(String name, String time) {
		// TODO Auto-generated method stub
		Example example=new Example(Activity.class);
		Example.Criteria criteria=example.createCriteria();
	    criteria.andCondition("a_status=0");
	    if (name!=null && !name.equals("")) {
			criteria.andCondition("a_name like"+"'"+'%'+name+'%'+"'");
		}
	    if (time!=null && !time.equals("")) {
			criteria.andCondition("Date(a_starttime)>="+"'"+time+"'");
		}
	    
	    List<Activity> activities=aMapper.selectByExample(example);
		return activities;
	}


}
