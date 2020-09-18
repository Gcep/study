package com.icss.club.service;

import java.sql.Date;
import java.util.List;


import com.icss.club.entity.Activityparticipate;

public interface ActivityparticipateService extends CommonService<Activityparticipate> {

	public List<Activityparticipate> getActivities(String apUId);
	
	public List<Activityparticipate> getReserveActivityparticipates(String apUId,Integer apStatus);
	
	public boolean updateReserve(Integer apAId,Integer apStatus,Date apDate);
	
	public boolean finishReserve(Integer apAId,Integer apStatus);
	
	public List<Activityparticipate> IsComing(String apUId,Integer apStatus,String loginDate);
	
}
